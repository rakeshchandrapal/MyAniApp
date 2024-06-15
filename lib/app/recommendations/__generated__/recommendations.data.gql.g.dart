// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendations.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRecommendationsData> _$gRecommendationsDataSerializer =
    new _$GRecommendationsDataSerializer();
Serializer<GRecommendationsData_Page> _$gRecommendationsDataPageSerializer =
    new _$GRecommendationsData_PageSerializer();
Serializer<GRecommendationsData_Page_pageInfo>
    _$gRecommendationsDataPagePageInfoSerializer =
    new _$GRecommendationsData_Page_pageInfoSerializer();
Serializer<GRecommendationsData_Page_recommendations>
    _$gRecommendationsDataPageRecommendationsSerializer =
    new _$GRecommendationsData_Page_recommendationsSerializer();
Serializer<GRecommendationsData_Page_recommendations_media>
    _$gRecommendationsDataPageRecommendationsMediaSerializer =
    new _$GRecommendationsData_Page_recommendations_mediaSerializer();
Serializer<GRecommendationsData_Page_recommendations_media_title>
    _$gRecommendationsDataPageRecommendationsMediaTitleSerializer =
    new _$GRecommendationsData_Page_recommendations_media_titleSerializer();
Serializer<GRecommendationsData_Page_recommendations_media_coverImage>
    _$gRecommendationsDataPageRecommendationsMediaCoverImageSerializer =
    new _$GRecommendationsData_Page_recommendations_media_coverImageSerializer();
Serializer<GRecommendationsData_Page_recommendations_mediaRecommendation>
    _$gRecommendationsDataPageRecommendationsMediaRecommendationSerializer =
    new _$GRecommendationsData_Page_recommendations_mediaRecommendationSerializer();
Serializer<GRecommendationsData_Page_recommendations_mediaRecommendation_title>
    _$gRecommendationsDataPageRecommendationsMediaRecommendationTitleSerializer =
    new _$GRecommendationsData_Page_recommendations_mediaRecommendation_titleSerializer();
Serializer<
        GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage>
    _$gRecommendationsDataPageRecommendationsMediaRecommendationCoverImageSerializer =
    new _$GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageSerializer();
Serializer<GSaveRecommendationData> _$gSaveRecommendationDataSerializer =
    new _$GSaveRecommendationDataSerializer();
Serializer<GSaveRecommendationData_SaveRecommendation>
    _$gSaveRecommendationDataSaveRecommendationSerializer =
    new _$GSaveRecommendationData_SaveRecommendationSerializer();
Serializer<GSaveRecommendationData_SaveRecommendation_media>
    _$gSaveRecommendationDataSaveRecommendationMediaSerializer =
    new _$GSaveRecommendationData_SaveRecommendation_mediaSerializer();
Serializer<GSaveRecommendationData_SaveRecommendation_media_title>
    _$gSaveRecommendationDataSaveRecommendationMediaTitleSerializer =
    new _$GSaveRecommendationData_SaveRecommendation_media_titleSerializer();
Serializer<GSaveRecommendationData_SaveRecommendation_media_coverImage>
    _$gSaveRecommendationDataSaveRecommendationMediaCoverImageSerializer =
    new _$GSaveRecommendationData_SaveRecommendation_media_coverImageSerializer();
Serializer<GSaveRecommendationData_SaveRecommendation_mediaRecommendation>
    _$gSaveRecommendationDataSaveRecommendationMediaRecommendationSerializer =
    new _$GSaveRecommendationData_SaveRecommendation_mediaRecommendationSerializer();
Serializer<GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title>
    _$gSaveRecommendationDataSaveRecommendationMediaRecommendationTitleSerializer =
    new _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleSerializer();
Serializer<
        GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage>
    _$gSaveRecommendationDataSaveRecommendationMediaRecommendationCoverImageSerializer =
    new _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageSerializer();

class _$GRecommendationsDataSerializer
    implements StructuredSerializer<GRecommendationsData> {
  @override
  final Iterable<Type> types = const [
    GRecommendationsData,
    _$GRecommendationsData
  ];
  @override
  final String wireName = 'GRecommendationsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRecommendationsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Page;
    if (value != null) {
      result
        ..add('Page')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GRecommendationsData_Page)));
    }
    return result;
  }

  @override
  GRecommendationsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRecommendationsDataBuilder();

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
        case 'Page':
          result.Page.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GRecommendationsData_Page))!
              as GRecommendationsData_Page);
          break;
      }
    }

    return result.build();
  }
}

class _$GRecommendationsData_PageSerializer
    implements StructuredSerializer<GRecommendationsData_Page> {
  @override
  final Iterable<Type> types = const [
    GRecommendationsData_Page,
    _$GRecommendationsData_Page
  ];
  @override
  final String wireName = 'GRecommendationsData_Page';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRecommendationsData_Page object,
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
            specifiedType: const FullType(GRecommendationsData_Page_pageInfo)));
    }
    value = object.recommendations;
    if (value != null) {
      result
        ..add('recommendations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GRecommendationsData_Page_recommendations)
            ])));
    }
    return result;
  }

  @override
  GRecommendationsData_Page deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRecommendationsData_PageBuilder();

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
                      const FullType(GRecommendationsData_Page_pageInfo))!
              as GRecommendationsData_Page_pageInfo);
          break;
        case 'recommendations':
          result.recommendations.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GRecommendationsData_Page_recommendations)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GRecommendationsData_Page_pageInfoSerializer
    implements StructuredSerializer<GRecommendationsData_Page_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GRecommendationsData_Page_pageInfo,
    _$GRecommendationsData_Page_pageInfo
  ];
  @override
  final String wireName = 'GRecommendationsData_Page_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRecommendationsData_Page_pageInfo object,
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
  GRecommendationsData_Page_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRecommendationsData_Page_pageInfoBuilder();

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

class _$GRecommendationsData_Page_recommendationsSerializer
    implements StructuredSerializer<GRecommendationsData_Page_recommendations> {
  @override
  final Iterable<Type> types = const [
    GRecommendationsData_Page_recommendations,
    _$GRecommendationsData_Page_recommendations
  ];
  @override
  final String wireName = 'GRecommendationsData_Page_recommendations';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRecommendationsData_Page_recommendations object,
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
    value = object.userRating;
    if (value != null) {
      result
        ..add('userRating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GRecommendationRating)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GRecommendationsData_Page_recommendations_media)));
    }
    value = object.mediaRecommendation;
    if (value != null) {
      result
        ..add('mediaRecommendation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GRecommendationsData_Page_recommendations_mediaRecommendation)));
    }
    return result;
  }

  @override
  GRecommendationsData_Page_recommendations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRecommendationsData_Page_recommendationsBuilder();

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
        case 'userRating':
          result.userRating = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GRecommendationRating))
              as _i3.GRecommendationRating?;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GRecommendationsData_Page_recommendations_media))!
              as GRecommendationsData_Page_recommendations_media);
          break;
        case 'mediaRecommendation':
          result.mediaRecommendation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GRecommendationsData_Page_recommendations_mediaRecommendation))!
              as GRecommendationsData_Page_recommendations_mediaRecommendation);
          break;
      }
    }

    return result.build();
  }
}

