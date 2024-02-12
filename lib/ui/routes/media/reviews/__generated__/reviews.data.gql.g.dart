// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GReviewsData> _$gReviewsDataSerializer =
    new _$GReviewsDataSerializer();
Serializer<GReviewsData_Media> _$gReviewsDataMediaSerializer =
    new _$GReviewsData_MediaSerializer();
Serializer<GReviewsData_Media_reviews> _$gReviewsDataMediaReviewsSerializer =
    new _$GReviewsData_Media_reviewsSerializer();
Serializer<GReviewsData_Media_reviews_pageInfo>
    _$gReviewsDataMediaReviewsPageInfoSerializer =
    new _$GReviewsData_Media_reviews_pageInfoSerializer();
Serializer<GReviewsData_Media_reviews_nodes>
    _$gReviewsDataMediaReviewsNodesSerializer =
    new _$GReviewsData_Media_reviews_nodesSerializer();
Serializer<GReviewsData_Media_reviews_nodes_user>
    _$gReviewsDataMediaReviewsNodesUserSerializer =
    new _$GReviewsData_Media_reviews_nodes_userSerializer();
Serializer<GReviewsData_Media_reviews_nodes_user_avatar>
    _$gReviewsDataMediaReviewsNodesUserAvatarSerializer =
    new _$GReviewsData_Media_reviews_nodes_user_avatarSerializer();

class _$GReviewsDataSerializer implements StructuredSerializer<GReviewsData> {
  @override
  final Iterable<Type> types = const [GReviewsData, _$GReviewsData];
  @override
  final String wireName = 'GReviewsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GReviewsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Media;
    if (value != null) {
      result
        ..add('Media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GReviewsData_Media)));
    }
    return result;
  }

