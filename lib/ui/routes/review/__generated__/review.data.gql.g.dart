// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GReviewData> _$gReviewDataSerializer = new _$GReviewDataSerializer();
Serializer<GReviewData_Review> _$gReviewDataReviewSerializer =
    new _$GReviewData_ReviewSerializer();
Serializer<GReviewData_Review_user> _$gReviewDataReviewUserSerializer =
    new _$GReviewData_Review_userSerializer();
Serializer<GReviewData_Review_media> _$gReviewDataReviewMediaSerializer =
    new _$GReviewData_Review_mediaSerializer();
Serializer<GReviewData_Review_media_title>
    _$gReviewDataReviewMediaTitleSerializer =
    new _$GReviewData_Review_media_titleSerializer();
Serializer<GRateReviewData> _$gRateReviewDataSerializer =
    new _$GRateReviewDataSerializer();
Serializer<GRateReviewData_RateReview> _$gRateReviewDataRateReviewSerializer =
    new _$GRateReviewData_RateReviewSerializer();

class _$GReviewDataSerializer implements StructuredSerializer<GReviewData> {
  @override
  final Iterable<Type> types = const [GReviewData, _$GReviewData];
  @override
  final String wireName = 'GReviewData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GReviewData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Review;
    if (value != null) {
      result
        ..add('Review')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GReviewData_Review)));
    }
    return result;
  }

  @override
  GReviewData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewDataBuilder();

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
        case 'Review':
          result.Review.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GReviewData_Review))!
              as GReviewData_Review);
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewData_ReviewSerializer
    implements StructuredSerializer<GReviewData_Review> {
  @override
  final Iterable<Type> types = const [GReviewData_Review, _$GReviewData_Review];
  @override
  final String wireName = 'GReviewData_Review';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewData_Review object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.body;
    if (value != null) {
      result
        ..add('body')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ratingAmount;
    if (value != null) {
      result
        ..add('ratingAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userRating;
    if (value != null) {
      result
        ..add('userRating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GReviewRating)));
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
            specifiedType: const FullType(GReviewData_Review_user)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GReviewData_Review_media)));
    }
    return result;
  }

  @override
  GReviewData_Review deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewData_ReviewBuilder();

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
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ratingAmount':
          result.ratingAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userRating':
          result.userRating = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GReviewRating))
              as _i2.GReviewRating?;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GReviewData_Review_user))!
              as GReviewData_Review_user);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GReviewData_Review_media))!
              as GReviewData_Review_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewData_Review_userSerializer
    implements StructuredSerializer<GReviewData_Review_user> {
  @override
  final Iterable<Type> types = const [
    GReviewData_Review_user,
    _$GReviewData_Review_user
  ];
  @override
  final String wireName = 'GReviewData_Review_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewData_Review_user object,
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

    return result;
  }

  @override
  GReviewData_Review_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewData_Review_userBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GReviewData_Review_mediaSerializer
    implements StructuredSerializer<GReviewData_Review_media> {
  @override
  final Iterable<Type> types = const [
    GReviewData_Review_media,
    _$GReviewData_Review_media
  ];
  @override
  final String wireName = 'GReviewData_Review_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewData_Review_media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.bannerImage;
    if (value != null) {
      result
        ..add('bannerImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GReviewData_Review_media_title)));
    }
    return result;
  }

  @override
  GReviewData_Review_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewData_Review_mediaBuilder();

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
        case 'bannerImage':
          result.bannerImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GReviewData_Review_media_title))!
              as GReviewData_Review_media_title);
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewData_Review_media_titleSerializer
    implements StructuredSerializer<GReviewData_Review_media_title> {
  @override
  final Iterable<Type> types = const [
    GReviewData_Review_media_title,
    _$GReviewData_Review_media_title
  ];
  @override
  final String wireName = 'GReviewData_Review_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewData_Review_media_title object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userPreferred;
    if (value != null) {
      result
        ..add('userPreferred')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GReviewData_Review_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewData_Review_media_titleBuilder();

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
        case 'userPreferred':
          result.userPreferred = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GRateReviewDataSerializer
    implements StructuredSerializer<GRateReviewData> {
  @override
  final Iterable<Type> types = const [GRateReviewData, _$GRateReviewData];
  @override
  final String wireName = 'GRateReviewData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRateReviewData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.RateReview;
    if (value != null) {
      result
        ..add('RateReview')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GRateReviewData_RateReview)));
    }
    return result;
  }

  @override
  GRateReviewData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRateReviewDataBuilder();

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
        case 'RateReview':
          result.RateReview.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GRateReviewData_RateReview))!
              as GRateReviewData_RateReview);
          break;
      }
    }

    return result.build();
  }
}

