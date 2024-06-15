// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaReviewsData> _$gMediaReviewsDataSerializer =
    new _$GMediaReviewsDataSerializer();
Serializer<GMediaReviewsData_Media> _$gMediaReviewsDataMediaSerializer =
    new _$GMediaReviewsData_MediaSerializer();
Serializer<GMediaReviewsData_Media_reviews>
    _$gMediaReviewsDataMediaReviewsSerializer =
    new _$GMediaReviewsData_Media_reviewsSerializer();
Serializer<GMediaReviewsData_Media_reviews_pageInfo>
    _$gMediaReviewsDataMediaReviewsPageInfoSerializer =
    new _$GMediaReviewsData_Media_reviews_pageInfoSerializer();
Serializer<GMediaReviewsData_Media_reviews_nodes>
    _$gMediaReviewsDataMediaReviewsNodesSerializer =
    new _$GMediaReviewsData_Media_reviews_nodesSerializer();
Serializer<GMediaReviewsData_Media_reviews_nodes_media>
    _$gMediaReviewsDataMediaReviewsNodesMediaSerializer =
    new _$GMediaReviewsData_Media_reviews_nodes_mediaSerializer();
Serializer<GMediaReviewsData_Media_reviews_nodes_media_title>
    _$gMediaReviewsDataMediaReviewsNodesMediaTitleSerializer =
    new _$GMediaReviewsData_Media_reviews_nodes_media_titleSerializer();
Serializer<GMediaReviewsData_Media_reviews_nodes_user>
    _$gMediaReviewsDataMediaReviewsNodesUserSerializer =
    new _$GMediaReviewsData_Media_reviews_nodes_userSerializer();
Serializer<GMediaReviewsData_Media_reviews_nodes_user_avatar>
    _$gMediaReviewsDataMediaReviewsNodesUserAvatarSerializer =
    new _$GMediaReviewsData_Media_reviews_nodes_user_avatarSerializer();

class _$GMediaReviewsDataSerializer
    implements StructuredSerializer<GMediaReviewsData> {
  @override
  final Iterable<Type> types = const [GMediaReviewsData, _$GMediaReviewsData];
  @override
  final String wireName = 'GMediaReviewsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMediaReviewsData object,
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
            specifiedType: const FullType(GMediaReviewsData_Media)));
    }
    return result;
  }

  @override
  GMediaReviewsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaReviewsDataBuilder();

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
                  specifiedType: const FullType(GMediaReviewsData_Media))!
              as GMediaReviewsData_Media);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaReviewsData_MediaSerializer
    implements StructuredSerializer<GMediaReviewsData_Media> {
  @override
  final Iterable<Type> types = const [
    GMediaReviewsData_Media,
    _$GMediaReviewsData_Media
  ];
  @override
  final String wireName = 'GMediaReviewsData_Media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaReviewsData_Media object,
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
            specifiedType: const FullType(GMediaReviewsData_Media_reviews)));
    }
    return result;
  }

  @override
  GMediaReviewsData_Media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaReviewsData_MediaBuilder();

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
                  specifiedType:
                      const FullType(GMediaReviewsData_Media_reviews))!
              as GMediaReviewsData_Media_reviews);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaReviewsData_Media_reviewsSerializer
    implements StructuredSerializer<GMediaReviewsData_Media_reviews> {
  @override
  final Iterable<Type> types = const [
    GMediaReviewsData_Media_reviews,
    _$GMediaReviewsData_Media_reviews
  ];
  @override
  final String wireName = 'GMediaReviewsData_Media_reviews';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaReviewsData_Media_reviews object,
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
                const FullType(GMediaReviewsData_Media_reviews_pageInfo)));
    }
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GMediaReviewsData_Media_reviews_nodes)
            ])));
    }
    return result;
  }

  @override
  GMediaReviewsData_Media_reviews deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaReviewsData_Media_reviewsBuilder();

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
                      const FullType(GMediaReviewsData_Media_reviews_pageInfo))!
              as GMediaReviewsData_Media_reviews_pageInfo);
          break;
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GMediaReviewsData_Media_reviews_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaReviewsData_Media_reviews_pageInfoSerializer
    implements StructuredSerializer<GMediaReviewsData_Media_reviews_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GMediaReviewsData_Media_reviews_pageInfo,
    _$GMediaReviewsData_Media_reviews_pageInfo
  ];
  @override
  final String wireName = 'GMediaReviewsData_Media_reviews_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaReviewsData_Media_reviews_pageInfo object,
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
  GMediaReviewsData_Media_reviews_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaReviewsData_Media_reviews_pageInfoBuilder();

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