class _$GRecommendationsData_Page_recommendations_mediaSerializer
    implements
        StructuredSerializer<GRecommendationsData_Page_recommendations_media> {
  @override
  final Iterable<Type> types = const [
    GRecommendationsData_Page_recommendations_media,
    _$GRecommendationsData_Page_recommendations_media
  ];
  @override
  final String wireName = 'GRecommendationsData_Page_recommendations_media';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GRecommendationsData_Page_recommendations_media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaType)));
    }
    value = object.isAdult;
    if (value != null) {
      result
        ..add('isAdult')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.format;
    if (value != null) {
      result
        ..add('format')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaFormat)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GRecommendationsData_Page_recommendations_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GRecommendationsData_Page_recommendations_media_coverImage)));
    }
    return result;
  }

  @override
  GRecommendationsData_Page_recommendations_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRecommendationsData_Page_recommendations_mediaBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i3.GMediaType)) as _i3.GMediaType?;
          break;
        case 'isAdult':
          result.isAdult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'format':
          result.format = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GMediaFormat))
              as _i3.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GRecommendationsData_Page_recommendations_media_title))!
              as GRecommendationsData_Page_recommendations_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GRecommendationsData_Page_recommendations_media_coverImage))!
              as GRecommendationsData_Page_recommendations_media_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GRecommendationsData_Page_recommendations_media_titleSerializer
    implements
        StructuredSerializer<
            GRecommendationsData_Page_recommendations_media_title> {
  @override
  final Iterable<Type> types = const [
    GRecommendationsData_Page_recommendations_media_title,
    _$GRecommendationsData_Page_recommendations_media_title
  ];
  @override
  final String wireName =
      'GRecommendationsData_Page_recommendations_media_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GRecommendationsData_Page_recommendations_media_title object,
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
  GRecommendationsData_Page_recommendations_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GRecommendationsData_Page_recommendations_media_titleBuilder();

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

class _$GRecommendationsData_Page_recommendations_media_coverImageSerializer
    implements
        StructuredSerializer<
            GRecommendationsData_Page_recommendations_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GRecommendationsData_Page_recommendations_media_coverImage,
    _$GRecommendationsData_Page_recommendations_media_coverImage
  ];
  @override
  final String wireName =
      'GRecommendationsData_Page_recommendations_media_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GRecommendationsData_Page_recommendations_media_coverImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.extraLarge;
    if (value != null) {
      result
        ..add('extraLarge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GRecommendationsData_Page_recommendations_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GRecommendationsData_Page_recommendations_media_coverImageBuilder();

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
        case 'extraLarge':
          result.extraLarge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GRecommendationsData_Page_recommendations_mediaRecommendationSerializer
    implements
        StructuredSerializer<
            GRecommendationsData_Page_recommendations_mediaRecommendation> {
  @override
  final Iterable<Type> types = const [
    GRecommendationsData_Page_recommendations_mediaRecommendation,
    _$GRecommendationsData_Page_recommendations_mediaRecommendation
  ];
  @override
  final String wireName =
      'GRecommendationsData_Page_recommendations_mediaRecommendation';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GRecommendationsData_Page_recommendations_mediaRecommendation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaType)));
    }
    value = object.isAdult;
    if (value != null) {
      result
        ..add('isAdult')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.format;
    if (value != null) {
      result
        ..add('format')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaFormat)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GRecommendationsData_Page_recommendations_mediaRecommendation_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage)));
    }
    return result;
  }

  @override
  GRecommendationsData_Page_recommendations_mediaRecommendation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GRecommendationsData_Page_recommendations_mediaRecommendationBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i3.GMediaType)) as _i3.GMediaType?;
          break;
        case 'isAdult':
          result.isAdult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'format':
          result.format = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GMediaFormat))
              as _i3.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GRecommendationsData_Page_recommendations_mediaRecommendation_title))!
              as GRecommendationsData_Page_recommendations_mediaRecommendation_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage))!
              as GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GRecommendationsData_Page_recommendations_mediaRecommendation_titleSerializer
    implements
        StructuredSerializer<
            GRecommendationsData_Page_recommendations_mediaRecommendation_title> {
  @override
  final Iterable<Type> types = const [
    GRecommendationsData_Page_recommendations_mediaRecommendation_title,
    _$GRecommendationsData_Page_recommendations_mediaRecommendation_title
  ];
  @override
  final String wireName =
      'GRecommendationsData_Page_recommendations_mediaRecommendation_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GRecommendationsData_Page_recommendations_mediaRecommendation_title
          object,
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
  GRecommendationsData_Page_recommendations_mediaRecommendation_title
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GRecommendationsData_Page_recommendations_mediaRecommendation_titleBuilder();

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

class _$GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageSerializer
    implements
        StructuredSerializer<
            GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage> {
  @override
  final Iterable<Type> types = const [
    GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage,
    _$GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage
  ];
  @override
  final String wireName =
      'GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.extraLarge;
    if (value != null) {
      result
        ..add('extraLarge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageBuilder();

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
        case 'extraLarge':
          result.extraLarge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveRecommendationDataSerializer
    implements StructuredSerializer<GSaveRecommendationData> {
  @override
  final Iterable<Type> types = const [
    GSaveRecommendationData,
    _$GSaveRecommendationData
  ];
  @override
  final String wireName = 'GSaveRecommendationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaveRecommendationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.SaveRecommendation;
    if (value != null) {
      result
        ..add('SaveRecommendation')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSaveRecommendationData_SaveRecommendation)));
    }
    return result;
  }

  @override
  GSaveRecommendationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveRecommendationDataBuilder();

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
        case 'SaveRecommendation':
          result.SaveRecommendation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSaveRecommendationData_SaveRecommendation))!
              as GSaveRecommendationData_SaveRecommendation);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveRecommendationData_SaveRecommendationSerializer
    implements
        StructuredSerializer<GSaveRecommendationData_SaveRecommendation> {
  @override
  final Iterable<Type> types = const [
    GSaveRecommendationData_SaveRecommendation,
    _$GSaveRecommendationData_SaveRecommendation
  ];
  @override
  final String wireName = 'GSaveRecommendationData_SaveRecommendation';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveRecommendationData_SaveRecommendation object,
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
    value = object.userRating;
    if (value != null) {
      result
        ..add('userRating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GRecommendationRating)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSaveRecommendationData_SaveRecommendation_media)));
    }
    value = object.mediaRecommendation;
    if (value != null) {
      result
        ..add('mediaRecommendation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSaveRecommendationData_SaveRecommendation_mediaRecommendation)));
    }
    return result;
  }

  @override
  GSaveRecommendationData_SaveRecommendation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveRecommendationData_SaveRecommendationBuilder();

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
        case 'userRating':
          result.userRating = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GRecommendationRating))
              as _i3.GRecommendationRating?;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSaveRecommendationData_SaveRecommendation_media))!
              as GSaveRecommendationData_SaveRecommendation_media);
          break;
        case 'mediaRecommendation':
          result.mediaRecommendation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSaveRecommendationData_SaveRecommendation_mediaRecommendation))!
              as GSaveRecommendationData_SaveRecommendation_mediaRecommendation);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveRecommendationData_SaveRecommendation_mediaSerializer
    implements
        StructuredSerializer<GSaveRecommendationData_SaveRecommendation_media> {
  @override
  final Iterable<Type> types = const [
    GSaveRecommendationData_SaveRecommendation_media,
    _$GSaveRecommendationData_SaveRecommendation_media
  ];
  @override
  final String wireName = 'GSaveRecommendationData_SaveRecommendation_media';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveRecommendationData_SaveRecommendation_media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaType)));
    }
    value = object.isAdult;
    if (value != null) {
      result
        ..add('isAdult')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.format;
    if (value != null) {
      result
        ..add('format')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaFormat)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSaveRecommendationData_SaveRecommendation_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSaveRecommendationData_SaveRecommendation_media_coverImage)));
    }
    return result;
  }

  @override
  GSaveRecommendationData_SaveRecommendation_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSaveRecommendationData_SaveRecommendation_mediaBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i3.GMediaType)) as _i3.GMediaType?;
          break;
        case 'isAdult':
          result.isAdult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'format':
          result.format = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GMediaFormat))
              as _i3.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSaveRecommendationData_SaveRecommendation_media_title))!
              as GSaveRecommendationData_SaveRecommendation_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSaveRecommendationData_SaveRecommendation_media_coverImage))!
              as GSaveRecommendationData_SaveRecommendation_media_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveRecommendationData_SaveRecommendation_media_titleSerializer
    implements
        StructuredSerializer<
            GSaveRecommendationData_SaveRecommendation_media_title> {
  @override
  final Iterable<Type> types = const [
    GSaveRecommendationData_SaveRecommendation_media_title,
    _$GSaveRecommendationData_SaveRecommendation_media_title
  ];
  @override
  final String wireName =
      'GSaveRecommendationData_SaveRecommendation_media_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveRecommendationData_SaveRecommendation_media_title object,
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
  GSaveRecommendationData_SaveRecommendation_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSaveRecommendationData_SaveRecommendation_media_titleBuilder();

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

class _$GSaveRecommendationData_SaveRecommendation_media_coverImageSerializer
    implements
        StructuredSerializer<
            GSaveRecommendationData_SaveRecommendation_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GSaveRecommendationData_SaveRecommendation_media_coverImage,
    _$GSaveRecommendationData_SaveRecommendation_media_coverImage
  ];
  @override
  final String wireName =
      'GSaveRecommendationData_SaveRecommendation_media_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveRecommendationData_SaveRecommendation_media_coverImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.extraLarge;
    if (value != null) {
      result
        ..add('extraLarge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSaveRecommendationData_SaveRecommendation_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSaveRecommendationData_SaveRecommendation_media_coverImageBuilder();

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
        case 'extraLarge':
          result.extraLarge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveRecommendationData_SaveRecommendation_mediaRecommendationSerializer
    implements
        StructuredSerializer<
            GSaveRecommendationData_SaveRecommendation_mediaRecommendation> {
  @override
  final Iterable<Type> types = const [
    GSaveRecommendationData_SaveRecommendation_mediaRecommendation,
    _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation
  ];
  @override
  final String wireName =
      'GSaveRecommendationData_SaveRecommendation_mediaRecommendation';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveRecommendationData_SaveRecommendation_mediaRecommendation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaType)));
    }
    value = object.isAdult;
    if (value != null) {
      result
        ..add('isAdult')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.format;
    if (value != null) {
      result
        ..add('format')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaFormat)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage)));
    }
    return result;
  }

  @override
  GSaveRecommendationData_SaveRecommendation_mediaRecommendation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSaveRecommendationData_SaveRecommendation_mediaRecommendationBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i3.GMediaType)) as _i3.GMediaType?;
          break;
        case 'isAdult':
          result.isAdult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'format':
          result.format = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GMediaFormat))
              as _i3.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title))!
              as GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage))!
              as GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleSerializer
    implements
        StructuredSerializer<
            GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title> {
  @override
  final Iterable<Type> types = const [
    GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title,
    _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title
  ];
  @override
  final String wireName =
      'GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title
          object,
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
  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleBuilder();

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

class _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageSerializer
    implements
        StructuredSerializer<
            GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage> {
  @override
  final Iterable<Type> types = const [
    GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage,
    _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage
  ];
  @override
  final String wireName =
      'GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.extraLarge;
    if (value != null) {
      result
        ..add('extraLarge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageBuilder();

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
        case 'extraLarge':
          result.extraLarge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GRecommendationsData extends GRecommendationsData {
  @override
  final String G__typename;
  @override
  final GRecommendationsData_Page? Page;

  factory _$GRecommendationsData(
          [void Function(GRecommendationsDataBuilder)? updates]) =>
      (new GRecommendationsDataBuilder()..update(updates))._build();

  _$GRecommendationsData._({required this.G__typename, this.Page}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GRecommendationsData', 'G__typename');
  }

  @override
  GRecommendationsData rebuild(
          void Function(GRecommendationsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRecommendationsDataBuilder toBuilder() =>
      new GRecommendationsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRecommendationsData &&
        G__typename == other.G__typename &&
        Page == other.Page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRecommendationsData')
          ..add('G__typename', G__typename)
          ..add('Page', Page))
        .toString();
  }
}

class GRecommendationsDataBuilder
    implements Builder<GRecommendationsData, GRecommendationsDataBuilder> {
  _$GRecommendationsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRecommendationsData_PageBuilder? _Page;
  GRecommendationsData_PageBuilder get Page =>
      _$this._Page ??= new GRecommendationsData_PageBuilder();
  set Page(GRecommendationsData_PageBuilder? Page) => _$this._Page = Page;

  GRecommendationsDataBuilder() {
    GRecommendationsData._initializeBuilder(this);
  }

  GRecommendationsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Page = $v.Page?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRecommendationsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRecommendationsData;
  }

  @override
  void update(void Function(GRecommendationsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRecommendationsData build() => _build();

  _$GRecommendationsData _build() {
    _$GRecommendationsData _$result;
    try {
      _$result = _$v ??
          new _$GRecommendationsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GRecommendationsData', 'G__typename'),
              Page: _Page?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Page';
        _Page?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GRecommendationsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRecommendationsData_Page extends GRecommendationsData_Page {
  @override
  final String G__typename;
  @override
  final GRecommendationsData_Page_pageInfo? pageInfo;
  @override
  final BuiltList<GRecommendationsData_Page_recommendations?>? recommendations;

  factory _$GRecommendationsData_Page(
          [void Function(GRecommendationsData_PageBuilder)? updates]) =>
      (new GRecommendationsData_PageBuilder()..update(updates))._build();

  _$GRecommendationsData_Page._(
      {required this.G__typename, this.pageInfo, this.recommendations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GRecommendationsData_Page', 'G__typename');
  }

  @override
  GRecommendationsData_Page rebuild(
          void Function(GRecommendationsData_PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRecommendationsData_PageBuilder toBuilder() =>
      new GRecommendationsData_PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRecommendationsData_Page &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        recommendations == other.recommendations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, recommendations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRecommendationsData_Page')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('recommendations', recommendations))
        .toString();
  }
}

class GRecommendationsData_PageBuilder
    implements
        Builder<GRecommendationsData_Page, GRecommendationsData_PageBuilder> {
  _$GRecommendationsData_Page? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRecommendationsData_Page_pageInfoBuilder? _pageInfo;
  GRecommendationsData_Page_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GRecommendationsData_Page_pageInfoBuilder();
  set pageInfo(GRecommendationsData_Page_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GRecommendationsData_Page_recommendations?>? _recommendations;
  ListBuilder<GRecommendationsData_Page_recommendations?> get recommendations =>
      _$this._recommendations ??=
          new ListBuilder<GRecommendationsData_Page_recommendations?>();
  set recommendations(
          ListBuilder<GRecommendationsData_Page_recommendations?>?
              recommendations) =>
      _$this._recommendations = recommendations;

  GRecommendationsData_PageBuilder() {
    GRecommendationsData_Page._initializeBuilder(this);
  }

  GRecommendationsData_PageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _recommendations = $v.recommendations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRecommendationsData_Page other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRecommendationsData_Page;
  }

  @override
  void update(void Function(GRecommendationsData_PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRecommendationsData_Page build() => _build();

  _$GRecommendationsData_Page _build() {
    _$GRecommendationsData_Page _$result;
    try {
      _$result = _$v ??
          new _$GRecommendationsData_Page._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GRecommendationsData_Page', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              recommendations: _recommendations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'recommendations';
        _recommendations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GRecommendationsData_Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRecommendationsData_Page_pageInfo
    extends GRecommendationsData_Page_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GRecommendationsData_Page_pageInfo(
          [void Function(GRecommendationsData_Page_pageInfoBuilder)?
              updates]) =>
      (new GRecommendationsData_Page_pageInfoBuilder()..update(updates))
          ._build();

  _$GRecommendationsData_Page_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GRecommendationsData_Page_pageInfo', 'G__typename');
  }

  @override
  GRecommendationsData_Page_pageInfo rebuild(
          void Function(GRecommendationsData_Page_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRecommendationsData_Page_pageInfoBuilder toBuilder() =>
      new GRecommendationsData_Page_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRecommendationsData_Page_pageInfo &&
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
    return (newBuiltValueToStringHelper(r'GRecommendationsData_Page_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GRecommendationsData_Page_pageInfoBuilder
    implements
        Builder<GRecommendationsData_Page_pageInfo,
            GRecommendationsData_Page_pageInfoBuilder> {
  _$GRecommendationsData_Page_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GRecommendationsData_Page_pageInfoBuilder() {
    GRecommendationsData_Page_pageInfo._initializeBuilder(this);
  }

  GRecommendationsData_Page_pageInfoBuilder get _$this {
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
  void replace(GRecommendationsData_Page_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRecommendationsData_Page_pageInfo;
  }

  @override
  void update(
      void Function(GRecommendationsData_Page_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRecommendationsData_Page_pageInfo build() => _build();

  _$GRecommendationsData_Page_pageInfo _build() {
    final _$result = _$v ??
        new _$GRecommendationsData_Page_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GRecommendationsData_Page_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GRecommendationsData_Page_recommendations
    extends GRecommendationsData_Page_recommendations {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int? rating;
  @override
  final _i3.GRecommendationRating? userRating;
  @override
  final GRecommendationsData_Page_recommendations_media? media;
  @override
  final GRecommendationsData_Page_recommendations_mediaRecommendation?
      mediaRecommendation;

  factory _$GRecommendationsData_Page_recommendations(
          [void Function(GRecommendationsData_Page_recommendationsBuilder)?
              updates]) =>
      (new GRecommendationsData_Page_recommendationsBuilder()..update(updates))
          ._build();

  _$GRecommendationsData_Page_recommendations._(
      {required this.G__typename,
      required this.id,
      this.rating,
      this.userRating,
      this.media,
      this.mediaRecommendation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GRecommendationsData_Page_recommendations', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GRecommendationsData_Page_recommendations', 'id');
  }

  @override
  GRecommendationsData_Page_recommendations rebuild(
          void Function(GRecommendationsData_Page_recommendationsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRecommendationsData_Page_recommendationsBuilder toBuilder() =>
      new GRecommendationsData_Page_recommendationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRecommendationsData_Page_recommendations &&
        G__typename == other.G__typename &&
        id == other.id &&
        rating == other.rating &&
        userRating == other.userRating &&
        media == other.media &&
        mediaRecommendation == other.mediaRecommendation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, userRating.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, mediaRecommendation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GRecommendationsData_Page_recommendations')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('rating', rating)
          ..add('userRating', userRating)
          ..add('media', media)
          ..add('mediaRecommendation', mediaRecommendation))
        .toString();
  }
}

class GRecommendationsData_Page_recommendationsBuilder
    implements
        Builder<GRecommendationsData_Page_recommendations,
            GRecommendationsData_Page_recommendationsBuilder> {
  _$GRecommendationsData_Page_recommendations? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  _i3.GRecommendationRating? _userRating;
  _i3.GRecommendationRating? get userRating => _$this._userRating;
  set userRating(_i3.GRecommendationRating? userRating) =>
      _$this._userRating = userRating;

  GRecommendationsData_Page_recommendations_mediaBuilder? _media;
  GRecommendationsData_Page_recommendations_mediaBuilder get media =>
      _$this._media ??=
          new GRecommendationsData_Page_recommendations_mediaBuilder();
  set media(GRecommendationsData_Page_recommendations_mediaBuilder? media) =>
      _$this._media = media;

  GRecommendationsData_Page_recommendations_mediaRecommendationBuilder?
      _mediaRecommendation;
  GRecommendationsData_Page_recommendations_mediaRecommendationBuilder
      get mediaRecommendation => _$this._mediaRecommendation ??=
          new GRecommendationsData_Page_recommendations_mediaRecommendationBuilder();
  set mediaRecommendation(
          GRecommendationsData_Page_recommendations_mediaRecommendationBuilder?
              mediaRecommendation) =>
      _$this._mediaRecommendation = mediaRecommendation;

  GRecommendationsData_Page_recommendationsBuilder() {
    GRecommendationsData_Page_recommendations._initializeBuilder(this);
  }

  GRecommendationsData_Page_recommendationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _rating = $v.rating;
      _userRating = $v.userRating;
      _media = $v.media?.toBuilder();
      _mediaRecommendation = $v.mediaRecommendation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRecommendationsData_Page_recommendations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRecommendationsData_Page_recommendations;
  }

  @override
  void update(
      void Function(GRecommendationsData_Page_recommendationsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GRecommendationsData_Page_recommendations build() => _build();

  _$GRecommendationsData_Page_recommendations _build() {
    _$GRecommendationsData_Page_recommendations _$result;
    try {
      _$result = _$v ??
          new _$GRecommendationsData_Page_recommendations._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GRecommendationsData_Page_recommendations', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GRecommendationsData_Page_recommendations', 'id'),
              rating: rating,
              userRating: userRating,
              media: _media?.build(),
              mediaRecommendation: _mediaRecommendation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
        _$failedField = 'mediaRecommendation';
        _mediaRecommendation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GRecommendationsData_Page_recommendations',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRecommendationsData_Page_recommendations_media
    extends GRecommendationsData_Page_recommendations_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i3.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i3.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GRecommendationsData_Page_recommendations_media_title? title;
  @override
  final GRecommendationsData_Page_recommendations_media_coverImage? coverImage;

  factory _$GRecommendationsData_Page_recommendations_media(
          [void Function(
                  GRecommendationsData_Page_recommendations_mediaBuilder)?
              updates]) =>
      (new GRecommendationsData_Page_recommendations_mediaBuilder()
            ..update(updates))
          ._build();

  _$GRecommendationsData_Page_recommendations_media._(
      {required this.G__typename,
      required this.id,
      this.type,
      this.isAdult,
      this.genres,
      this.format,
      this.description,
      this.title,
      this.coverImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GRecommendationsData_Page_recommendations_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GRecommendationsData_Page_recommendations_media', 'id');
  }

  @override
  GRecommendationsData_Page_recommendations_media rebuild(
          void Function(GRecommendationsData_Page_recommendations_mediaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRecommendationsData_Page_recommendations_mediaBuilder toBuilder() =>
      new GRecommendationsData_Page_recommendations_mediaBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRecommendationsData_Page_recommendations_media &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        isAdult == other.isAdult &&
        genres == other.genres &&
        format == other.format &&
        description == other.description &&
        title == other.title &&
        coverImage == other.coverImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, isAdult.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GRecommendationsData_Page_recommendations_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('isAdult', isAdult)
          ..add('genres', genres)
          ..add('format', format)
          ..add('description', description)
          ..add('title', title)
          ..add('coverImage', coverImage))
        .toString();
  }
}

class GRecommendationsData_Page_recommendations_mediaBuilder
    implements
        Builder<GRecommendationsData_Page_recommendations_media,
            GRecommendationsData_Page_recommendations_mediaBuilder> {
  _$GRecommendationsData_Page_recommendations_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i3.GMediaType? _type;
  _i3.GMediaType? get type => _$this._type;
  set type(_i3.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i3.GMediaFormat? _format;
  _i3.GMediaFormat? get format => _$this._format;
  set format(_i3.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GRecommendationsData_Page_recommendations_media_titleBuilder? _title;
  GRecommendationsData_Page_recommendations_media_titleBuilder get title =>
      _$this._title ??=
          new GRecommendationsData_Page_recommendations_media_titleBuilder();
  set title(
          GRecommendationsData_Page_recommendations_media_titleBuilder?
              title) =>
      _$this._title = title;

  GRecommendationsData_Page_recommendations_media_coverImageBuilder?
      _coverImage;
  GRecommendationsData_Page_recommendations_media_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GRecommendationsData_Page_recommendations_media_coverImageBuilder();
  set coverImage(
          GRecommendationsData_Page_recommendations_media_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GRecommendationsData_Page_recommendations_mediaBuilder() {
    GRecommendationsData_Page_recommendations_media._initializeBuilder(this);
  }

  GRecommendationsData_Page_recommendations_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _type = $v.type;
      _isAdult = $v.isAdult;
      _genres = $v.genres?.toBuilder();
      _format = $v.format;
      _description = $v.description;
      _title = $v.title?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRecommendationsData_Page_recommendations_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRecommendationsData_Page_recommendations_media;
  }

  @override
  void update(
      void Function(GRecommendationsData_Page_recommendations_mediaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GRecommendationsData_Page_recommendations_media build() => _build();

  _$GRecommendationsData_Page_recommendations_media _build() {
    _$GRecommendationsData_Page_recommendations_media _$result;
    try {
      _$result = _$v ??
          new _$GRecommendationsData_Page_recommendations_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GRecommendationsData_Page_recommendations_media',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GRecommendationsData_Page_recommendations_media', 'id'),
              type: type,
              isAdult: isAdult,
              genres: _genres?.build(),
              format: format,
              description: description,
              title: _title?.build(),
              coverImage: _coverImage?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        _genres?.build();

        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GRecommendationsData_Page_recommendations_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRecommendationsData_Page_recommendations_media_title
    extends GRecommendationsData_Page_recommendations_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GRecommendationsData_Page_recommendations_media_title(
          [void Function(
                  GRecommendationsData_Page_recommendations_media_titleBuilder)?
              updates]) =>
      (new GRecommendationsData_Page_recommendations_media_titleBuilder()
            ..update(updates))
          ._build();

  _$GRecommendationsData_Page_recommendations_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GRecommendationsData_Page_recommendations_media_title',
        'G__typename');
  }

  @override
  GRecommendationsData_Page_recommendations_media_title rebuild(
          void Function(
                  GRecommendationsData_Page_recommendations_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRecommendationsData_Page_recommendations_media_titleBuilder toBuilder() =>
      new GRecommendationsData_Page_recommendations_media_titleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRecommendationsData_Page_recommendations_media_title &&
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
            r'GRecommendationsData_Page_recommendations_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GRecommendationsData_Page_recommendations_media_titleBuilder
    implements
        Builder<GRecommendationsData_Page_recommendations_media_title,
            GRecommendationsData_Page_recommendations_media_titleBuilder> {
  _$GRecommendationsData_Page_recommendations_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GRecommendationsData_Page_recommendations_media_titleBuilder() {
    GRecommendationsData_Page_recommendations_media_title._initializeBuilder(
        this);
  }

  GRecommendationsData_Page_recommendations_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRecommendationsData_Page_recommendations_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRecommendationsData_Page_recommendations_media_title;
  }

  @override
  void update(
      void Function(
              GRecommendationsData_Page_recommendations_media_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GRecommendationsData_Page_recommendations_media_title build() => _build();

  _$GRecommendationsData_Page_recommendations_media_title _build() {
    final _$result = _$v ??
        new _$GRecommendationsData_Page_recommendations_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GRecommendationsData_Page_recommendations_media_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GRecommendationsData_Page_recommendations_media_coverImage
    extends GRecommendationsData_Page_recommendations_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GRecommendationsData_Page_recommendations_media_coverImage(
          [void Function(
                  GRecommendationsData_Page_recommendations_media_coverImageBuilder)?
              updates]) =>
      (new GRecommendationsData_Page_recommendations_media_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GRecommendationsData_Page_recommendations_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GRecommendationsData_Page_recommendations_media_coverImage',
        'G__typename');
  }

  @override
  GRecommendationsData_Page_recommendations_media_coverImage rebuild(
          void Function(
                  GRecommendationsData_Page_recommendations_media_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRecommendationsData_Page_recommendations_media_coverImageBuilder
      toBuilder() =>
          new GRecommendationsData_Page_recommendations_media_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GRecommendationsData_Page_recommendations_media_coverImage &&
        G__typename == other.G__typename &&
        extraLarge == other.extraLarge;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, extraLarge.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GRecommendationsData_Page_recommendations_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GRecommendationsData_Page_recommendations_media_coverImageBuilder
    implements
        Builder<GRecommendationsData_Page_recommendations_media_coverImage,
            GRecommendationsData_Page_recommendations_media_coverImageBuilder> {
  _$GRecommendationsData_Page_recommendations_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GRecommendationsData_Page_recommendations_media_coverImageBuilder() {
    GRecommendationsData_Page_recommendations_media_coverImage
        ._initializeBuilder(this);
  }

  GRecommendationsData_Page_recommendations_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GRecommendationsData_Page_recommendations_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRecommendationsData_Page_recommendations_media_coverImage;
  }

  @override
  void update(
      void Function(
              GRecommendationsData_Page_recommendations_media_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GRecommendationsData_Page_recommendations_media_coverImage build() =>
      _build();

  _$GRecommendationsData_Page_recommendations_media_coverImage _build() {
    final _$result = _$v ??
        new _$GRecommendationsData_Page_recommendations_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GRecommendationsData_Page_recommendations_media_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GRecommendationsData_Page_recommendations_mediaRecommendation
    extends GRecommendationsData_Page_recommendations_mediaRecommendation {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i3.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i3.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GRecommendationsData_Page_recommendations_mediaRecommendation_title?
      title;
  @override
  final GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage?
      coverImage;

  factory _$GRecommendationsData_Page_recommendations_mediaRecommendation(
          [void Function(
                  GRecommendationsData_Page_recommendations_mediaRecommendationBuilder)?
              updates]) =>
      (new GRecommendationsData_Page_recommendations_mediaRecommendationBuilder()
            ..update(updates))
          ._build();

  _$GRecommendationsData_Page_recommendations_mediaRecommendation._(
      {required this.G__typename,
      required this.id,
      this.type,
      this.isAdult,
      this.genres,
      this.format,
      this.description,
      this.title,
      this.coverImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GRecommendationsData_Page_recommendations_mediaRecommendation',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(id,
        r'GRecommendationsData_Page_recommendations_mediaRecommendation', 'id');
  }

  @override
  GRecommendationsData_Page_recommendations_mediaRecommendation rebuild(
          void Function(
                  GRecommendationsData_Page_recommendations_mediaRecommendationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRecommendationsData_Page_recommendations_mediaRecommendationBuilder
      toBuilder() =>
          new GRecommendationsData_Page_recommendations_mediaRecommendationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GRecommendationsData_Page_recommendations_mediaRecommendation &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        isAdult == other.isAdult &&
        genres == other.genres &&
        format == other.format &&
        description == other.description &&
        title == other.title &&
        coverImage == other.coverImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, isAdult.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GRecommendationsData_Page_recommendations_mediaRecommendation')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('isAdult', isAdult)
          ..add('genres', genres)
          ..add('format', format)
          ..add('description', description)
          ..add('title', title)
          ..add('coverImage', coverImage))
        .toString();
  }
}

class GRecommendationsData_Page_recommendations_mediaRecommendationBuilder
    implements
        Builder<GRecommendationsData_Page_recommendations_mediaRecommendation,
            GRecommendationsData_Page_recommendations_mediaRecommendationBuilder> {
  _$GRecommendationsData_Page_recommendations_mediaRecommendation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i3.GMediaType? _type;
  _i3.GMediaType? get type => _$this._type;
  set type(_i3.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i3.GMediaFormat? _format;
  _i3.GMediaFormat? get format => _$this._format;
  set format(_i3.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GRecommendationsData_Page_recommendations_mediaRecommendation_titleBuilder?
      _title;
  GRecommendationsData_Page_recommendations_mediaRecommendation_titleBuilder
      get title => _$this._title ??=
          new GRecommendationsData_Page_recommendations_mediaRecommendation_titleBuilder();
  set title(
          GRecommendationsData_Page_recommendations_mediaRecommendation_titleBuilder?
              title) =>
      _$this._title = title;

  GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageBuilder?
      _coverImage;
  GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageBuilder();
  set coverImage(
          GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GRecommendationsData_Page_recommendations_mediaRecommendationBuilder() {
    GRecommendationsData_Page_recommendations_mediaRecommendation
        ._initializeBuilder(this);
  }

  GRecommendationsData_Page_recommendations_mediaRecommendationBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _type = $v.type;
      _isAdult = $v.isAdult;
      _genres = $v.genres?.toBuilder();
      _format = $v.format;
      _description = $v.description;
      _title = $v.title?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GRecommendationsData_Page_recommendations_mediaRecommendation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GRecommendationsData_Page_recommendations_mediaRecommendation;
  }

  @override
  void update(
      void Function(
              GRecommendationsData_Page_recommendations_mediaRecommendationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GRecommendationsData_Page_recommendations_mediaRecommendation build() =>
      _build();

  _$GRecommendationsData_Page_recommendations_mediaRecommendation _build() {
    _$GRecommendationsData_Page_recommendations_mediaRecommendation _$result;
    try {
      _$result = _$v ??
          new _$GRecommendationsData_Page_recommendations_mediaRecommendation._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GRecommendationsData_Page_recommendations_mediaRecommendation',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GRecommendationsData_Page_recommendations_mediaRecommendation',
                  'id'),
              type: type,
              isAdult: isAdult,
              genres: _genres?.build(),
              format: format,
              description: description,
              title: _title?.build(),
              coverImage: _coverImage?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        _genres?.build();

        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GRecommendationsData_Page_recommendations_mediaRecommendation',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRecommendationsData_Page_recommendations_mediaRecommendation_title
    extends GRecommendationsData_Page_recommendations_mediaRecommendation_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GRecommendationsData_Page_recommendations_mediaRecommendation_title(
          [void Function(
                  GRecommendationsData_Page_recommendations_mediaRecommendation_titleBuilder)?
              updates]) =>
      (new GRecommendationsData_Page_recommendations_mediaRecommendation_titleBuilder()
            ..update(updates))
          ._build();

  _$GRecommendationsData_Page_recommendations_mediaRecommendation_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GRecommendationsData_Page_recommendations_mediaRecommendation_title',
        'G__typename');
  }

  @override
  GRecommendationsData_Page_recommendations_mediaRecommendation_title rebuild(
          void Function(
                  GRecommendationsData_Page_recommendations_mediaRecommendation_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRecommendationsData_Page_recommendations_mediaRecommendation_titleBuilder
      toBuilder() =>
          new GRecommendationsData_Page_recommendations_mediaRecommendation_titleBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GRecommendationsData_Page_recommendations_mediaRecommendation_title &&
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
            r'GRecommendationsData_Page_recommendations_mediaRecommendation_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GRecommendationsData_Page_recommendations_mediaRecommendation_titleBuilder
    implements
        Builder<
            GRecommendationsData_Page_recommendations_mediaRecommendation_title,
            GRecommendationsData_Page_recommendations_mediaRecommendation_titleBuilder> {
  _$GRecommendationsData_Page_recommendations_mediaRecommendation_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GRecommendationsData_Page_recommendations_mediaRecommendation_titleBuilder() {
    GRecommendationsData_Page_recommendations_mediaRecommendation_title
        ._initializeBuilder(this);
  }

  GRecommendationsData_Page_recommendations_mediaRecommendation_titleBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GRecommendationsData_Page_recommendations_mediaRecommendation_title
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GRecommendationsData_Page_recommendations_mediaRecommendation_title;
  }

  @override
  void update(
      void Function(
              GRecommendationsData_Page_recommendations_mediaRecommendation_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GRecommendationsData_Page_recommendations_mediaRecommendation_title build() =>
      _build();

  _$GRecommendationsData_Page_recommendations_mediaRecommendation_title
      _build() {
    final _$result = _$v ??
        new _$GRecommendationsData_Page_recommendations_mediaRecommendation_title
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GRecommendationsData_Page_recommendations_mediaRecommendation_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage
    extends GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage(
          [void Function(
                  GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageBuilder)?
              updates]) =>
      (new GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage',
        'G__typename');
  }

  @override
  GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage rebuild(
          void Function(
                  GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageBuilder
      toBuilder() =>
          new GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage &&
        G__typename == other.G__typename &&
        extraLarge == other.extraLarge;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, extraLarge.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageBuilder
    implements
        Builder<
            GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage,
            GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageBuilder> {
  _$GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageBuilder() {
    GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage
        ._initializeBuilder(this);
  }

  GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage;
  }

  @override
  void update(
      void Function(
              GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage
      build() => _build();

  _$GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage
      _build() {
    final _$result = _$v ??
        new _$GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveRecommendationData extends GSaveRecommendationData {
  @override
  final String G__typename;
  @override
  final GSaveRecommendationData_SaveRecommendation? SaveRecommendation;

  factory _$GSaveRecommendationData(
          [void Function(GSaveRecommendationDataBuilder)? updates]) =>
      (new GSaveRecommendationDataBuilder()..update(updates))._build();

  _$GSaveRecommendationData._(
      {required this.G__typename, this.SaveRecommendation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSaveRecommendationData', 'G__typename');
  }

  @override
  GSaveRecommendationData rebuild(
          void Function(GSaveRecommendationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveRecommendationDataBuilder toBuilder() =>
      new GSaveRecommendationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveRecommendationData &&
        G__typename == other.G__typename &&
        SaveRecommendation == other.SaveRecommendation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, SaveRecommendation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaveRecommendationData')
          ..add('G__typename', G__typename)
          ..add('SaveRecommendation', SaveRecommendation))
        .toString();
  }
}

class GSaveRecommendationDataBuilder
    implements
        Builder<GSaveRecommendationData, GSaveRecommendationDataBuilder> {
  _$GSaveRecommendationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSaveRecommendationData_SaveRecommendationBuilder? _SaveRecommendation;
  GSaveRecommendationData_SaveRecommendationBuilder get SaveRecommendation =>
      _$this._SaveRecommendation ??=
          new GSaveRecommendationData_SaveRecommendationBuilder();
  set SaveRecommendation(
          GSaveRecommendationData_SaveRecommendationBuilder?
              SaveRecommendation) =>
      _$this._SaveRecommendation = SaveRecommendation;

  GSaveRecommendationDataBuilder() {
    GSaveRecommendationData._initializeBuilder(this);
  }

  GSaveRecommendationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _SaveRecommendation = $v.SaveRecommendation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveRecommendationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveRecommendationData;
  }

  @override
  void update(void Function(GSaveRecommendationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveRecommendationData build() => _build();

  _$GSaveRecommendationData _build() {
    _$GSaveRecommendationData _$result;
    try {
      _$result = _$v ??
          new _$GSaveRecommendationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSaveRecommendationData', 'G__typename'),
              SaveRecommendation: _SaveRecommendation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'SaveRecommendation';
        _SaveRecommendation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaveRecommendationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveRecommendationData_SaveRecommendation
    extends GSaveRecommendationData_SaveRecommendation {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int? rating;
  @override
  final _i3.GRecommendationRating? userRating;
  @override
  final GSaveRecommendationData_SaveRecommendation_media? media;
  @override
  final GSaveRecommendationData_SaveRecommendation_mediaRecommendation?
      mediaRecommendation;

  factory _$GSaveRecommendationData_SaveRecommendation(
          [void Function(GSaveRecommendationData_SaveRecommendationBuilder)?
              updates]) =>
      (new GSaveRecommendationData_SaveRecommendationBuilder()..update(updates))
          ._build();

  _$GSaveRecommendationData_SaveRecommendation._(
      {required this.G__typename,
      required this.id,
      this.rating,
      this.userRating,
      this.media,
      this.mediaRecommendation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSaveRecommendationData_SaveRecommendation', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSaveRecommendationData_SaveRecommendation', 'id');
  }

  @override
  GSaveRecommendationData_SaveRecommendation rebuild(
          void Function(GSaveRecommendationData_SaveRecommendationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveRecommendationData_SaveRecommendationBuilder toBuilder() =>
      new GSaveRecommendationData_SaveRecommendationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveRecommendationData_SaveRecommendation &&
        G__typename == other.G__typename &&
        id == other.id &&
        rating == other.rating &&
        userRating == other.userRating &&
        media == other.media &&
        mediaRecommendation == other.mediaRecommendation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, userRating.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, mediaRecommendation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSaveRecommendationData_SaveRecommendation')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('rating', rating)
          ..add('userRating', userRating)
          ..add('media', media)
          ..add('mediaRecommendation', mediaRecommendation))
        .toString();
  }
}

class GSaveRecommendationData_SaveRecommendationBuilder
    implements
        Builder<GSaveRecommendationData_SaveRecommendation,
            GSaveRecommendationData_SaveRecommendationBuilder> {
  _$GSaveRecommendationData_SaveRecommendation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  _i3.GRecommendationRating? _userRating;
  _i3.GRecommendationRating? get userRating => _$this._userRating;
  set userRating(_i3.GRecommendationRating? userRating) =>
      _$this._userRating = userRating;

  GSaveRecommendationData_SaveRecommendation_mediaBuilder? _media;
  GSaveRecommendationData_SaveRecommendation_mediaBuilder get media =>
      _$this._media ??=
          new GSaveRecommendationData_SaveRecommendation_mediaBuilder();
  set media(GSaveRecommendationData_SaveRecommendation_mediaBuilder? media) =>
      _$this._media = media;

  GSaveRecommendationData_SaveRecommendation_mediaRecommendationBuilder?
      _mediaRecommendation;
  GSaveRecommendationData_SaveRecommendation_mediaRecommendationBuilder
      get mediaRecommendation => _$this._mediaRecommendation ??=
          new GSaveRecommendationData_SaveRecommendation_mediaRecommendationBuilder();
  set mediaRecommendation(
          GSaveRecommendationData_SaveRecommendation_mediaRecommendationBuilder?
              mediaRecommendation) =>
      _$this._mediaRecommendation = mediaRecommendation;

  GSaveRecommendationData_SaveRecommendationBuilder() {
    GSaveRecommendationData_SaveRecommendation._initializeBuilder(this);
  }

  GSaveRecommendationData_SaveRecommendationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _rating = $v.rating;
      _userRating = $v.userRating;
      _media = $v.media?.toBuilder();
      _mediaRecommendation = $v.mediaRecommendation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveRecommendationData_SaveRecommendation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveRecommendationData_SaveRecommendation;
  }

  @override
  void update(
      void Function(GSaveRecommendationData_SaveRecommendationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveRecommendationData_SaveRecommendation build() => _build();

  _$GSaveRecommendationData_SaveRecommendation _build() {
    _$GSaveRecommendationData_SaveRecommendation _$result;
    try {
      _$result = _$v ??
          new _$GSaveRecommendationData_SaveRecommendation._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSaveRecommendationData_SaveRecommendation', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GSaveRecommendationData_SaveRecommendation', 'id'),
              rating: rating,
              userRating: userRating,
              media: _media?.build(),
              mediaRecommendation: _mediaRecommendation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
        _$failedField = 'mediaRecommendation';
        _mediaRecommendation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaveRecommendationData_SaveRecommendation',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveRecommendationData_SaveRecommendation_media
    extends GSaveRecommendationData_SaveRecommendation_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i3.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i3.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GSaveRecommendationData_SaveRecommendation_media_title? title;
  @override
  final GSaveRecommendationData_SaveRecommendation_media_coverImage? coverImage;

  factory _$GSaveRecommendationData_SaveRecommendation_media(
          [void Function(
                  GSaveRecommendationData_SaveRecommendation_mediaBuilder)?
              updates]) =>
      (new GSaveRecommendationData_SaveRecommendation_mediaBuilder()
            ..update(updates))
          ._build();

  _$GSaveRecommendationData_SaveRecommendation_media._(
      {required this.G__typename,
      required this.id,
      this.type,
      this.isAdult,
      this.genres,
      this.format,
      this.description,
      this.title,
      this.coverImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSaveRecommendationData_SaveRecommendation_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSaveRecommendationData_SaveRecommendation_media', 'id');
  }

  @override
  GSaveRecommendationData_SaveRecommendation_media rebuild(
          void Function(GSaveRecommendationData_SaveRecommendation_mediaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveRecommendationData_SaveRecommendation_mediaBuilder toBuilder() =>
      new GSaveRecommendationData_SaveRecommendation_mediaBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveRecommendationData_SaveRecommendation_media &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        isAdult == other.isAdult &&
        genres == other.genres &&
        format == other.format &&
        description == other.description &&
        title == other.title &&
        coverImage == other.coverImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, isAdult.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSaveRecommendationData_SaveRecommendation_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('isAdult', isAdult)
          ..add('genres', genres)
          ..add('format', format)
          ..add('description', description)
          ..add('title', title)
          ..add('coverImage', coverImage))
        .toString();
  }
}

class GSaveRecommendationData_SaveRecommendation_mediaBuilder
    implements
        Builder<GSaveRecommendationData_SaveRecommendation_media,
            GSaveRecommendationData_SaveRecommendation_mediaBuilder> {
  _$GSaveRecommendationData_SaveRecommendation_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i3.GMediaType? _type;
  _i3.GMediaType? get type => _$this._type;
  set type(_i3.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i3.GMediaFormat? _format;
  _i3.GMediaFormat? get format => _$this._format;
  set format(_i3.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GSaveRecommendationData_SaveRecommendation_media_titleBuilder? _title;
  GSaveRecommendationData_SaveRecommendation_media_titleBuilder get title =>
      _$this._title ??=
          new GSaveRecommendationData_SaveRecommendation_media_titleBuilder();
  set title(
          GSaveRecommendationData_SaveRecommendation_media_titleBuilder?
              title) =>
      _$this._title = title;

  GSaveRecommendationData_SaveRecommendation_media_coverImageBuilder?
      _coverImage;
  GSaveRecommendationData_SaveRecommendation_media_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GSaveRecommendationData_SaveRecommendation_media_coverImageBuilder();
  set coverImage(
          GSaveRecommendationData_SaveRecommendation_media_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GSaveRecommendationData_SaveRecommendation_mediaBuilder() {
    GSaveRecommendationData_SaveRecommendation_media._initializeBuilder(this);
  }

  GSaveRecommendationData_SaveRecommendation_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _type = $v.type;
      _isAdult = $v.isAdult;
      _genres = $v.genres?.toBuilder();
      _format = $v.format;
      _description = $v.description;
      _title = $v.title?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveRecommendationData_SaveRecommendation_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveRecommendationData_SaveRecommendation_media;
  }

  @override
  void update(
      void Function(GSaveRecommendationData_SaveRecommendation_mediaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveRecommendationData_SaveRecommendation_media build() => _build();

  _$GSaveRecommendationData_SaveRecommendation_media _build() {
    _$GSaveRecommendationData_SaveRecommendation_media _$result;
    try {
      _$result = _$v ??
          new _$GSaveRecommendationData_SaveRecommendation_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GSaveRecommendationData_SaveRecommendation_media',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'GSaveRecommendationData_SaveRecommendation_media', 'id'),
              type: type,
              isAdult: isAdult,
              genres: _genres?.build(),
              format: format,
              description: description,
              title: _title?.build(),
              coverImage: _coverImage?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        _genres?.build();

        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaveRecommendationData_SaveRecommendation_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveRecommendationData_SaveRecommendation_media_title
    extends GSaveRecommendationData_SaveRecommendation_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GSaveRecommendationData_SaveRecommendation_media_title(
          [void Function(
                  GSaveRecommendationData_SaveRecommendation_media_titleBuilder)?
              updates]) =>
      (new GSaveRecommendationData_SaveRecommendation_media_titleBuilder()
            ..update(updates))
          ._build();

  _$GSaveRecommendationData_SaveRecommendation_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GSaveRecommendationData_SaveRecommendation_media_title',
        'G__typename');
  }

  @override
  GSaveRecommendationData_SaveRecommendation_media_title rebuild(
          void Function(
                  GSaveRecommendationData_SaveRecommendation_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveRecommendationData_SaveRecommendation_media_titleBuilder toBuilder() =>
      new GSaveRecommendationData_SaveRecommendation_media_titleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveRecommendationData_SaveRecommendation_media_title &&
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
            r'GSaveRecommendationData_SaveRecommendation_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GSaveRecommendationData_SaveRecommendation_media_titleBuilder
    implements
        Builder<GSaveRecommendationData_SaveRecommendation_media_title,
            GSaveRecommendationData_SaveRecommendation_media_titleBuilder> {
  _$GSaveRecommendationData_SaveRecommendation_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GSaveRecommendationData_SaveRecommendation_media_titleBuilder() {
    GSaveRecommendationData_SaveRecommendation_media_title._initializeBuilder(
        this);
  }

  GSaveRecommendationData_SaveRecommendation_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveRecommendationData_SaveRecommendation_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveRecommendationData_SaveRecommendation_media_title;
  }

  @override
  void update(
      void Function(
              GSaveRecommendationData_SaveRecommendation_media_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveRecommendationData_SaveRecommendation_media_title build() => _build();

  _$GSaveRecommendationData_SaveRecommendation_media_title _build() {
    final _$result = _$v ??
        new _$GSaveRecommendationData_SaveRecommendation_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSaveRecommendationData_SaveRecommendation_media_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveRecommendationData_SaveRecommendation_media_coverImage
    extends GSaveRecommendationData_SaveRecommendation_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GSaveRecommendationData_SaveRecommendation_media_coverImage(
          [void Function(
                  GSaveRecommendationData_SaveRecommendation_media_coverImageBuilder)?
              updates]) =>
      (new GSaveRecommendationData_SaveRecommendation_media_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GSaveRecommendationData_SaveRecommendation_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GSaveRecommendationData_SaveRecommendation_media_coverImage',
        'G__typename');
  }

  @override
  GSaveRecommendationData_SaveRecommendation_media_coverImage rebuild(
          void Function(
                  GSaveRecommendationData_SaveRecommendation_media_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveRecommendationData_SaveRecommendation_media_coverImageBuilder
      toBuilder() =>
          new GSaveRecommendationData_SaveRecommendation_media_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GSaveRecommendationData_SaveRecommendation_media_coverImage &&
        G__typename == other.G__typename &&
        extraLarge == other.extraLarge;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, extraLarge.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSaveRecommendationData_SaveRecommendation_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GSaveRecommendationData_SaveRecommendation_media_coverImageBuilder
    implements
        Builder<GSaveRecommendationData_SaveRecommendation_media_coverImage,
            GSaveRecommendationData_SaveRecommendation_media_coverImageBuilder> {
  _$GSaveRecommendationData_SaveRecommendation_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GSaveRecommendationData_SaveRecommendation_media_coverImageBuilder() {
    GSaveRecommendationData_SaveRecommendation_media_coverImage
        ._initializeBuilder(this);
  }

  GSaveRecommendationData_SaveRecommendation_media_coverImageBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GSaveRecommendationData_SaveRecommendation_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GSaveRecommendationData_SaveRecommendation_media_coverImage;
  }

  @override
  void update(
      void Function(
              GSaveRecommendationData_SaveRecommendation_media_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveRecommendationData_SaveRecommendation_media_coverImage build() =>
      _build();

  _$GSaveRecommendationData_SaveRecommendation_media_coverImage _build() {
    final _$result = _$v ??
        new _$GSaveRecommendationData_SaveRecommendation_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSaveRecommendationData_SaveRecommendation_media_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation
    extends GSaveRecommendationData_SaveRecommendation_mediaRecommendation {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i3.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i3.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title?
      title;
  @override
  final GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage?
      coverImage;

  factory _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation(
          [void Function(
                  GSaveRecommendationData_SaveRecommendation_mediaRecommendationBuilder)?
              updates]) =>
      (new GSaveRecommendationData_SaveRecommendation_mediaRecommendationBuilder()
            ..update(updates))
          ._build();

  _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation._(
      {required this.G__typename,
      required this.id,
      this.type,
      this.isAdult,
      this.genres,
      this.format,
      this.description,
      this.title,
      this.coverImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GSaveRecommendationData_SaveRecommendation_mediaRecommendation',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GSaveRecommendationData_SaveRecommendation_mediaRecommendation',
        'id');
  }

  @override
  GSaveRecommendationData_SaveRecommendation_mediaRecommendation rebuild(
          void Function(
                  GSaveRecommendationData_SaveRecommendation_mediaRecommendationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveRecommendationData_SaveRecommendation_mediaRecommendationBuilder
      toBuilder() =>
          new GSaveRecommendationData_SaveRecommendation_mediaRecommendationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GSaveRecommendationData_SaveRecommendation_mediaRecommendation &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        isAdult == other.isAdult &&
        genres == other.genres &&
        format == other.format &&
        description == other.description &&
        title == other.title &&
        coverImage == other.coverImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, isAdult.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSaveRecommendationData_SaveRecommendation_mediaRecommendation')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('isAdult', isAdult)
          ..add('genres', genres)
          ..add('format', format)
          ..add('description', description)
          ..add('title', title)
          ..add('coverImage', coverImage))
        .toString();
  }
}

class GSaveRecommendationData_SaveRecommendation_mediaRecommendationBuilder
    implements
        Builder<GSaveRecommendationData_SaveRecommendation_mediaRecommendation,
            GSaveRecommendationData_SaveRecommendation_mediaRecommendationBuilder> {
  _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i3.GMediaType? _type;
  _i3.GMediaType? get type => _$this._type;
  set type(_i3.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i3.GMediaFormat? _format;
  _i3.GMediaFormat? get format => _$this._format;
  set format(_i3.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleBuilder?
      _title;
  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleBuilder
      get title => _$this._title ??=
          new GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleBuilder();
  set title(
          GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleBuilder?
              title) =>
      _$this._title = title;

  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageBuilder?
      _coverImage;
  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageBuilder();
  set coverImage(
          GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GSaveRecommendationData_SaveRecommendation_mediaRecommendationBuilder() {
    GSaveRecommendationData_SaveRecommendation_mediaRecommendation
        ._initializeBuilder(this);
  }

  GSaveRecommendationData_SaveRecommendation_mediaRecommendationBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _type = $v.type;
      _isAdult = $v.isAdult;
      _genres = $v.genres?.toBuilder();
      _format = $v.format;
      _description = $v.description;
      _title = $v.title?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GSaveRecommendationData_SaveRecommendation_mediaRecommendation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation;
  }

  @override
  void update(
      void Function(
              GSaveRecommendationData_SaveRecommendation_mediaRecommendationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveRecommendationData_SaveRecommendation_mediaRecommendation build() =>
      _build();

  _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation _build() {
    _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation _$result;
    try {
      _$result = _$v ??
          new _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GSaveRecommendationData_SaveRecommendation_mediaRecommendation',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GSaveRecommendationData_SaveRecommendation_mediaRecommendation',
                  'id'),
              type: type,
              isAdult: isAdult,
              genres: _genres?.build(),
              format: format,
              description: description,
              title: _title?.build(),
              coverImage: _coverImage?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        _genres?.build();

        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaveRecommendationData_SaveRecommendation_mediaRecommendation',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title
    extends GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title(
          [void Function(
                  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleBuilder)?
              updates]) =>
      (new GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleBuilder()
            ..update(updates))
          ._build();

  _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title',
        'G__typename');
  }

  @override
  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title rebuild(
          void Function(
                  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleBuilder
      toBuilder() =>
          new GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title &&
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
            r'GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleBuilder
    implements
        Builder<
            GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title,
            GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleBuilder> {
  _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleBuilder() {
    GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title
        ._initializeBuilder(this);
  }

  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title;
  }

  @override
  void update(
      void Function(
              GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title
      build() => _build();

  _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title
      _build() {
    final _$result = _$v ??
        new _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage
    extends GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage(
          [void Function(
                  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageBuilder)?
              updates]) =>
      (new GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage',
        'G__typename');
  }

  @override
  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage rebuild(
          void Function(
                  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageBuilder
      toBuilder() =>
          new GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage &&
        G__typename == other.G__typename &&
        extraLarge == other.extraLarge;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, extraLarge.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageBuilder
    implements
        Builder<
            GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage,
            GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageBuilder> {
  _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageBuilder() {
    GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage
        ._initializeBuilder(this);
  }

  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage;
  }

  @override
  void update(
      void Function(
              GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage
      build() => _build();

  _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage
      _build() {
    final _$result = _$v ??
        new _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