  @override
  GReviewsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'Media':
          result.Media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GReviewsData_Media))!
              as GReviewsData_Media);
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewsData_MediaSerializer
    implements StructuredSerializer<GReviewsData_Media> {
  @override
  final Iterable<Type> types = const [GReviewsData_Media, _$GReviewsData_Media];
  @override
  final String wireName = 'GReviewsData_Media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewsData_Media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.reviews;
    if (value != null) {
      result
        ..add('reviews')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GReviewsData_Media_reviews)));
    }
    return result;
  }

  @override
  GReviewsData_Media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewsData_MediaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'reviews':
          result.reviews.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GReviewsData_Media_reviews))!
              as GReviewsData_Media_reviews);
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewsData_Media_reviewsSerializer
    implements StructuredSerializer<GReviewsData_Media_reviews> {
  @override
  final Iterable<Type> types = const [
    GReviewsData_Media_reviews,
    _$GReviewsData_Media_reviews
  ];
  @override
  final String wireName = 'GReviewsData_Media_reviews';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewsData_Media_reviews object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pageInfo;
    if (value != null) {
      result
        ..add('pageInfo')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GReviewsData_Media_reviews_pageInfo)));
    }
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GReviewsData_Media_reviews_nodes)
            ])));
    }
    return result;
  }

  @override
  GReviewsData_Media_reviews deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewsData_Media_reviewsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GReviewsData_Media_reviews_pageInfo))!
              as GReviewsData_Media_reviews_pageInfo);
          break;
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GReviewsData_Media_reviews_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewsData_Media_reviews_pageInfoSerializer
    implements StructuredSerializer<GReviewsData_Media_reviews_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GReviewsData_Media_reviews_pageInfo,
    _$GReviewsData_Media_reviews_pageInfo
  ];
  @override
  final String wireName = 'GReviewsData_Media_reviews_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewsData_Media_reviews_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hasNextPage;
    if (value != null) {
      result
        ..add('hasNextPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GReviewsData_Media_reviews_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewsData_Media_reviews_pageInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewsData_Media_reviews_nodesSerializer
    implements StructuredSerializer<GReviewsData_Media_reviews_nodes> {
  @override
  final Iterable<Type> types = const [
    GReviewsData_Media_reviews_nodes,
    _$GReviewsData_Media_reviews_nodes
  ];
  @override
  final String wireName = 'GReviewsData_Media_reviews_nodes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewsData_Media_reviews_nodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.summary;
    if (value != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.score;
    if (value != null) {
      result
        ..add('score')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GReviewsData_Media_reviews_nodes_user)));
    }
    return result;
  }

  @override
  GReviewsData_Media_reviews_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewsData_Media_reviews_nodesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GReviewsData_Media_reviews_nodes_user))!
              as GReviewsData_Media_reviews_nodes_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewsData_Media_reviews_nodes_userSerializer
    implements StructuredSerializer<GReviewsData_Media_reviews_nodes_user> {
  @override
  final Iterable<Type> types = const [
    GReviewsData_Media_reviews_nodes_user,
    _$GReviewsData_Media_reviews_nodes_user
  ];
  @override
  final String wireName = 'GReviewsData_Media_reviews_nodes_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewsData_Media_reviews_nodes_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GReviewsData_Media_reviews_nodes_user_avatar)));
    }
    return result;
  }

  @override
  GReviewsData_Media_reviews_nodes_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewsData_Media_reviews_nodes_userBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GReviewsData_Media_reviews_nodes_user_avatar))!
              as GReviewsData_Media_reviews_nodes_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewsData_Media_reviews_nodes_user_avatarSerializer
    implements
        StructuredSerializer<GReviewsData_Media_reviews_nodes_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GReviewsData_Media_reviews_nodes_user_avatar,
    _$GReviewsData_Media_reviews_nodes_user_avatar
  ];
  @override
  final String wireName = 'GReviewsData_Media_reviews_nodes_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GReviewsData_Media_reviews_nodes_user_avatar object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.large;
    if (value != null) {
      result
        ..add('large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GReviewsData_Media_reviews_nodes_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewsData_Media_reviews_nodes_user_avatarBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewsData extends GReviewsData {
  @override
  final String G__typename;
  @override
  final GReviewsData_Media? Media;

  factory _$GReviewsData([void Function(GReviewsDataBuilder)? updates]) =>
      (new GReviewsDataBuilder()..update(updates))._build();

  _$GReviewsData._({required this.G__typename, this.Media}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewsData', 'G__typename');
  }

  @override
  GReviewsData rebuild(void Function(GReviewsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewsDataBuilder toBuilder() => new GReviewsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewsData &&
        G__typename == other.G__typename &&
        Media == other.Media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReviewsData')
          ..add('G__typename', G__typename)
          ..add('Media', Media))
        .toString();
  }
}

class GReviewsDataBuilder
    implements Builder<GReviewsData, GReviewsDataBuilder> {
  _$GReviewsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GReviewsData_MediaBuilder? _Media;
  GReviewsData_MediaBuilder get Media =>
      _$this._Media ??= new GReviewsData_MediaBuilder();
  set Media(GReviewsData_MediaBuilder? Media) => _$this._Media = Media;

  GReviewsDataBuilder() {
    GReviewsData._initializeBuilder(this);
  }

  GReviewsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Media = $v.Media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewsData;
  }

  @override
  void update(void Function(GReviewsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewsData build() => _build();

  _$GReviewsData _build() {
    _$GReviewsData _$result;
    try {
      _$result = _$v ??
          new _$GReviewsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GReviewsData', 'G__typename'),
              Media: _Media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Media';
        _Media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReviewsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewsData_Media extends GReviewsData_Media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GReviewsData_Media_reviews? reviews;

  factory _$GReviewsData_Media(
          [void Function(GReviewsData_MediaBuilder)? updates]) =>
      (new GReviewsData_MediaBuilder()..update(updates))._build();

  _$GReviewsData_Media._(
      {required this.G__typename, required this.id, this.reviews})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewsData_Media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GReviewsData_Media', 'id');
  }

  @override
  GReviewsData_Media rebuild(
          void Function(GReviewsData_MediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewsData_MediaBuilder toBuilder() =>
      new GReviewsData_MediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewsData_Media &&
        G__typename == other.G__typename &&
        id == other.id &&
        reviews == other.reviews;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, reviews.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReviewsData_Media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('reviews', reviews))
        .toString();
  }
}

class GReviewsData_MediaBuilder
    implements Builder<GReviewsData_Media, GReviewsData_MediaBuilder> {
  _$GReviewsData_Media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GReviewsData_Media_reviewsBuilder? _reviews;
  GReviewsData_Media_reviewsBuilder get reviews =>
      _$this._reviews ??= new GReviewsData_Media_reviewsBuilder();
  set reviews(GReviewsData_Media_reviewsBuilder? reviews) =>
      _$this._reviews = reviews;

  GReviewsData_MediaBuilder() {
    GReviewsData_Media._initializeBuilder(this);
  }

  GReviewsData_MediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _reviews = $v.reviews?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewsData_Media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewsData_Media;
  }

  @override
  void update(void Function(GReviewsData_MediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewsData_Media build() => _build();

  _$GReviewsData_Media _build() {
    _$GReviewsData_Media _$result;
    try {
      _$result = _$v ??
          new _$GReviewsData_Media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GReviewsData_Media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GReviewsData_Media', 'id'),
              reviews: _reviews?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reviews';
        _reviews?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReviewsData_Media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewsData_Media_reviews extends GReviewsData_Media_reviews {
  @override
  final String G__typename;
  @override
  final GReviewsData_Media_reviews_pageInfo? pageInfo;
  @override
  final BuiltList<GReviewsData_Media_reviews_nodes?>? nodes;

  factory _$GReviewsData_Media_reviews(
          [void Function(GReviewsData_Media_reviewsBuilder)? updates]) =>
      (new GReviewsData_Media_reviewsBuilder()..update(updates))._build();

  _$GReviewsData_Media_reviews._(
      {required this.G__typename, this.pageInfo, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewsData_Media_reviews', 'G__typename');
  }

  @override
  GReviewsData_Media_reviews rebuild(
          void Function(GReviewsData_Media_reviewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewsData_Media_reviewsBuilder toBuilder() =>
      new GReviewsData_Media_reviewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewsData_Media_reviews &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReviewsData_Media_reviews')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('nodes', nodes))
        .toString();
  }
}

class GReviewsData_Media_reviewsBuilder
    implements
        Builder<GReviewsData_Media_reviews, GReviewsData_Media_reviewsBuilder> {
  _$GReviewsData_Media_reviews? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GReviewsData_Media_reviews_pageInfoBuilder? _pageInfo;
  GReviewsData_Media_reviews_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GReviewsData_Media_reviews_pageInfoBuilder();
  set pageInfo(GReviewsData_Media_reviews_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GReviewsData_Media_reviews_nodes?>? _nodes;
  ListBuilder<GReviewsData_Media_reviews_nodes?> get nodes =>
      _$this._nodes ??= new ListBuilder<GReviewsData_Media_reviews_nodes?>();
  set nodes(ListBuilder<GReviewsData_Media_reviews_nodes?>? nodes) =>
      _$this._nodes = nodes;

  GReviewsData_Media_reviewsBuilder() {
    GReviewsData_Media_reviews._initializeBuilder(this);
  }

  GReviewsData_Media_reviewsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewsData_Media_reviews other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewsData_Media_reviews;
  }

  @override
  void update(void Function(GReviewsData_Media_reviewsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewsData_Media_reviews build() => _build();

  _$GReviewsData_Media_reviews _build() {
    _$GReviewsData_Media_reviews _$result;
    try {
      _$result = _$v ??
          new _$GReviewsData_Media_reviews._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GReviewsData_Media_reviews', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReviewsData_Media_reviews', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewsData_Media_reviews_pageInfo
    extends GReviewsData_Media_reviews_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GReviewsData_Media_reviews_pageInfo(
          [void Function(GReviewsData_Media_reviews_pageInfoBuilder)?
              updates]) =>
      (new GReviewsData_Media_reviews_pageInfoBuilder()..update(updates))
          ._build();

  _$GReviewsData_Media_reviews_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewsData_Media_reviews_pageInfo', 'G__typename');
  }

  @override
  GReviewsData_Media_reviews_pageInfo rebuild(
          void Function(GReviewsData_Media_reviews_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewsData_Media_reviews_pageInfoBuilder toBuilder() =>
      new GReviewsData_Media_reviews_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewsData_Media_reviews_pageInfo &&
        G__typename == other.G__typename &&
        currentPage == other.currentPage &&
        hasNextPage == other.hasNextPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, hasNextPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReviewsData_Media_reviews_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GReviewsData_Media_reviews_pageInfoBuilder
    implements
        Builder<GReviewsData_Media_reviews_pageInfo,
            GReviewsData_Media_reviews_pageInfoBuilder> {
  _$GReviewsData_Media_reviews_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GReviewsData_Media_reviews_pageInfoBuilder() {
    GReviewsData_Media_reviews_pageInfo._initializeBuilder(this);
  }

  GReviewsData_Media_reviews_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _currentPage = $v.currentPage;
      _hasNextPage = $v.hasNextPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewsData_Media_reviews_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewsData_Media_reviews_pageInfo;
  }

  @override
  void update(
      void Function(GReviewsData_Media_reviews_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewsData_Media_reviews_pageInfo build() => _build();

  _$GReviewsData_Media_reviews_pageInfo _build() {
    final _$result = _$v ??
        new _$GReviewsData_Media_reviews_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GReviewsData_Media_reviews_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GReviewsData_Media_reviews_nodes
    extends GReviewsData_Media_reviews_nodes {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String? summary;
  @override
  final int? rating;
  @override
  final int? score;
  @override
  final GReviewsData_Media_reviews_nodes_user? user;

  factory _$GReviewsData_Media_reviews_nodes(
          [void Function(GReviewsData_Media_reviews_nodesBuilder)? updates]) =>
      (new GReviewsData_Media_reviews_nodesBuilder()..update(updates))._build();

  _$GReviewsData_Media_reviews_nodes._(
      {required this.G__typename,
      required this.id,
      this.summary,
      this.rating,
      this.score,
      this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewsData_Media_reviews_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GReviewsData_Media_reviews_nodes', 'id');
  }

  @override
  GReviewsData_Media_reviews_nodes rebuild(
          void Function(GReviewsData_Media_reviews_nodesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewsData_Media_reviews_nodesBuilder toBuilder() =>
      new GReviewsData_Media_reviews_nodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewsData_Media_reviews_nodes &&
        G__typename == other.G__typename &&
        id == other.id &&
        summary == other.summary &&
        rating == other.rating &&
        score == other.score &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReviewsData_Media_reviews_nodes')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('summary', summary)
          ..add('rating', rating)
          ..add('score', score)
          ..add('user', user))
        .toString();
  }
}

class GReviewsData_Media_reviews_nodesBuilder
    implements
        Builder<GReviewsData_Media_reviews_nodes,
            GReviewsData_Media_reviews_nodesBuilder> {
  _$GReviewsData_Media_reviews_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  GReviewsData_Media_reviews_nodes_userBuilder? _user;
  GReviewsData_Media_reviews_nodes_userBuilder get user =>
      _$this._user ??= new GReviewsData_Media_reviews_nodes_userBuilder();
  set user(GReviewsData_Media_reviews_nodes_userBuilder? user) =>
      _$this._user = user;

  GReviewsData_Media_reviews_nodesBuilder() {
    GReviewsData_Media_reviews_nodes._initializeBuilder(this);
  }

  GReviewsData_Media_reviews_nodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _summary = $v.summary;
      _rating = $v.rating;
      _score = $v.score;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewsData_Media_reviews_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewsData_Media_reviews_nodes;
  }

  @override
  void update(void Function(GReviewsData_Media_reviews_nodesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewsData_Media_reviews_nodes build() => _build();

  _$GReviewsData_Media_reviews_nodes _build() {
    _$GReviewsData_Media_reviews_nodes _$result;
    try {
      _$result = _$v ??
          new _$GReviewsData_Media_reviews_nodes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GReviewsData_Media_reviews_nodes', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GReviewsData_Media_reviews_nodes', 'id'),
              summary: summary,
              rating: rating,
              score: score,
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReviewsData_Media_reviews_nodes', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewsData_Media_reviews_nodes_user
    extends GReviewsData_Media_reviews_nodes_user {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final GReviewsData_Media_reviews_nodes_user_avatar? avatar;

  factory _$GReviewsData_Media_reviews_nodes_user(
          [void Function(GReviewsData_Media_reviews_nodes_userBuilder)?
              updates]) =>
      (new GReviewsData_Media_reviews_nodes_userBuilder()..update(updates))
          ._build();

  _$GReviewsData_Media_reviews_nodes_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewsData_Media_reviews_nodes_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GReviewsData_Media_reviews_nodes_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GReviewsData_Media_reviews_nodes_user', 'name');
  }

  @override
  GReviewsData_Media_reviews_nodes_user rebuild(
          void Function(GReviewsData_Media_reviews_nodes_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewsData_Media_reviews_nodes_userBuilder toBuilder() =>
      new GReviewsData_Media_reviews_nodes_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewsData_Media_reviews_nodes_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GReviewsData_Media_reviews_nodes_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('avatar', avatar))
        .toString();
  }
}

class GReviewsData_Media_reviews_nodes_userBuilder
    implements
        Builder<GReviewsData_Media_reviews_nodes_user,
            GReviewsData_Media_reviews_nodes_userBuilder> {
  _$GReviewsData_Media_reviews_nodes_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GReviewsData_Media_reviews_nodes_user_avatarBuilder? _avatar;
  GReviewsData_Media_reviews_nodes_user_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GReviewsData_Media_reviews_nodes_user_avatarBuilder();
  set avatar(GReviewsData_Media_reviews_nodes_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GReviewsData_Media_reviews_nodes_userBuilder() {
    GReviewsData_Media_reviews_nodes_user._initializeBuilder(this);
  }

  GReviewsData_Media_reviews_nodes_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _avatar = $v.avatar?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewsData_Media_reviews_nodes_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewsData_Media_reviews_nodes_user;
  }

  @override
  void update(
      void Function(GReviewsData_Media_reviews_nodes_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewsData_Media_reviews_nodes_user build() => _build();

  _$GReviewsData_Media_reviews_nodes_user _build() {
    _$GReviewsData_Media_reviews_nodes_user _$result;
    try {
      _$result = _$v ??
          new _$GReviewsData_Media_reviews_nodes_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GReviewsData_Media_reviews_nodes_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GReviewsData_Media_reviews_nodes_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GReviewsData_Media_reviews_nodes_user', 'name'),
              avatar: _avatar?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'avatar';
        _avatar?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReviewsData_Media_reviews_nodes_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewsData_Media_reviews_nodes_user_avatar
    extends GReviewsData_Media_reviews_nodes_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GReviewsData_Media_reviews_nodes_user_avatar(
          [void Function(GReviewsData_Media_reviews_nodes_user_avatarBuilder)?
              updates]) =>
      (new GReviewsData_Media_reviews_nodes_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GReviewsData_Media_reviews_nodes_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GReviewsData_Media_reviews_nodes_user_avatar', 'G__typename');
  }

  @override
  GReviewsData_Media_reviews_nodes_user_avatar rebuild(
          void Function(GReviewsData_Media_reviews_nodes_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewsData_Media_reviews_nodes_user_avatarBuilder toBuilder() =>
      new GReviewsData_Media_reviews_nodes_user_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewsData_Media_reviews_nodes_user_avatar &&
        G__typename == other.G__typename &&
        large == other.large;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GReviewsData_Media_reviews_nodes_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GReviewsData_Media_reviews_nodes_user_avatarBuilder
    implements
        Builder<GReviewsData_Media_reviews_nodes_user_avatar,
            GReviewsData_Media_reviews_nodes_user_avatarBuilder> {
  _$GReviewsData_Media_reviews_nodes_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GReviewsData_Media_reviews_nodes_user_avatarBuilder() {
    GReviewsData_Media_reviews_nodes_user_avatar._initializeBuilder(this);
  }

  GReviewsData_Media_reviews_nodes_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewsData_Media_reviews_nodes_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewsData_Media_reviews_nodes_user_avatar;
  }

  @override
  void update(
      void Function(GReviewsData_Media_reviews_nodes_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewsData_Media_reviews_nodes_user_avatar build() => _build();

  _$GReviewsData_Media_reviews_nodes_user_avatar _build() {
    final _$result = _$v ??
        new _$GReviewsData_Media_reviews_nodes_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GReviewsData_Media_reviews_nodes_user_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