class _$GMediaReviewsData_Media_reviews_nodesSerializer
    implements StructuredSerializer<GMediaReviewsData_Media_reviews_nodes> {
  @override
  final Iterable<Type> types = const [
    GMediaReviewsData_Media_reviews_nodes,
    _$GMediaReviewsData_Media_reviews_nodes
  ];
  @override
  final String wireName = 'GMediaReviewsData_Media_reviews_nodes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaReviewsData_Media_reviews_nodes object,
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
    value = object.summary;
    if (value != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GMediaReviewsData_Media_reviews_nodes_media)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GMediaReviewsData_Media_reviews_nodes_user)));
    }
    value = object.score;
    if (value != null) {
      result
        ..add('score')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userRating;
    if (value != null) {
      result
        ..add('userRating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i4.GReviewRating)));
    }
    return result;
  }

  @override
  GMediaReviewsData_Media_reviews_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaReviewsData_Media_reviews_nodesBuilder();

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
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaReviewsData_Media_reviews_nodes_media))!
              as GMediaReviewsData_Media_reviews_nodes_media);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaReviewsData_Media_reviews_nodes_user))!
              as GMediaReviewsData_Media_reviews_nodes_user);
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userRating':
          result.userRating = serializers.deserialize(value,
                  specifiedType: const FullType(_i4.GReviewRating))
              as _i4.GReviewRating?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaReviewsData_Media_reviews_nodes_mediaSerializer
    implements
        StructuredSerializer<GMediaReviewsData_Media_reviews_nodes_media> {
  @override
  final Iterable<Type> types = const [
    GMediaReviewsData_Media_reviews_nodes_media,
    _$GMediaReviewsData_Media_reviews_nodes_media
  ];
  @override
  final String wireName = 'GMediaReviewsData_Media_reviews_nodes_media';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaReviewsData_Media_reviews_nodes_media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaReviewsData_Media_reviews_nodes_media_title)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i4.GMediaType)));
    }
    value = object.bannerImage;
    if (value != null) {
      result
        ..add('bannerImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GMediaReviewsData_Media_reviews_nodes_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaReviewsData_Media_reviews_nodes_mediaBuilder();

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
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaReviewsData_Media_reviews_nodes_media_title))!
              as GMediaReviewsData_Media_reviews_nodes_media_title);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i4.GMediaType)) as _i4.GMediaType?;
          break;
        case 'bannerImage':
          result.bannerImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaReviewsData_Media_reviews_nodes_media_titleSerializer
    implements
        StructuredSerializer<
            GMediaReviewsData_Media_reviews_nodes_media_title> {
  @override
  final Iterable<Type> types = const [
    GMediaReviewsData_Media_reviews_nodes_media_title,
    _$GMediaReviewsData_Media_reviews_nodes_media_title
  ];
  @override
  final String wireName = 'GMediaReviewsData_Media_reviews_nodes_media_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaReviewsData_Media_reviews_nodes_media_title object,
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
  GMediaReviewsData_Media_reviews_nodes_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaReviewsData_Media_reviews_nodes_media_titleBuilder();

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

class _$GMediaReviewsData_Media_reviews_nodes_userSerializer
    implements
        StructuredSerializer<GMediaReviewsData_Media_reviews_nodes_user> {
  @override
  final Iterable<Type> types = const [
    GMediaReviewsData_Media_reviews_nodes_user,
    _$GMediaReviewsData_Media_reviews_nodes_user
  ];
  @override
  final String wireName = 'GMediaReviewsData_Media_reviews_nodes_user';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaReviewsData_Media_reviews_nodes_user object,
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
    value = object.donatorTier;
    if (value != null) {
      result
        ..add('donatorTier')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.donatorBadge;
    if (value != null) {
      result
        ..add('donatorBadge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.moderatorRoles;
    if (value != null) {
      result
        ..add('moderatorRoles')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(_i4.GModRole)])));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaReviewsData_Media_reviews_nodes_user_avatar)));
    }
    return result;
  }

  @override
  GMediaReviewsData_Media_reviews_nodes_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaReviewsData_Media_reviews_nodes_userBuilder();

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
        case 'donatorTier':
          result.donatorTier = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'donatorBadge':
          result.donatorBadge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'moderatorRoles':
          result.moderatorRoles.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i4.GModRole)
              ]))! as BuiltList<Object?>);
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaReviewsData_Media_reviews_nodes_user_avatar))!
              as GMediaReviewsData_Media_reviews_nodes_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaReviewsData_Media_reviews_nodes_user_avatarSerializer
    implements
        StructuredSerializer<
            GMediaReviewsData_Media_reviews_nodes_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GMediaReviewsData_Media_reviews_nodes_user_avatar,
    _$GMediaReviewsData_Media_reviews_nodes_user_avatar
  ];
  @override
  final String wireName = 'GMediaReviewsData_Media_reviews_nodes_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaReviewsData_Media_reviews_nodes_user_avatar object,
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
  GMediaReviewsData_Media_reviews_nodes_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaReviewsData_Media_reviews_nodes_user_avatarBuilder();

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