class _$GRateReviewData_RateReviewSerializer
    implements StructuredSerializer<GRateReviewData_RateReview> {
  @override
  final Iterable<Type> types = const [
    GRateReviewData_RateReview,
    _$GRateReviewData_RateReview
  ];
  @override
  final String wireName = 'GRateReviewData_RateReview';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRateReviewData_RateReview object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ratingAmount;
    if (value != null) {
      result
        ..add('ratingAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userRating;
    if (value != null) {
      result
        ..add('userRating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GReviewRating)));
    }
    return result;
  }

  @override
  GRateReviewData_RateReview deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRateReviewData_RateReviewBuilder();

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
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ratingAmount':
          result.ratingAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userRating':
          result.userRating = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GReviewRating))
              as _i2.GReviewRating?;
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewData extends GReviewData {
  @override
  final String G__typename;
  @override
  final GReviewData_Review? Review;

  factory _$GReviewData([void Function(GReviewDataBuilder)? updates]) =>
      (new GReviewDataBuilder()..update(updates))._build();

  _$GReviewData._({required this.G__typename, this.Review}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewData', 'G__typename');
  }

  @override
  GReviewData rebuild(void Function(GReviewDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewDataBuilder toBuilder() => new GReviewDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewData &&
        G__typename == other.G__typename &&
        Review == other.Review;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Review.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReviewData')
          ..add('G__typename', G__typename)
          ..add('Review', Review))
        .toString();
  }
}

class GReviewDataBuilder implements Builder<GReviewData, GReviewDataBuilder> {
  _$GReviewData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GReviewData_ReviewBuilder? _Review;
  GReviewData_ReviewBuilder get Review =>
      _$this._Review ??= new GReviewData_ReviewBuilder();
  set Review(GReviewData_ReviewBuilder? Review) => _$this._Review = Review;

  GReviewDataBuilder() {
    GReviewData._initializeBuilder(this);
  }

  GReviewDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Review = $v.Review?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewData;
  }

  @override
  void update(void Function(GReviewDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewData build() => _build();

  _$GReviewData _build() {
    _$GReviewData _$result;
    try {
      _$result = _$v ??
          new _$GReviewData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GReviewData', 'G__typename'),
              Review: _Review?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Review';
        _Review?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReviewData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewData_Review extends GReviewData_Review {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String? body;
  @override
  final int? rating;
  @override
  final int? ratingAmount;
  @override
  final _i2.GReviewRating? userRating;
  @override
  final int? score;
  @override
  final int createdAt;
  @override
  final GReviewData_Review_user? user;
  @override
  final GReviewData_Review_media? media;

  factory _$GReviewData_Review(
          [void Function(GReviewData_ReviewBuilder)? updates]) =>
      (new GReviewData_ReviewBuilder()..update(updates))._build();

  _$GReviewData_Review._(
      {required this.G__typename,
      required this.id,
      this.body,
      this.rating,
      this.ratingAmount,
      this.userRating,
      this.score,
      required this.createdAt,
      this.user,
      this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewData_Review', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GReviewData_Review', 'id');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GReviewData_Review', 'createdAt');
  }

  @override
  GReviewData_Review rebuild(
          void Function(GReviewData_ReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewData_ReviewBuilder toBuilder() =>
      new GReviewData_ReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewData_Review &&
        G__typename == other.G__typename &&
        id == other.id &&
        body == other.body &&
        rating == other.rating &&
        ratingAmount == other.ratingAmount &&
        userRating == other.userRating &&
        score == other.score &&
        createdAt == other.createdAt &&
        user == other.user &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, ratingAmount.hashCode);
    _$hash = $jc(_$hash, userRating.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReviewData_Review')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('body', body)
          ..add('rating', rating)
          ..add('ratingAmount', ratingAmount)
          ..add('userRating', userRating)
          ..add('score', score)
          ..add('createdAt', createdAt)
          ..add('user', user)
          ..add('media', media))
        .toString();
  }
}

class GReviewData_ReviewBuilder
    implements Builder<GReviewData_Review, GReviewData_ReviewBuilder> {
  _$GReviewData_Review? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  int? _ratingAmount;
  int? get ratingAmount => _$this._ratingAmount;
  set ratingAmount(int? ratingAmount) => _$this._ratingAmount = ratingAmount;

  _i2.GReviewRating? _userRating;
  _i2.GReviewRating? get userRating => _$this._userRating;
  set userRating(_i2.GReviewRating? userRating) =>
      _$this._userRating = userRating;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  GReviewData_Review_userBuilder? _user;
  GReviewData_Review_userBuilder get user =>
      _$this._user ??= new GReviewData_Review_userBuilder();
  set user(GReviewData_Review_userBuilder? user) => _$this._user = user;

  GReviewData_Review_mediaBuilder? _media;
  GReviewData_Review_mediaBuilder get media =>
      _$this._media ??= new GReviewData_Review_mediaBuilder();
  set media(GReviewData_Review_mediaBuilder? media) => _$this._media = media;

  GReviewData_ReviewBuilder() {
    GReviewData_Review._initializeBuilder(this);
  }

  GReviewData_ReviewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _body = $v.body;
      _rating = $v.rating;
      _ratingAmount = $v.ratingAmount;
      _userRating = $v.userRating;
      _score = $v.score;
      _createdAt = $v.createdAt;
      _user = $v.user?.toBuilder();
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewData_Review other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewData_Review;
  }

  @override
  void update(void Function(GReviewData_ReviewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewData_Review build() => _build();

  _$GReviewData_Review _build() {
    _$GReviewData_Review _$result;
    try {
      _$result = _$v ??
          new _$GReviewData_Review._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GReviewData_Review', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GReviewData_Review', 'id'),
              body: body,
              rating: rating,
              ratingAmount: ratingAmount,
              userRating: userRating,
              score: score,
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'GReviewData_Review', 'createdAt'),
              user: _user?.build(),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReviewData_Review', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewData_Review_user extends GReviewData_Review_user {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;

  factory _$GReviewData_Review_user(
          [void Function(GReviewData_Review_userBuilder)? updates]) =>
      (new GReviewData_Review_userBuilder()..update(updates))._build();

  _$GReviewData_Review_user._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewData_Review_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GReviewData_Review_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GReviewData_Review_user', 'name');
  }

  @override
  GReviewData_Review_user rebuild(
          void Function(GReviewData_Review_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewData_Review_userBuilder toBuilder() =>
      new GReviewData_Review_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewData_Review_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReviewData_Review_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GReviewData_Review_userBuilder
    implements
        Builder<GReviewData_Review_user, GReviewData_Review_userBuilder> {
  _$GReviewData_Review_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GReviewData_Review_userBuilder() {
    GReviewData_Review_user._initializeBuilder(this);
  }

  GReviewData_Review_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewData_Review_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewData_Review_user;
  }

  @override
  void update(void Function(GReviewData_Review_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewData_Review_user build() => _build();

  _$GReviewData_Review_user _build() {
    final _$result = _$v ??
        new _$GReviewData_Review_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GReviewData_Review_user', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GReviewData_Review_user', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GReviewData_Review_user', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GReviewData_Review_media extends GReviewData_Review_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String? bannerImage;
  @override
  final GReviewData_Review_media_title? title;

  factory _$GReviewData_Review_media(
          [void Function(GReviewData_Review_mediaBuilder)? updates]) =>
      (new GReviewData_Review_mediaBuilder()..update(updates))._build();

  _$GReviewData_Review_media._(
      {required this.G__typename,
      required this.id,
      this.bannerImage,
      this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewData_Review_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GReviewData_Review_media', 'id');
  }

  @override
  GReviewData_Review_media rebuild(
          void Function(GReviewData_Review_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewData_Review_mediaBuilder toBuilder() =>
      new GReviewData_Review_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewData_Review_media &&
        G__typename == other.G__typename &&
        id == other.id &&
        bannerImage == other.bannerImage &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, bannerImage.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReviewData_Review_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('bannerImage', bannerImage)
          ..add('title', title))
        .toString();
  }
}

class GReviewData_Review_mediaBuilder
    implements
        Builder<GReviewData_Review_media, GReviewData_Review_mediaBuilder> {
  _$GReviewData_Review_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _bannerImage;
  String? get bannerImage => _$this._bannerImage;
  set bannerImage(String? bannerImage) => _$this._bannerImage = bannerImage;

  GReviewData_Review_media_titleBuilder? _title;
  GReviewData_Review_media_titleBuilder get title =>
      _$this._title ??= new GReviewData_Review_media_titleBuilder();
  set title(GReviewData_Review_media_titleBuilder? title) =>
      _$this._title = title;

  GReviewData_Review_mediaBuilder() {
    GReviewData_Review_media._initializeBuilder(this);
  }

  GReviewData_Review_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _bannerImage = $v.bannerImage;
      _title = $v.title?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewData_Review_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewData_Review_media;
  }

  @override
  void update(void Function(GReviewData_Review_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewData_Review_media build() => _build();

  _$GReviewData_Review_media _build() {
    _$GReviewData_Review_media _$result;
    try {
      _$result = _$v ??
          new _$GReviewData_Review_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GReviewData_Review_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GReviewData_Review_media', 'id'),
              bannerImage: bannerImage,
              title: _title?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'title';
        _title?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReviewData_Review_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewData_Review_media_title extends GReviewData_Review_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GReviewData_Review_media_title(
          [void Function(GReviewData_Review_media_titleBuilder)? updates]) =>
      (new GReviewData_Review_media_titleBuilder()..update(updates))._build();

  _$GReviewData_Review_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewData_Review_media_title', 'G__typename');
  }

  @override
  GReviewData_Review_media_title rebuild(
          void Function(GReviewData_Review_media_titleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewData_Review_media_titleBuilder toBuilder() =>
      new GReviewData_Review_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewData_Review_media_title &&
        G__typename == other.G__typename &&
        userPreferred == other.userPreferred;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userPreferred.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReviewData_Review_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GReviewData_Review_media_titleBuilder
    implements
        Builder<GReviewData_Review_media_title,
            GReviewData_Review_media_titleBuilder> {
  _$GReviewData_Review_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GReviewData_Review_media_titleBuilder() {
    GReviewData_Review_media_title._initializeBuilder(this);
  }

  GReviewData_Review_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewData_Review_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewData_Review_media_title;
  }

  @override
  void update(void Function(GReviewData_Review_media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewData_Review_media_title build() => _build();

  _$GReviewData_Review_media_title _build() {
    final _$result = _$v ??
        new _$GReviewData_Review_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GReviewData_Review_media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GRateReviewData extends GRateReviewData {
  @override
  final String G__typename;
  @override
  final GRateReviewData_RateReview? RateReview;

  factory _$GRateReviewData([void Function(GRateReviewDataBuilder)? updates]) =>
      (new GRateReviewDataBuilder()..update(updates))._build();

  _$GRateReviewData._({required this.G__typename, this.RateReview})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GRateReviewData', 'G__typename');
  }

  @override
  GRateReviewData rebuild(void Function(GRateReviewDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRateReviewDataBuilder toBuilder() =>
      new GRateReviewDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRateReviewData &&
        G__typename == other.G__typename &&
        RateReview == other.RateReview;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, RateReview.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRateReviewData')
          ..add('G__typename', G__typename)
          ..add('RateReview', RateReview))
        .toString();
  }
}

class GRateReviewDataBuilder
    implements Builder<GRateReviewData, GRateReviewDataBuilder> {
  _$GRateReviewData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRateReviewData_RateReviewBuilder? _RateReview;
  GRateReviewData_RateReviewBuilder get RateReview =>
      _$this._RateReview ??= new GRateReviewData_RateReviewBuilder();
  set RateReview(GRateReviewData_RateReviewBuilder? RateReview) =>
      _$this._RateReview = RateReview;

  GRateReviewDataBuilder() {
    GRateReviewData._initializeBuilder(this);
  }

  GRateReviewDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _RateReview = $v.RateReview?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRateReviewData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRateReviewData;
  }

  @override
  void update(void Function(GRateReviewDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRateReviewData build() => _build();

  _$GRateReviewData _build() {
    _$GRateReviewData _$result;
    try {
      _$result = _$v ??
          new _$GRateReviewData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GRateReviewData', 'G__typename'),
              RateReview: _RateReview?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'RateReview';
        _RateReview?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GRateReviewData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRateReviewData_RateReview extends GRateReviewData_RateReview {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int? rating;
  @override
  final int? ratingAmount;
  @override
  final _i2.GReviewRating? userRating;

  factory _$GRateReviewData_RateReview(
          [void Function(GRateReviewData_RateReviewBuilder)? updates]) =>
      (new GRateReviewData_RateReviewBuilder()..update(updates))._build();

  _$GRateReviewData_RateReview._(
      {required this.G__typename,
      required this.id,
      this.rating,
      this.ratingAmount,
      this.userRating})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GRateReviewData_RateReview', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GRateReviewData_RateReview', 'id');
  }

  @override
  GRateReviewData_RateReview rebuild(
          void Function(GRateReviewData_RateReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRateReviewData_RateReviewBuilder toBuilder() =>
      new GRateReviewData_RateReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRateReviewData_RateReview &&
        G__typename == other.G__typename &&
        id == other.id &&
        rating == other.rating &&
        ratingAmount == other.ratingAmount &&
        userRating == other.userRating;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, ratingAmount.hashCode);
    _$hash = $jc(_$hash, userRating.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRateReviewData_RateReview')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('rating', rating)
          ..add('ratingAmount', ratingAmount)
          ..add('userRating', userRating))
        .toString();
  }
}

class GRateReviewData_RateReviewBuilder
    implements
        Builder<GRateReviewData_RateReview, GRateReviewData_RateReviewBuilder> {
  _$GRateReviewData_RateReview? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  int? _ratingAmount;
  int? get ratingAmount => _$this._ratingAmount;
  set ratingAmount(int? ratingAmount) => _$this._ratingAmount = ratingAmount;

  _i2.GReviewRating? _userRating;
  _i2.GReviewRating? get userRating => _$this._userRating;
  set userRating(_i2.GReviewRating? userRating) =>
      _$this._userRating = userRating;

  GRateReviewData_RateReviewBuilder() {
    GRateReviewData_RateReview._initializeBuilder(this);
  }

  GRateReviewData_RateReviewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _rating = $v.rating;
      _ratingAmount = $v.ratingAmount;
      _userRating = $v.userRating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRateReviewData_RateReview other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRateReviewData_RateReview;
  }

  @override
  void update(void Function(GRateReviewData_RateReviewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRateReviewData_RateReview build() => _build();

  _$GRateReviewData_RateReview _build() {
    final _$result = _$v ??
        new _$GRateReviewData_RateReview._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GRateReviewData_RateReview', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GRateReviewData_RateReview', 'id'),
            rating: rating,
            ratingAmount: ratingAmount,
            userRating: userRating);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