class _$GMediaReviewsData extends GMediaReviewsData {
  @override
  final String G__typename;
  @override
  final GMediaReviewsData_Media? Media;

  factory _$GMediaReviewsData(
          [void Function(GMediaReviewsDataBuilder)? updates]) =>
      (new GMediaReviewsDataBuilder()..update(updates))._build();

  _$GMediaReviewsData._({required this.G__typename, this.Media}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaReviewsData', 'G__typename');
  }

  @override
  GMediaReviewsData rebuild(void Function(GMediaReviewsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaReviewsDataBuilder toBuilder() =>
      new GMediaReviewsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaReviewsData &&
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
    return (newBuiltValueToStringHelper(r'GMediaReviewsData')
          ..add('G__typename', G__typename)
          ..add('Media', Media))
        .toString();
  }
}

class GMediaReviewsDataBuilder
    implements Builder<GMediaReviewsData, GMediaReviewsDataBuilder> {
  _$GMediaReviewsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMediaReviewsData_MediaBuilder? _Media;
  GMediaReviewsData_MediaBuilder get Media =>
      _$this._Media ??= new GMediaReviewsData_MediaBuilder();
  set Media(GMediaReviewsData_MediaBuilder? Media) => _$this._Media = Media;

  GMediaReviewsDataBuilder() {
    GMediaReviewsData._initializeBuilder(this);
  }

  GMediaReviewsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Media = $v.Media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaReviewsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaReviewsData;
  }

  @override
  void update(void Function(GMediaReviewsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaReviewsData build() => _build();

  _$GMediaReviewsData _build() {
    _$GMediaReviewsData _$result;
    try {
      _$result = _$v ??
          new _$GMediaReviewsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaReviewsData', 'G__typename'),
              Media: _Media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Media';
        _Media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaReviewsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaReviewsData_Media extends GMediaReviewsData_Media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GMediaReviewsData_Media_reviews? reviews;

  factory _$GMediaReviewsData_Media(
          [void Function(GMediaReviewsData_MediaBuilder)? updates]) =>
      (new GMediaReviewsData_MediaBuilder()..update(updates))._build();

  _$GMediaReviewsData_Media._(
      {required this.G__typename, required this.id, this.reviews})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaReviewsData_Media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GMediaReviewsData_Media', 'id');
  }

  @override
  GMediaReviewsData_Media rebuild(
          void Function(GMediaReviewsData_MediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaReviewsData_MediaBuilder toBuilder() =>
      new GMediaReviewsData_MediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaReviewsData_Media &&
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
    return (newBuiltValueToStringHelper(r'GMediaReviewsData_Media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('reviews', reviews))
        .toString();
  }
}

class GMediaReviewsData_MediaBuilder
    implements
        Builder<GMediaReviewsData_Media, GMediaReviewsData_MediaBuilder> {
  _$GMediaReviewsData_Media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GMediaReviewsData_Media_reviewsBuilder? _reviews;
  GMediaReviewsData_Media_reviewsBuilder get reviews =>
      _$this._reviews ??= new GMediaReviewsData_Media_reviewsBuilder();
  set reviews(GMediaReviewsData_Media_reviewsBuilder? reviews) =>
      _$this._reviews = reviews;

  GMediaReviewsData_MediaBuilder() {
    GMediaReviewsData_Media._initializeBuilder(this);
  }

  GMediaReviewsData_MediaBuilder get _$this {
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
  void replace(GMediaReviewsData_Media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaReviewsData_Media;
  }

  @override
  void update(void Function(GMediaReviewsData_MediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaReviewsData_Media build() => _build();

  _$GMediaReviewsData_Media _build() {
    _$GMediaReviewsData_Media _$result;
    try {
      _$result = _$v ??
          new _$GMediaReviewsData_Media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaReviewsData_Media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaReviewsData_Media', 'id'),
              reviews: _reviews?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reviews';
        _reviews?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaReviewsData_Media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaReviewsData_Media_reviews
    extends GMediaReviewsData_Media_reviews {
  @override
  final String G__typename;
  @override
  final GMediaReviewsData_Media_reviews_pageInfo? pageInfo;
  @override
  final BuiltList<GMediaReviewsData_Media_reviews_nodes?>? nodes;

  factory _$GMediaReviewsData_Media_reviews(
          [void Function(GMediaReviewsData_Media_reviewsBuilder)? updates]) =>
      (new GMediaReviewsData_Media_reviewsBuilder()..update(updates))._build();

  _$GMediaReviewsData_Media_reviews._(
      {required this.G__typename, this.pageInfo, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaReviewsData_Media_reviews', 'G__typename');
  }

  @override
  GMediaReviewsData_Media_reviews rebuild(
          void Function(GMediaReviewsData_Media_reviewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaReviewsData_Media_reviewsBuilder toBuilder() =>
      new GMediaReviewsData_Media_reviewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaReviewsData_Media_reviews &&
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
    return (newBuiltValueToStringHelper(r'GMediaReviewsData_Media_reviews')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('nodes', nodes))
        .toString();
  }
}

class GMediaReviewsData_Media_reviewsBuilder
    implements
        Builder<GMediaReviewsData_Media_reviews,
            GMediaReviewsData_Media_reviewsBuilder> {
  _$GMediaReviewsData_Media_reviews? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMediaReviewsData_Media_reviews_pageInfoBuilder? _pageInfo;
  GMediaReviewsData_Media_reviews_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??=
          new GMediaReviewsData_Media_reviews_pageInfoBuilder();
  set pageInfo(GMediaReviewsData_Media_reviews_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GMediaReviewsData_Media_reviews_nodes?>? _nodes;
  ListBuilder<GMediaReviewsData_Media_reviews_nodes?> get nodes =>
      _$this._nodes ??=
          new ListBuilder<GMediaReviewsData_Media_reviews_nodes?>();
  set nodes(ListBuilder<GMediaReviewsData_Media_reviews_nodes?>? nodes) =>
      _$this._nodes = nodes;

  GMediaReviewsData_Media_reviewsBuilder() {
    GMediaReviewsData_Media_reviews._initializeBuilder(this);
  }

  GMediaReviewsData_Media_reviewsBuilder get _$this {
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
  void replace(GMediaReviewsData_Media_reviews other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaReviewsData_Media_reviews;
  }

  @override
  void update(void Function(GMediaReviewsData_Media_reviewsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaReviewsData_Media_reviews build() => _build();

  _$GMediaReviewsData_Media_reviews _build() {
    _$GMediaReviewsData_Media_reviews _$result;
    try {
      _$result = _$v ??
          new _$GMediaReviewsData_Media_reviews._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GMediaReviewsData_Media_reviews', 'G__typename'),
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
            r'GMediaReviewsData_Media_reviews', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaReviewsData_Media_reviews_pageInfo
    extends GMediaReviewsData_Media_reviews_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GMediaReviewsData_Media_reviews_pageInfo(
          [void Function(GMediaReviewsData_Media_reviews_pageInfoBuilder)?
              updates]) =>
      (new GMediaReviewsData_Media_reviews_pageInfoBuilder()..update(updates))
          ._build();

  _$GMediaReviewsData_Media_reviews_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaReviewsData_Media_reviews_pageInfo', 'G__typename');
  }

  @override
  GMediaReviewsData_Media_reviews_pageInfo rebuild(
          void Function(GMediaReviewsData_Media_reviews_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaReviewsData_Media_reviews_pageInfoBuilder toBuilder() =>
      new GMediaReviewsData_Media_reviews_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaReviewsData_Media_reviews_pageInfo &&
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
    return (newBuiltValueToStringHelper(
            r'GMediaReviewsData_Media_reviews_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GMediaReviewsData_Media_reviews_pageInfoBuilder
    implements
        Builder<GMediaReviewsData_Media_reviews_pageInfo,
            GMediaReviewsData_Media_reviews_pageInfoBuilder> {
  _$GMediaReviewsData_Media_reviews_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GMediaReviewsData_Media_reviews_pageInfoBuilder() {
    GMediaReviewsData_Media_reviews_pageInfo._initializeBuilder(this);
  }

  GMediaReviewsData_Media_reviews_pageInfoBuilder get _$this {
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
  void replace(GMediaReviewsData_Media_reviews_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaReviewsData_Media_reviews_pageInfo;
  }

  @override
  void update(
      void Function(GMediaReviewsData_Media_reviews_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaReviewsData_Media_reviews_pageInfo build() => _build();

  _$GMediaReviewsData_Media_reviews_pageInfo _build() {
    final _$result = _$v ??
        new _$GMediaReviewsData_Media_reviews_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GMediaReviewsData_Media_reviews_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaReviewsData_Media_reviews_nodes
    extends GMediaReviewsData_Media_reviews_nodes {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int? rating;
  @override
  final int? ratingAmount;
  @override
  final String? summary;
  @override
  final GMediaReviewsData_Media_reviews_nodes_media? media;
  @override
  final GMediaReviewsData_Media_reviews_nodes_user? user;
  @override
  final int? score;
  @override
  final _i4.GReviewRating? userRating;

  factory _$GMediaReviewsData_Media_reviews_nodes(
          [void Function(GMediaReviewsData_Media_reviews_nodesBuilder)?
              updates]) =>
      (new GMediaReviewsData_Media_reviews_nodesBuilder()..update(updates))
          ._build();

  _$GMediaReviewsData_Media_reviews_nodes._(
      {required this.G__typename,
      required this.id,
      this.rating,
      this.ratingAmount,
      this.summary,
      this.media,
      this.user,
      this.score,
      this.userRating})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaReviewsData_Media_reviews_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaReviewsData_Media_reviews_nodes', 'id');
  }

  @override
  GMediaReviewsData_Media_reviews_nodes rebuild(
          void Function(GMediaReviewsData_Media_reviews_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaReviewsData_Media_reviews_nodesBuilder toBuilder() =>
      new GMediaReviewsData_Media_reviews_nodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaReviewsData_Media_reviews_nodes &&
        G__typename == other.G__typename &&
        id == other.id &&
        rating == other.rating &&
        ratingAmount == other.ratingAmount &&
        summary == other.summary &&
        media == other.media &&
        user == other.user &&
        score == other.score &&
        userRating == other.userRating;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, ratingAmount.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, userRating.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaReviewsData_Media_reviews_nodes')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('rating', rating)
          ..add('ratingAmount', ratingAmount)
          ..add('summary', summary)
          ..add('media', media)
          ..add('user', user)
          ..add('score', score)
          ..add('userRating', userRating))
        .toString();
  }
}

class GMediaReviewsData_Media_reviews_nodesBuilder
    implements
        Builder<GMediaReviewsData_Media_reviews_nodes,
            GMediaReviewsData_Media_reviews_nodesBuilder> {
  _$GMediaReviewsData_Media_reviews_nodes? _$v;

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

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  GMediaReviewsData_Media_reviews_nodes_mediaBuilder? _media;
  GMediaReviewsData_Media_reviews_nodes_mediaBuilder get media =>
      _$this._media ??=
          new GMediaReviewsData_Media_reviews_nodes_mediaBuilder();
  set media(GMediaReviewsData_Media_reviews_nodes_mediaBuilder? media) =>
      _$this._media = media;

  GMediaReviewsData_Media_reviews_nodes_userBuilder? _user;
  GMediaReviewsData_Media_reviews_nodes_userBuilder get user =>
      _$this._user ??= new GMediaReviewsData_Media_reviews_nodes_userBuilder();
  set user(GMediaReviewsData_Media_reviews_nodes_userBuilder? user) =>
      _$this._user = user;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  _i4.GReviewRating? _userRating;
  _i4.GReviewRating? get userRating => _$this._userRating;
  set userRating(_i4.GReviewRating? userRating) =>
      _$this._userRating = userRating;

  GMediaReviewsData_Media_reviews_nodesBuilder() {
    GMediaReviewsData_Media_reviews_nodes._initializeBuilder(this);
  }

  GMediaReviewsData_Media_reviews_nodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _rating = $v.rating;
      _ratingAmount = $v.ratingAmount;
      _summary = $v.summary;
      _media = $v.media?.toBuilder();
      _user = $v.user?.toBuilder();
      _score = $v.score;
      _userRating = $v.userRating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaReviewsData_Media_reviews_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaReviewsData_Media_reviews_nodes;
  }

  @override
  void update(
      void Function(GMediaReviewsData_Media_reviews_nodesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaReviewsData_Media_reviews_nodes build() => _build();

  _$GMediaReviewsData_Media_reviews_nodes _build() {
    _$GMediaReviewsData_Media_reviews_nodes _$result;
    try {
      _$result = _$v ??
          new _$GMediaReviewsData_Media_reviews_nodes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GMediaReviewsData_Media_reviews_nodes', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaReviewsData_Media_reviews_nodes', 'id'),
              rating: rating,
              ratingAmount: ratingAmount,
              summary: summary,
              media: _media?.build(),
              user: _user?.build(),
              score: score,
              userRating: userRating);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaReviewsData_Media_reviews_nodes',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaReviewsData_Media_reviews_nodes_media
    extends GMediaReviewsData_Media_reviews_nodes_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GMediaReviewsData_Media_reviews_nodes_media_title? title;
  @override
  final _i4.GMediaType? type;
  @override
  final String? bannerImage;

  factory _$GMediaReviewsData_Media_reviews_nodes_media(
          [void Function(GMediaReviewsData_Media_reviews_nodes_mediaBuilder)?
              updates]) =>
      (new GMediaReviewsData_Media_reviews_nodes_mediaBuilder()
            ..update(updates))
          ._build();

  _$GMediaReviewsData_Media_reviews_nodes_media._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.type,
      this.bannerImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaReviewsData_Media_reviews_nodes_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaReviewsData_Media_reviews_nodes_media', 'id');
  }

  @override
  GMediaReviewsData_Media_reviews_nodes_media rebuild(
          void Function(GMediaReviewsData_Media_reviews_nodes_mediaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaReviewsData_Media_reviews_nodes_mediaBuilder toBuilder() =>
      new GMediaReviewsData_Media_reviews_nodes_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaReviewsData_Media_reviews_nodes_media &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        type == other.type &&
        bannerImage == other.bannerImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, bannerImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaReviewsData_Media_reviews_nodes_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('type', type)
          ..add('bannerImage', bannerImage))
        .toString();
  }
}

class GMediaReviewsData_Media_reviews_nodes_mediaBuilder
    implements
        Builder<GMediaReviewsData_Media_reviews_nodes_media,
            GMediaReviewsData_Media_reviews_nodes_mediaBuilder> {
  _$GMediaReviewsData_Media_reviews_nodes_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GMediaReviewsData_Media_reviews_nodes_media_titleBuilder? _title;
  GMediaReviewsData_Media_reviews_nodes_media_titleBuilder get title =>
      _$this._title ??=
          new GMediaReviewsData_Media_reviews_nodes_media_titleBuilder();
  set title(GMediaReviewsData_Media_reviews_nodes_media_titleBuilder? title) =>
      _$this._title = title;

  _i4.GMediaType? _type;
  _i4.GMediaType? get type => _$this._type;
  set type(_i4.GMediaType? type) => _$this._type = type;

  String? _bannerImage;
  String? get bannerImage => _$this._bannerImage;
  set bannerImage(String? bannerImage) => _$this._bannerImage = bannerImage;

  GMediaReviewsData_Media_reviews_nodes_mediaBuilder() {
    GMediaReviewsData_Media_reviews_nodes_media._initializeBuilder(this);
  }

  GMediaReviewsData_Media_reviews_nodes_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title?.toBuilder();
      _type = $v.type;
      _bannerImage = $v.bannerImage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaReviewsData_Media_reviews_nodes_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaReviewsData_Media_reviews_nodes_media;
  }

  @override
  void update(
      void Function(GMediaReviewsData_Media_reviews_nodes_mediaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaReviewsData_Media_reviews_nodes_media build() => _build();

  _$GMediaReviewsData_Media_reviews_nodes_media _build() {
    _$GMediaReviewsData_Media_reviews_nodes_media _$result;
    try {
      _$result = _$v ??
          new _$GMediaReviewsData_Media_reviews_nodes_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GMediaReviewsData_Media_reviews_nodes_media',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaReviewsData_Media_reviews_nodes_media', 'id'),
              title: _title?.build(),
              type: type,
              bannerImage: bannerImage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'title';
        _title?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaReviewsData_Media_reviews_nodes_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaReviewsData_Media_reviews_nodes_media_title
    extends GMediaReviewsData_Media_reviews_nodes_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GMediaReviewsData_Media_reviews_nodes_media_title(
          [void Function(
                  GMediaReviewsData_Media_reviews_nodes_media_titleBuilder)?
              updates]) =>
      (new GMediaReviewsData_Media_reviews_nodes_media_titleBuilder()
            ..update(updates))
          ._build();

  _$GMediaReviewsData_Media_reviews_nodes_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaReviewsData_Media_reviews_nodes_media_title', 'G__typename');
  }

  @override
  GMediaReviewsData_Media_reviews_nodes_media_title rebuild(
          void Function(
                  GMediaReviewsData_Media_reviews_nodes_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaReviewsData_Media_reviews_nodes_media_titleBuilder toBuilder() =>
      new GMediaReviewsData_Media_reviews_nodes_media_titleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaReviewsData_Media_reviews_nodes_media_title &&
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
    return (newBuiltValueToStringHelper(
            r'GMediaReviewsData_Media_reviews_nodes_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GMediaReviewsData_Media_reviews_nodes_media_titleBuilder
    implements
        Builder<GMediaReviewsData_Media_reviews_nodes_media_title,
            GMediaReviewsData_Media_reviews_nodes_media_titleBuilder> {
  _$GMediaReviewsData_Media_reviews_nodes_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GMediaReviewsData_Media_reviews_nodes_media_titleBuilder() {
    GMediaReviewsData_Media_reviews_nodes_media_title._initializeBuilder(this);
  }

  GMediaReviewsData_Media_reviews_nodes_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaReviewsData_Media_reviews_nodes_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaReviewsData_Media_reviews_nodes_media_title;
  }

  @override
  void update(
      void Function(GMediaReviewsData_Media_reviews_nodes_media_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaReviewsData_Media_reviews_nodes_media_title build() => _build();

  _$GMediaReviewsData_Media_reviews_nodes_media_title _build() {
    final _$result = _$v ??
        new _$GMediaReviewsData_Media_reviews_nodes_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaReviewsData_Media_reviews_nodes_media_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaReviewsData_Media_reviews_nodes_user
    extends GMediaReviewsData_Media_reviews_nodes_user {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final int? donatorTier;
  @override
  final String? donatorBadge;
  @override
  final BuiltList<_i4.GModRole?>? moderatorRoles;
  @override
  final GMediaReviewsData_Media_reviews_nodes_user_avatar? avatar;

  factory _$GMediaReviewsData_Media_reviews_nodes_user(
          [void Function(GMediaReviewsData_Media_reviews_nodes_userBuilder)?
              updates]) =>
      (new GMediaReviewsData_Media_reviews_nodes_userBuilder()..update(updates))
          ._build();

  _$GMediaReviewsData_Media_reviews_nodes_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaReviewsData_Media_reviews_nodes_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaReviewsData_Media_reviews_nodes_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GMediaReviewsData_Media_reviews_nodes_user', 'name');
  }

  @override
  GMediaReviewsData_Media_reviews_nodes_user rebuild(
          void Function(GMediaReviewsData_Media_reviews_nodes_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaReviewsData_Media_reviews_nodes_userBuilder toBuilder() =>
      new GMediaReviewsData_Media_reviews_nodes_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaReviewsData_Media_reviews_nodes_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        donatorTier == other.donatorTier &&
        donatorBadge == other.donatorBadge &&
        moderatorRoles == other.moderatorRoles &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, donatorTier.hashCode);
    _$hash = $jc(_$hash, donatorBadge.hashCode);
    _$hash = $jc(_$hash, moderatorRoles.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaReviewsData_Media_reviews_nodes_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('donatorTier', donatorTier)
          ..add('donatorBadge', donatorBadge)
          ..add('moderatorRoles', moderatorRoles)
          ..add('avatar', avatar))
        .toString();
  }
}

class GMediaReviewsData_Media_reviews_nodes_userBuilder
    implements
        Builder<GMediaReviewsData_Media_reviews_nodes_user,
            GMediaReviewsData_Media_reviews_nodes_userBuilder> {
  _$GMediaReviewsData_Media_reviews_nodes_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _donatorTier;
  int? get donatorTier => _$this._donatorTier;
  set donatorTier(int? donatorTier) => _$this._donatorTier = donatorTier;

  String? _donatorBadge;
  String? get donatorBadge => _$this._donatorBadge;
  set donatorBadge(String? donatorBadge) => _$this._donatorBadge = donatorBadge;

  ListBuilder<_i4.GModRole?>? _moderatorRoles;
  ListBuilder<_i4.GModRole?> get moderatorRoles =>
      _$this._moderatorRoles ??= new ListBuilder<_i4.GModRole?>();
  set moderatorRoles(ListBuilder<_i4.GModRole?>? moderatorRoles) =>
      _$this._moderatorRoles = moderatorRoles;

  GMediaReviewsData_Media_reviews_nodes_user_avatarBuilder? _avatar;
  GMediaReviewsData_Media_reviews_nodes_user_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GMediaReviewsData_Media_reviews_nodes_user_avatarBuilder();
  set avatar(
          GMediaReviewsData_Media_reviews_nodes_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GMediaReviewsData_Media_reviews_nodes_userBuilder() {
    GMediaReviewsData_Media_reviews_nodes_user._initializeBuilder(this);
  }

  GMediaReviewsData_Media_reviews_nodes_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _donatorTier = $v.donatorTier;
      _donatorBadge = $v.donatorBadge;
      _moderatorRoles = $v.moderatorRoles?.toBuilder();
      _avatar = $v.avatar?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaReviewsData_Media_reviews_nodes_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaReviewsData_Media_reviews_nodes_user;
  }

  @override
  void update(
      void Function(GMediaReviewsData_Media_reviews_nodes_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaReviewsData_Media_reviews_nodes_user build() => _build();

  _$GMediaReviewsData_Media_reviews_nodes_user _build() {
    _$GMediaReviewsData_Media_reviews_nodes_user _$result;
    try {
      _$result = _$v ??
          new _$GMediaReviewsData_Media_reviews_nodes_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GMediaReviewsData_Media_reviews_nodes_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaReviewsData_Media_reviews_nodes_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GMediaReviewsData_Media_reviews_nodes_user', 'name'),
              donatorTier: donatorTier,
              donatorBadge: donatorBadge,
              moderatorRoles: _moderatorRoles?.build(),
              avatar: _avatar?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'moderatorRoles';
        _moderatorRoles?.build();
        _$failedField = 'avatar';
        _avatar?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaReviewsData_Media_reviews_nodes_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaReviewsData_Media_reviews_nodes_user_avatar
    extends GMediaReviewsData_Media_reviews_nodes_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GMediaReviewsData_Media_reviews_nodes_user_avatar(
          [void Function(
                  GMediaReviewsData_Media_reviews_nodes_user_avatarBuilder)?
              updates]) =>
      (new GMediaReviewsData_Media_reviews_nodes_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GMediaReviewsData_Media_reviews_nodes_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaReviewsData_Media_reviews_nodes_user_avatar', 'G__typename');
  }

  @override
  GMediaReviewsData_Media_reviews_nodes_user_avatar rebuild(
          void Function(
                  GMediaReviewsData_Media_reviews_nodes_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaReviewsData_Media_reviews_nodes_user_avatarBuilder toBuilder() =>
      new GMediaReviewsData_Media_reviews_nodes_user_avatarBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaReviewsData_Media_reviews_nodes_user_avatar &&
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
            r'GMediaReviewsData_Media_reviews_nodes_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GMediaReviewsData_Media_reviews_nodes_user_avatarBuilder
    implements
        Builder<GMediaReviewsData_Media_reviews_nodes_user_avatar,
            GMediaReviewsData_Media_reviews_nodes_user_avatarBuilder> {
  _$GMediaReviewsData_Media_reviews_nodes_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GMediaReviewsData_Media_reviews_nodes_user_avatarBuilder() {
    GMediaReviewsData_Media_reviews_nodes_user_avatar._initializeBuilder(this);
  }

  GMediaReviewsData_Media_reviews_nodes_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaReviewsData_Media_reviews_nodes_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaReviewsData_Media_reviews_nodes_user_avatar;
  }

  @override
  void update(
      void Function(GMediaReviewsData_Media_reviews_nodes_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaReviewsData_Media_reviews_nodes_user_avatar build() => _build();

  _$GMediaReviewsData_Media_reviews_nodes_user_avatar _build() {
    final _$result = _$v ??
        new _$GMediaReviewsData_Media_reviews_nodes_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaReviewsData_Media_reviews_nodes_user_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
