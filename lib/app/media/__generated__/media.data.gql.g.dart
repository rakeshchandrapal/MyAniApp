// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaData> _$gMediaDataSerializer = new _$GMediaDataSerializer();
Serializer<GMediaData_Media> _$gMediaDataMediaSerializer =
    new _$GMediaData_MediaSerializer();
Serializer<GMediaData_Media_title> _$gMediaDataMediaTitleSerializer =
    new _$GMediaData_Media_titleSerializer();
Serializer<GMediaData_Media_coverImage> _$gMediaDataMediaCoverImageSerializer =
    new _$GMediaData_Media_coverImageSerializer();
Serializer<GMediaData_Media_studios> _$gMediaDataMediaStudiosSerializer =
    new _$GMediaData_Media_studiosSerializer();
Serializer<GMediaData_Media_studios_nodes>
    _$gMediaDataMediaStudiosNodesSerializer =
    new _$GMediaData_Media_studios_nodesSerializer();
Serializer<GMediaData_Media_startDate> _$gMediaDataMediaStartDateSerializer =
    new _$GMediaData_Media_startDateSerializer();
Serializer<GMediaData_Media_endDate> _$gMediaDataMediaEndDateSerializer =
    new _$GMediaData_Media_endDateSerializer();
Serializer<GMediaData_Media_tags> _$gMediaDataMediaTagsSerializer =
    new _$GMediaData_Media_tagsSerializer();
Serializer<GMediaData_Media_relations> _$gMediaDataMediaRelationsSerializer =
    new _$GMediaData_Media_relationsSerializer();
Serializer<GMediaData_Media_relations_edges>
    _$gMediaDataMediaRelationsEdgesSerializer =
    new _$GMediaData_Media_relations_edgesSerializer();
Serializer<GMediaData_Media_relations_edges_node>
    _$gMediaDataMediaRelationsEdgesNodeSerializer =
    new _$GMediaData_Media_relations_edges_nodeSerializer();
Serializer<GMediaData_Media_relations_edges_node_title>
    _$gMediaDataMediaRelationsEdgesNodeTitleSerializer =
    new _$GMediaData_Media_relations_edges_node_titleSerializer();
Serializer<GMediaData_Media_relations_edges_node_coverImage>
    _$gMediaDataMediaRelationsEdgesNodeCoverImageSerializer =
    new _$GMediaData_Media_relations_edges_node_coverImageSerializer();
Serializer<GMediaData_Media_externalLinks>
    _$gMediaDataMediaExternalLinksSerializer =
    new _$GMediaData_Media_externalLinksSerializer();
Serializer<GMediaData_Media_trailer> _$gMediaDataMediaTrailerSerializer =
    new _$GMediaData_Media_trailerSerializer();
Serializer<GMediaData_Media_characters> _$gMediaDataMediaCharactersSerializer =
    new _$GMediaData_Media_charactersSerializer();
Serializer<GMediaData_Media_characters_nodes>
    _$gMediaDataMediaCharactersNodesSerializer =
    new _$GMediaData_Media_characters_nodesSerializer();
Serializer<GMediaData_Media_staff> _$gMediaDataMediaStaffSerializer =
    new _$GMediaData_Media_staffSerializer();
Serializer<GMediaData_Media_staff_nodes> _$gMediaDataMediaStaffNodesSerializer =
    new _$GMediaData_Media_staff_nodesSerializer();
Serializer<GMediaData_Media_recommendations>
    _$gMediaDataMediaRecommendationsSerializer =
    new _$GMediaData_Media_recommendationsSerializer();
Serializer<GMediaData_Media_recommendations_nodes>
    _$gMediaDataMediaRecommendationsNodesSerializer =
    new _$GMediaData_Media_recommendations_nodesSerializer();
Serializer<GMediaData_Media_reviews> _$gMediaDataMediaReviewsSerializer =
    new _$GMediaData_Media_reviewsSerializer();
Serializer<GMediaData_Media_reviews_nodes>
    _$gMediaDataMediaReviewsNodesSerializer =
    new _$GMediaData_Media_reviews_nodesSerializer();
Serializer<GMediaData_Media_mediaListEntry>
    _$gMediaDataMediaMediaListEntrySerializer =
    new _$GMediaData_Media_mediaListEntrySerializer();
Serializer<GToggleFavoriteData> _$gToggleFavoriteDataSerializer =
    new _$GToggleFavoriteDataSerializer();
Serializer<GToggleFavoriteData_ToggleFavourite>
    _$gToggleFavoriteDataToggleFavouriteSerializer =
    new _$GToggleFavoriteData_ToggleFavouriteSerializer();
Serializer<GToggleFavoriteData_ToggleFavourite_anime>
    _$gToggleFavoriteDataToggleFavouriteAnimeSerializer =
    new _$GToggleFavoriteData_ToggleFavourite_animeSerializer();
Serializer<GToggleFavoriteData_ToggleFavourite_anime_pageInfo>
    _$gToggleFavoriteDataToggleFavouriteAnimePageInfoSerializer =
    new _$GToggleFavoriteData_ToggleFavourite_anime_pageInfoSerializer();
Serializer<GToggleFavoriteData_ToggleFavourite_manga>
    _$gToggleFavoriteDataToggleFavouriteMangaSerializer =
    new _$GToggleFavoriteData_ToggleFavourite_mangaSerializer();
Serializer<GToggleFavoriteData_ToggleFavourite_manga_pageInfo>
    _$gToggleFavoriteDataToggleFavouriteMangaPageInfoSerializer =
    new _$GToggleFavoriteData_ToggleFavourite_manga_pageInfoSerializer();
Serializer<GToggleFavoriteData_ToggleFavourite_characters>
    _$gToggleFavoriteDataToggleFavouriteCharactersSerializer =
    new _$GToggleFavoriteData_ToggleFavourite_charactersSerializer();
Serializer<GToggleFavoriteData_ToggleFavourite_characters_pageInfo>
    _$gToggleFavoriteDataToggleFavouriteCharactersPageInfoSerializer =
    new _$GToggleFavoriteData_ToggleFavourite_characters_pageInfoSerializer();
Serializer<GToggleFavoriteData_ToggleFavourite_staff>
    _$gToggleFavoriteDataToggleFavouriteStaffSerializer =
    new _$GToggleFavoriteData_ToggleFavourite_staffSerializer();
Serializer<GToggleFavoriteData_ToggleFavourite_staff_pageInfo>
    _$gToggleFavoriteDataToggleFavouriteStaffPageInfoSerializer =
    new _$GToggleFavoriteData_ToggleFavourite_staff_pageInfoSerializer();
Serializer<GToggleFavoriteData_ToggleFavourite_studios>
    _$gToggleFavoriteDataToggleFavouriteStudiosSerializer =
    new _$GToggleFavoriteData_ToggleFavourite_studiosSerializer();
Serializer<GToggleFavoriteData_ToggleFavourite_studios_pageInfo>
    _$gToggleFavoriteDataToggleFavouriteStudiosPageInfoSerializer =
    new _$GToggleFavoriteData_ToggleFavourite_studios_pageInfoSerializer();

class _$GMediaDataSerializer implements StructuredSerializer<GMediaData> {
  @override
  final Iterable<Type> types = const [GMediaData, _$GMediaData];
  @override
  final String wireName = 'GMediaData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMediaData object,
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
            specifiedType: const FullType(GMediaData_Media)));
    }
    return result;
  }

  @override
  GMediaData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaDataBuilder();

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
                  specifiedType: const FullType(GMediaData_Media))!
              as GMediaData_Media);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaData_MediaSerializer
    implements StructuredSerializer<GMediaData_Media> {
  @override
  final Iterable<Type> types = const [GMediaData_Media, _$GMediaData_Media];
  @override
  final String wireName = 'GMediaData_Media';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMediaData_Media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'isFavourite',
      serializers.serialize(object.isFavourite,
          specifiedType: const FullType(bool)),
      'isFavouriteBlocked',
      serializers.serialize(object.isFavouriteBlocked,
          specifiedType: const FullType(bool)),
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
            specifiedType: const FullType(GMediaData_Media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaData_Media_coverImage)));
    }
    value = object.bannerImage;
    if (value != null) {
      result
        ..add('bannerImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favourites;
    if (value != null) {
      result
        ..add('favourites')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.averageScore;
    if (value != null) {
      result
        ..add('averageScore')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaStatus)));
    }
    value = object.season;
    if (value != null) {
      result
        ..add('season')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaSeason)));
    }
    value = object.seasonYear;
    if (value != null) {
      result
        ..add('seasonYear')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.source;
    if (value != null) {
      result
        ..add('source')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaSource)));
    }
    value = object.hashtag;
    if (value != null) {
      result
        ..add('hashtag')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.volumes;
    if (value != null) {
      result
        ..add('volumes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.episodes;
    if (value != null) {
      result
        ..add('episodes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.chapters;
    if (value != null) {
      result
        ..add('chapters')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.studios;
    if (value != null) {
      result
        ..add('studios')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaData_Media_studios)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaData_Media_startDate)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaData_Media_endDate)));
    }
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GMediaData_Media_tags)])));
    }
    value = object.relations;
    if (value != null) {
      result
        ..add('relations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaData_Media_relations)));
    }
    value = object.externalLinks;
    if (value != null) {
      result
        ..add('externalLinks')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GMediaData_Media_externalLinks)
            ])));
    }
    value = object.trailer;
    if (value != null) {
      result
        ..add('trailer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaData_Media_trailer)));
    }
    value = object.characters;
    if (value != null) {
      result
        ..add('characters')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaData_Media_characters)));
    }
    value = object.staff;
    if (value != null) {
      result
        ..add('staff')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaData_Media_staff)));
    }
    value = object.recommendations;
    if (value != null) {
      result
        ..add('recommendations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaData_Media_recommendations)));
    }
    value = object.reviews;
    if (value != null) {
      result
        ..add('reviews')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaData_Media_reviews)));
    }
    value = object.mediaListEntry;
    if (value != null) {
      result
        ..add('mediaListEntry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaData_Media_mediaListEntry)));
    }
    return result;
  }

  @override
  GMediaData_Media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_MediaBuilder();

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
                  specifiedType: const FullType(GMediaData_Media_title))!
              as GMediaData_Media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GMediaData_Media_coverImage))!
              as GMediaData_Media_coverImage);
          break;
        case 'bannerImage':
          result.bannerImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'favourites':
          result.favourites = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isFavourite':
          result.isFavourite = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isFavouriteBlocked':
          result.isFavouriteBlocked = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'averageScore':
          result.averageScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GMediaStatus))
              as _i3.GMediaStatus?;
          break;
        case 'season':
          result.season = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GMediaSeason))
              as _i3.GMediaSeason?;
          break;
        case 'seasonYear':
          result.seasonYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'source':
          result.source = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GMediaSource))
              as _i3.GMediaSource?;
          break;
        case 'hashtag':
          result.hashtag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'volumes':
          result.volumes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'episodes':
          result.episodes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'chapters':
          result.chapters = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'studios':
          result.studios.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GMediaData_Media_studios))!
              as GMediaData_Media_studios);
          break;
        case 'startDate':
          result.startDate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GMediaData_Media_startDate))!
              as GMediaData_Media_startDate);
          break;
        case 'endDate':
          result.endDate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GMediaData_Media_endDate))!
              as GMediaData_Media_endDate);
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GMediaData_Media_tags)
              ]))! as BuiltList<Object?>);
          break;
        case 'relations':
          result.relations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GMediaData_Media_relations))!
              as GMediaData_Media_relations);
          break;
        case 'externalLinks':
          result.externalLinks.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GMediaData_Media_externalLinks)
              ]))! as BuiltList<Object?>);
          break;
        case 'trailer':
          result.trailer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GMediaData_Media_trailer))!
              as GMediaData_Media_trailer);
          break;
        case 'characters':
          result.characters.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GMediaData_Media_characters))!
              as GMediaData_Media_characters);
          break;
        case 'staff':
          result.staff.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GMediaData_Media_staff))!
              as GMediaData_Media_staff);
          break;
        case 'recommendations':
          result.recommendations.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GMediaData_Media_recommendations))!
              as GMediaData_Media_recommendations);
          break;
        case 'reviews':
          result.reviews.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GMediaData_Media_reviews))!
              as GMediaData_Media_reviews);
          break;
        case 'mediaListEntry':
          result.mediaListEntry.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GMediaData_Media_mediaListEntry))!
              as GMediaData_Media_mediaListEntry);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaData_Media_titleSerializer
    implements StructuredSerializer<GMediaData_Media_title> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_title,
    _$GMediaData_Media_title
  ];
  @override
  final String wireName = 'GMediaData_Media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_title object,
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
    value = object.english;
    if (value != null) {
      result
        ..add('english')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.native;
    if (value != null) {
      result
        ..add('native')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.romaji;
    if (value != null) {
      result
        ..add('romaji')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GMediaData_Media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_titleBuilder();

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
        case 'english':
          result.english = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'native':
          result.native = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'romaji':
          result.romaji = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaData_Media_coverImageSerializer
    implements StructuredSerializer<GMediaData_Media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_coverImage,
    _$GMediaData_Media_coverImage
  ];
  @override
  final String wireName = 'GMediaData_Media_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_coverImage object,
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
  GMediaData_Media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_coverImageBuilder();

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

class _$GMediaData_Media_studiosSerializer
    implements StructuredSerializer<GMediaData_Media_studios> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_studios,
    _$GMediaData_Media_studios
  ];
  @override
  final String wireName = 'GMediaData_Media_studios';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_studios object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GMediaData_Media_studios_nodes)
            ])));
    }
    return result;
  }

  @override
  GMediaData_Media_studios deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_studiosBuilder();

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
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GMediaData_Media_studios_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaData_Media_studios_nodesSerializer
    implements StructuredSerializer<GMediaData_Media_studios_nodes> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_studios_nodes,
    _$GMediaData_Media_studios_nodes
  ];
  @override
  final String wireName = 'GMediaData_Media_studios_nodes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_studios_nodes object,
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
  GMediaData_Media_studios_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_studios_nodesBuilder();

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

class _$GMediaData_Media_startDateSerializer
    implements StructuredSerializer<GMediaData_Media_startDate> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_startDate,
    _$GMediaData_Media_startDate
  ];
  @override
  final String wireName = 'GMediaData_Media_startDate';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_startDate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GMediaData_Media_startDate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_startDateBuilder();

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
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'month':
          result.month = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaData_Media_endDateSerializer
    implements StructuredSerializer<GMediaData_Media_endDate> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_endDate,
    _$GMediaData_Media_endDate
  ];
  @override
  final String wireName = 'GMediaData_Media_endDate';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_endDate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GMediaData_Media_endDate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_endDateBuilder();

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
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'month':
          result.month = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaData_Media_tagsSerializer
    implements StructuredSerializer<GMediaData_Media_tags> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_tags,
    _$GMediaData_Media_tags
  ];
  @override
  final String wireName = 'GMediaData_Media_tags';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_tags object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rank;
    if (value != null) {
      result
        ..add('rank')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isMediaSpoiler;
    if (value != null) {
      result
        ..add('isMediaSpoiler')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GMediaData_Media_tags deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_tagsBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rank':
          result.rank = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isMediaSpoiler':
          result.isMediaSpoiler = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaData_Media_relationsSerializer
    implements StructuredSerializer<GMediaData_Media_relations> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_relations,
    _$GMediaData_Media_relations
  ];
  @override
  final String wireName = 'GMediaData_Media_relations';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_relations object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.edges;
    if (value != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GMediaData_Media_relations_edges)
            ])));
    }
    return result;
  }

  @override
  GMediaData_Media_relations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_relationsBuilder();

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
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GMediaData_Media_relations_edges)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaData_Media_relations_edgesSerializer
    implements StructuredSerializer<GMediaData_Media_relations_edges> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_relations_edges,
    _$GMediaData_Media_relations_edges
  ];
  @override
  final String wireName = 'GMediaData_Media_relations_edges';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_relations_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.relationType;
    if (value != null) {
      result
        ..add('relationType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaRelation)));
    }
    value = object.node;
    if (value != null) {
      result
        ..add('node')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GMediaData_Media_relations_edges_node)));
    }
    return result;
  }

  @override
  GMediaData_Media_relations_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_relations_edgesBuilder();

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
        case 'relationType':
          result.relationType = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GMediaRelation))
              as _i3.GMediaRelation?;
          break;
        case 'node':
          result.node.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GMediaData_Media_relations_edges_node))!
              as GMediaData_Media_relations_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaData_Media_relations_edges_nodeSerializer
    implements StructuredSerializer<GMediaData_Media_relations_edges_node> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_relations_edges_node,
    _$GMediaData_Media_relations_edges_node
  ];
  @override
  final String wireName = 'GMediaData_Media_relations_edges_node';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_relations_edges_node object,
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
            specifiedType:
                const FullType(GMediaData_Media_relations_edges_node_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaData_Media_relations_edges_node_coverImage)));
    }
    return result;
  }

  @override
  GMediaData_Media_relations_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_relations_edges_nodeBuilder();

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
                      GMediaData_Media_relations_edges_node_title))!
              as GMediaData_Media_relations_edges_node_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaData_Media_relations_edges_node_coverImage))!
              as GMediaData_Media_relations_edges_node_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaData_Media_relations_edges_node_titleSerializer
    implements
        StructuredSerializer<GMediaData_Media_relations_edges_node_title> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_relations_edges_node_title,
    _$GMediaData_Media_relations_edges_node_title
  ];
  @override
  final String wireName = 'GMediaData_Media_relations_edges_node_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaData_Media_relations_edges_node_title object,
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
  GMediaData_Media_relations_edges_node_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_relations_edges_node_titleBuilder();

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

class _$GMediaData_Media_relations_edges_node_coverImageSerializer
    implements
        StructuredSerializer<GMediaData_Media_relations_edges_node_coverImage> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_relations_edges_node_coverImage,
    _$GMediaData_Media_relations_edges_node_coverImage
  ];
  @override
  final String wireName = 'GMediaData_Media_relations_edges_node_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaData_Media_relations_edges_node_coverImage object,
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
  GMediaData_Media_relations_edges_node_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaData_Media_relations_edges_node_coverImageBuilder();

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

class _$GMediaData_Media_externalLinksSerializer
    implements StructuredSerializer<GMediaData_Media_externalLinks> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_externalLinks,
    _$GMediaData_Media_externalLinks
  ];
  @override
  final String wireName = 'GMediaData_Media_externalLinks';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_externalLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'site',
      serializers.serialize(object.site, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.color;
    if (value != null) {
      result
        ..add('color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isDisabled;
    if (value != null) {
      result
        ..add('isDisabled')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.language;
    if (value != null) {
      result
        ..add('language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GMediaData_Media_externalLinks deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_externalLinksBuilder();

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
        case 'site':
          result.site = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isDisabled':
          result.isDisabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaData_Media_trailerSerializer
    implements StructuredSerializer<GMediaData_Media_trailer> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_trailer,
    _$GMediaData_Media_trailer
  ];
  @override
  final String wireName = 'GMediaData_Media_trailer';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_trailer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.site;
    if (value != null) {
      result
        ..add('site')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumbnail;
    if (value != null) {
      result
        ..add('thumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GMediaData_Media_trailer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_trailerBuilder();

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
        case 'site':
          result.site = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaData_Media_charactersSerializer
    implements StructuredSerializer<GMediaData_Media_characters> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_characters,
    _$GMediaData_Media_characters
  ];
  @override
  final String wireName = 'GMediaData_Media_characters';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_characters object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GMediaData_Media_characters_nodes)
            ])));
    }
    return result;
  }

  @override
  GMediaData_Media_characters deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_charactersBuilder();

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
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GMediaData_Media_characters_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaData_Media_characters_nodesSerializer
    implements StructuredSerializer<GMediaData_Media_characters_nodes> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_characters_nodes,
    _$GMediaData_Media_characters_nodes
  ];
  @override
  final String wireName = 'GMediaData_Media_characters_nodes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_characters_nodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GMediaData_Media_characters_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_characters_nodesBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GMediaData_Media_staffSerializer
    implements StructuredSerializer<GMediaData_Media_staff> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_staff,
    _$GMediaData_Media_staff
  ];
  @override
  final String wireName = 'GMediaData_Media_staff';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_staff object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GMediaData_Media_staff_nodes)
            ])));
    }
    return result;
  }

  @override
  GMediaData_Media_staff deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_staffBuilder();

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
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GMediaData_Media_staff_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaData_Media_staff_nodesSerializer
    implements StructuredSerializer<GMediaData_Media_staff_nodes> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_staff_nodes,
    _$GMediaData_Media_staff_nodes
  ];
  @override
  final String wireName = 'GMediaData_Media_staff_nodes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_staff_nodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GMediaData_Media_staff_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_staff_nodesBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GMediaData_Media_recommendationsSerializer
    implements StructuredSerializer<GMediaData_Media_recommendations> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_recommendations,
    _$GMediaData_Media_recommendations
  ];
  @override
  final String wireName = 'GMediaData_Media_recommendations';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_recommendations object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GMediaData_Media_recommendations_nodes)
            ])));
    }
    return result;
  }

  @override
  GMediaData_Media_recommendations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_recommendationsBuilder();

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
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GMediaData_Media_recommendations_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaData_Media_recommendations_nodesSerializer
    implements StructuredSerializer<GMediaData_Media_recommendations_nodes> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_recommendations_nodes,
    _$GMediaData_Media_recommendations_nodes
  ];
  @override
  final String wireName = 'GMediaData_Media_recommendations_nodes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_recommendations_nodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GMediaData_Media_recommendations_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_recommendations_nodesBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GMediaData_Media_reviewsSerializer
    implements StructuredSerializer<GMediaData_Media_reviews> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_reviews,
    _$GMediaData_Media_reviews
  ];
  @override
  final String wireName = 'GMediaData_Media_reviews';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_reviews object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GMediaData_Media_reviews_nodes)
            ])));
    }
    return result;
  }

  @override
  GMediaData_Media_reviews deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_reviewsBuilder();

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
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GMediaData_Media_reviews_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaData_Media_reviews_nodesSerializer
    implements StructuredSerializer<GMediaData_Media_reviews_nodes> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_reviews_nodes,
    _$GMediaData_Media_reviews_nodes
  ];
  @override
  final String wireName = 'GMediaData_Media_reviews_nodes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_reviews_nodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GMediaData_Media_reviews_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_reviews_nodesBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GMediaData_Media_mediaListEntrySerializer
    implements StructuredSerializer<GMediaData_Media_mediaListEntry> {
  @override
  final Iterable<Type> types = const [
    GMediaData_Media_mediaListEntry,
    _$GMediaData_Media_mediaListEntry
  ];
  @override
  final String wireName = 'GMediaData_Media_mediaListEntry';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaData_Media_mediaListEntry object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaListStatus)));
    }
    return result;
  }

  @override
  GMediaData_Media_mediaListEntry deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaData_Media_mediaListEntryBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GMediaListStatus))
              as _i3.GMediaListStatus?;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavoriteDataSerializer
    implements StructuredSerializer<GToggleFavoriteData> {
  @override
  final Iterable<Type> types = const [
    GToggleFavoriteData,
    _$GToggleFavoriteData
  ];
  @override
  final String wireName = 'GToggleFavoriteData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GToggleFavoriteData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.ToggleFavourite;
    if (value != null) {
      result
        ..add('ToggleFavourite')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GToggleFavoriteData_ToggleFavourite)));
    }
    return result;
  }

  @override
  GToggleFavoriteData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleFavoriteDataBuilder();

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
        case 'ToggleFavourite':
          result.ToggleFavourite.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GToggleFavoriteData_ToggleFavourite))!
              as GToggleFavoriteData_ToggleFavourite);
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavoriteData_ToggleFavouriteSerializer
    implements StructuredSerializer<GToggleFavoriteData_ToggleFavourite> {
  @override
  final Iterable<Type> types = const [
    GToggleFavoriteData_ToggleFavourite,
    _$GToggleFavoriteData_ToggleFavourite
  ];
  @override
  final String wireName = 'GToggleFavoriteData_ToggleFavourite';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GToggleFavoriteData_ToggleFavourite object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.anime;
    if (value != null) {
      result
        ..add('anime')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GToggleFavoriteData_ToggleFavourite_anime)));
    }
    value = object.manga;
    if (value != null) {
      result
        ..add('manga')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GToggleFavoriteData_ToggleFavourite_manga)));
    }
    value = object.characters;
    if (value != null) {
      result
        ..add('characters')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GToggleFavoriteData_ToggleFavourite_characters)));
    }
    value = object.staff;
    if (value != null) {
      result
        ..add('staff')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GToggleFavoriteData_ToggleFavourite_staff)));
    }
    value = object.studios;
    if (value != null) {
      result
        ..add('studios')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GToggleFavoriteData_ToggleFavourite_studios)));
    }
    return result;
  }

  @override
  GToggleFavoriteData_ToggleFavourite deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleFavoriteData_ToggleFavouriteBuilder();

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
        case 'anime':
          result.anime.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GToggleFavoriteData_ToggleFavourite_anime))!
              as GToggleFavoriteData_ToggleFavourite_anime);
          break;
        case 'manga':
          result.manga.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GToggleFavoriteData_ToggleFavourite_manga))!
              as GToggleFavoriteData_ToggleFavourite_manga);
          break;
        case 'characters':
          result.characters.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GToggleFavoriteData_ToggleFavourite_characters))!
              as GToggleFavoriteData_ToggleFavourite_characters);
          break;
        case 'staff':
          result.staff.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GToggleFavoriteData_ToggleFavourite_staff))!
              as GToggleFavoriteData_ToggleFavourite_staff);
          break;
        case 'studios':
          result.studios.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GToggleFavoriteData_ToggleFavourite_studios))!
              as GToggleFavoriteData_ToggleFavourite_studios);
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavoriteData_ToggleFavourite_animeSerializer
    implements StructuredSerializer<GToggleFavoriteData_ToggleFavourite_anime> {
  @override
  final Iterable<Type> types = const [
    GToggleFavoriteData_ToggleFavourite_anime,
    _$GToggleFavoriteData_ToggleFavourite_anime
  ];
  @override
  final String wireName = 'GToggleFavoriteData_ToggleFavourite_anime';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GToggleFavoriteData_ToggleFavourite_anime object,
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
            specifiedType: const FullType(
                GToggleFavoriteData_ToggleFavourite_anime_pageInfo)));
    }
    return result;
  }

  @override
  GToggleFavoriteData_ToggleFavourite_anime deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleFavoriteData_ToggleFavourite_animeBuilder();

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
                  specifiedType: const FullType(
                      GToggleFavoriteData_ToggleFavourite_anime_pageInfo))!
              as GToggleFavoriteData_ToggleFavourite_anime_pageInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavoriteData_ToggleFavourite_anime_pageInfoSerializer
    implements
        StructuredSerializer<
            GToggleFavoriteData_ToggleFavourite_anime_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GToggleFavoriteData_ToggleFavourite_anime_pageInfo,
    _$GToggleFavoriteData_ToggleFavourite_anime_pageInfo
  ];
  @override
  final String wireName = 'GToggleFavoriteData_ToggleFavourite_anime_pageInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleFavoriteData_ToggleFavourite_anime_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GToggleFavoriteData_ToggleFavourite_anime_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GToggleFavoriteData_ToggleFavourite_anime_pageInfoBuilder();

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
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavoriteData_ToggleFavourite_mangaSerializer
    implements StructuredSerializer<GToggleFavoriteData_ToggleFavourite_manga> {
  @override
  final Iterable<Type> types = const [
    GToggleFavoriteData_ToggleFavourite_manga,
    _$GToggleFavoriteData_ToggleFavourite_manga
  ];
  @override
  final String wireName = 'GToggleFavoriteData_ToggleFavourite_manga';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GToggleFavoriteData_ToggleFavourite_manga object,
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
            specifiedType: const FullType(
                GToggleFavoriteData_ToggleFavourite_manga_pageInfo)));
    }
    return result;
  }

  @override
  GToggleFavoriteData_ToggleFavourite_manga deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleFavoriteData_ToggleFavourite_mangaBuilder();

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
                  specifiedType: const FullType(
                      GToggleFavoriteData_ToggleFavourite_manga_pageInfo))!
              as GToggleFavoriteData_ToggleFavourite_manga_pageInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavoriteData_ToggleFavourite_manga_pageInfoSerializer
    implements
        StructuredSerializer<
            GToggleFavoriteData_ToggleFavourite_manga_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GToggleFavoriteData_ToggleFavourite_manga_pageInfo,
    _$GToggleFavoriteData_ToggleFavourite_manga_pageInfo
  ];
  @override
  final String wireName = 'GToggleFavoriteData_ToggleFavourite_manga_pageInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleFavoriteData_ToggleFavourite_manga_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GToggleFavoriteData_ToggleFavourite_manga_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GToggleFavoriteData_ToggleFavourite_manga_pageInfoBuilder();

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
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavoriteData_ToggleFavourite_charactersSerializer
    implements
        StructuredSerializer<GToggleFavoriteData_ToggleFavourite_characters> {
  @override
  final Iterable<Type> types = const [
    GToggleFavoriteData_ToggleFavourite_characters,
    _$GToggleFavoriteData_ToggleFavourite_characters
  ];
  @override
  final String wireName = 'GToggleFavoriteData_ToggleFavourite_characters';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleFavoriteData_ToggleFavourite_characters object,
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
            specifiedType: const FullType(
                GToggleFavoriteData_ToggleFavourite_characters_pageInfo)));
    }
    return result;
  }

  @override
  GToggleFavoriteData_ToggleFavourite_characters deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleFavoriteData_ToggleFavourite_charactersBuilder();

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
                  specifiedType: const FullType(
                      GToggleFavoriteData_ToggleFavourite_characters_pageInfo))!
              as GToggleFavoriteData_ToggleFavourite_characters_pageInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavoriteData_ToggleFavourite_characters_pageInfoSerializer
    implements
        StructuredSerializer<
            GToggleFavoriteData_ToggleFavourite_characters_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GToggleFavoriteData_ToggleFavourite_characters_pageInfo,
    _$GToggleFavoriteData_ToggleFavourite_characters_pageInfo
  ];
  @override
  final String wireName =
      'GToggleFavoriteData_ToggleFavourite_characters_pageInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleFavoriteData_ToggleFavourite_characters_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GToggleFavoriteData_ToggleFavourite_characters_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GToggleFavoriteData_ToggleFavourite_characters_pageInfoBuilder();

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
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavoriteData_ToggleFavourite_staffSerializer
    implements StructuredSerializer<GToggleFavoriteData_ToggleFavourite_staff> {
  @override
  final Iterable<Type> types = const [
    GToggleFavoriteData_ToggleFavourite_staff,
    _$GToggleFavoriteData_ToggleFavourite_staff
  ];
  @override
  final String wireName = 'GToggleFavoriteData_ToggleFavourite_staff';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GToggleFavoriteData_ToggleFavourite_staff object,
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
            specifiedType: const FullType(
                GToggleFavoriteData_ToggleFavourite_staff_pageInfo)));
    }
    return result;
  }

  @override
  GToggleFavoriteData_ToggleFavourite_staff deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleFavoriteData_ToggleFavourite_staffBuilder();

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
                  specifiedType: const FullType(
                      GToggleFavoriteData_ToggleFavourite_staff_pageInfo))!
              as GToggleFavoriteData_ToggleFavourite_staff_pageInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavoriteData_ToggleFavourite_staff_pageInfoSerializer
    implements
        StructuredSerializer<
            GToggleFavoriteData_ToggleFavourite_staff_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GToggleFavoriteData_ToggleFavourite_staff_pageInfo,
    _$GToggleFavoriteData_ToggleFavourite_staff_pageInfo
  ];
  @override
  final String wireName = 'GToggleFavoriteData_ToggleFavourite_staff_pageInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleFavoriteData_ToggleFavourite_staff_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GToggleFavoriteData_ToggleFavourite_staff_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GToggleFavoriteData_ToggleFavourite_staff_pageInfoBuilder();

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
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavoriteData_ToggleFavourite_studiosSerializer
    implements
        StructuredSerializer<GToggleFavoriteData_ToggleFavourite_studios> {
  @override
  final Iterable<Type> types = const [
    GToggleFavoriteData_ToggleFavourite_studios,
    _$GToggleFavoriteData_ToggleFavourite_studios
  ];
  @override
  final String wireName = 'GToggleFavoriteData_ToggleFavourite_studios';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleFavoriteData_ToggleFavourite_studios object,
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
            specifiedType: const FullType(
                GToggleFavoriteData_ToggleFavourite_studios_pageInfo)));
    }
    return result;
  }

  @override
  GToggleFavoriteData_ToggleFavourite_studios deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleFavoriteData_ToggleFavourite_studiosBuilder();

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
                  specifiedType: const FullType(
                      GToggleFavoriteData_ToggleFavourite_studios_pageInfo))!
              as GToggleFavoriteData_ToggleFavourite_studios_pageInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavoriteData_ToggleFavourite_studios_pageInfoSerializer
    implements
        StructuredSerializer<
            GToggleFavoriteData_ToggleFavourite_studios_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GToggleFavoriteData_ToggleFavourite_studios_pageInfo,
    _$GToggleFavoriteData_ToggleFavourite_studios_pageInfo
  ];
  @override
  final String wireName =
      'GToggleFavoriteData_ToggleFavourite_studios_pageInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleFavoriteData_ToggleFavourite_studios_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GToggleFavoriteData_ToggleFavourite_studios_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GToggleFavoriteData_ToggleFavourite_studios_pageInfoBuilder();

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
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaData extends GMediaData {
  @override
  final String G__typename;
  @override
  final GMediaData_Media? Media;

  factory _$GMediaData([void Function(GMediaDataBuilder)? updates]) =>
      (new GMediaDataBuilder()..update(updates))._build();

  _$GMediaData._({required this.G__typename, this.Media}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData', 'G__typename');
  }

  @override
  GMediaData rebuild(void Function(GMediaDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaDataBuilder toBuilder() => new GMediaDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData &&
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
    return (newBuiltValueToStringHelper(r'GMediaData')
          ..add('G__typename', G__typename)
          ..add('Media', Media))
        .toString();
  }
}

class GMediaDataBuilder implements Builder<GMediaData, GMediaDataBuilder> {
  _$GMediaData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMediaData_MediaBuilder? _Media;
  GMediaData_MediaBuilder get Media =>
      _$this._Media ??= new GMediaData_MediaBuilder();
  set Media(GMediaData_MediaBuilder? Media) => _$this._Media = Media;

  GMediaDataBuilder() {
    GMediaData._initializeBuilder(this);
  }

  GMediaDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Media = $v.Media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData;
  }

  @override
  void update(void Function(GMediaDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData build() => _build();

  _$GMediaData _build() {
    _$GMediaData _$result;
    try {
      _$result = _$v ??
          new _$GMediaData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaData', 'G__typename'),
              Media: _Media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Media';
        _Media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media extends GMediaData_Media {
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
  final GMediaData_Media_title? title;
  @override
  final GMediaData_Media_coverImage? coverImage;
  @override
  final String? bannerImage;
  @override
  final int? favourites;
  @override
  final bool isFavourite;
  @override
  final bool isFavouriteBlocked;
  @override
  final int? averageScore;
  @override
  final int? duration;
  @override
  final _i3.GMediaStatus? status;
  @override
  final _i3.GMediaSeason? season;
  @override
  final int? seasonYear;
  @override
  final _i3.GMediaSource? source;
  @override
  final String? hashtag;
  @override
  final int? volumes;
  @override
  final int? episodes;
  @override
  final int? chapters;
  @override
  final GMediaData_Media_studios? studios;
  @override
  final GMediaData_Media_startDate? startDate;
  @override
  final GMediaData_Media_endDate? endDate;
  @override
  final BuiltList<GMediaData_Media_tags?>? tags;
  @override
  final GMediaData_Media_relations? relations;
  @override
  final BuiltList<GMediaData_Media_externalLinks?>? externalLinks;
  @override
  final GMediaData_Media_trailer? trailer;
  @override
  final GMediaData_Media_characters? characters;
  @override
  final GMediaData_Media_staff? staff;
  @override
  final GMediaData_Media_recommendations? recommendations;
  @override
  final GMediaData_Media_reviews? reviews;
  @override
  final GMediaData_Media_mediaListEntry? mediaListEntry;

  factory _$GMediaData_Media(
          [void Function(GMediaData_MediaBuilder)? updates]) =>
      (new GMediaData_MediaBuilder()..update(updates))._build();

  _$GMediaData_Media._(
      {required this.G__typename,
      required this.id,
      this.type,
      this.isAdult,
      this.genres,
      this.format,
      this.description,
      this.title,
      this.coverImage,
      this.bannerImage,
      this.favourites,
      required this.isFavourite,
      required this.isFavouriteBlocked,
      this.averageScore,
      this.duration,
      this.status,
      this.season,
      this.seasonYear,
      this.source,
      this.hashtag,
      this.volumes,
      this.episodes,
      this.chapters,
      this.studios,
      this.startDate,
      this.endDate,
      this.tags,
      this.relations,
      this.externalLinks,
      this.trailer,
      this.characters,
      this.staff,
      this.recommendations,
      this.reviews,
      this.mediaListEntry})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GMediaData_Media', 'id');
    BuiltValueNullFieldError.checkNotNull(
        isFavourite, r'GMediaData_Media', 'isFavourite');
    BuiltValueNullFieldError.checkNotNull(
        isFavouriteBlocked, r'GMediaData_Media', 'isFavouriteBlocked');
  }

  @override
  GMediaData_Media rebuild(void Function(GMediaData_MediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_MediaBuilder toBuilder() =>
      new GMediaData_MediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        isAdult == other.isAdult &&
        genres == other.genres &&
        format == other.format &&
        description == other.description &&
        title == other.title &&
        coverImage == other.coverImage &&
        bannerImage == other.bannerImage &&
        favourites == other.favourites &&
        isFavourite == other.isFavourite &&
        isFavouriteBlocked == other.isFavouriteBlocked &&
        averageScore == other.averageScore &&
        duration == other.duration &&
        status == other.status &&
        season == other.season &&
        seasonYear == other.seasonYear &&
        source == other.source &&
        hashtag == other.hashtag &&
        volumes == other.volumes &&
        episodes == other.episodes &&
        chapters == other.chapters &&
        studios == other.studios &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        tags == other.tags &&
        relations == other.relations &&
        externalLinks == other.externalLinks &&
        trailer == other.trailer &&
        characters == other.characters &&
        staff == other.staff &&
        recommendations == other.recommendations &&
        reviews == other.reviews &&
        mediaListEntry == other.mediaListEntry;
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
    _$hash = $jc(_$hash, bannerImage.hashCode);
    _$hash = $jc(_$hash, favourites.hashCode);
    _$hash = $jc(_$hash, isFavourite.hashCode);
    _$hash = $jc(_$hash, isFavouriteBlocked.hashCode);
    _$hash = $jc(_$hash, averageScore.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, season.hashCode);
    _$hash = $jc(_$hash, seasonYear.hashCode);
    _$hash = $jc(_$hash, source.hashCode);
    _$hash = $jc(_$hash, hashtag.hashCode);
    _$hash = $jc(_$hash, volumes.hashCode);
    _$hash = $jc(_$hash, episodes.hashCode);
    _$hash = $jc(_$hash, chapters.hashCode);
    _$hash = $jc(_$hash, studios.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, relations.hashCode);
    _$hash = $jc(_$hash, externalLinks.hashCode);
    _$hash = $jc(_$hash, trailer.hashCode);
    _$hash = $jc(_$hash, characters.hashCode);
    _$hash = $jc(_$hash, staff.hashCode);
    _$hash = $jc(_$hash, recommendations.hashCode);
    _$hash = $jc(_$hash, reviews.hashCode);
    _$hash = $jc(_$hash, mediaListEntry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaData_Media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('isAdult', isAdult)
          ..add('genres', genres)
          ..add('format', format)
          ..add('description', description)
          ..add('title', title)
          ..add('coverImage', coverImage)
          ..add('bannerImage', bannerImage)
          ..add('favourites', favourites)
          ..add('isFavourite', isFavourite)
          ..add('isFavouriteBlocked', isFavouriteBlocked)
          ..add('averageScore', averageScore)
          ..add('duration', duration)
          ..add('status', status)
          ..add('season', season)
          ..add('seasonYear', seasonYear)
          ..add('source', source)
          ..add('hashtag', hashtag)
          ..add('volumes', volumes)
          ..add('episodes', episodes)
          ..add('chapters', chapters)
          ..add('studios', studios)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('tags', tags)
          ..add('relations', relations)
          ..add('externalLinks', externalLinks)
          ..add('trailer', trailer)
          ..add('characters', characters)
          ..add('staff', staff)
          ..add('recommendations', recommendations)
          ..add('reviews', reviews)
          ..add('mediaListEntry', mediaListEntry))
        .toString();
  }
}

class GMediaData_MediaBuilder
    implements Builder<GMediaData_Media, GMediaData_MediaBuilder> {
  _$GMediaData_Media? _$v;

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

  GMediaData_Media_titleBuilder? _title;
  GMediaData_Media_titleBuilder get title =>
      _$this._title ??= new GMediaData_Media_titleBuilder();
  set title(GMediaData_Media_titleBuilder? title) => _$this._title = title;

  GMediaData_Media_coverImageBuilder? _coverImage;
  GMediaData_Media_coverImageBuilder get coverImage =>
      _$this._coverImage ??= new GMediaData_Media_coverImageBuilder();
  set coverImage(GMediaData_Media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  String? _bannerImage;
  String? get bannerImage => _$this._bannerImage;
  set bannerImage(String? bannerImage) => _$this._bannerImage = bannerImage;

  int? _favourites;
  int? get favourites => _$this._favourites;
  set favourites(int? favourites) => _$this._favourites = favourites;

  bool? _isFavourite;
  bool? get isFavourite => _$this._isFavourite;
  set isFavourite(bool? isFavourite) => _$this._isFavourite = isFavourite;

  bool? _isFavouriteBlocked;
  bool? get isFavouriteBlocked => _$this._isFavouriteBlocked;
  set isFavouriteBlocked(bool? isFavouriteBlocked) =>
      _$this._isFavouriteBlocked = isFavouriteBlocked;

  int? _averageScore;
  int? get averageScore => _$this._averageScore;
  set averageScore(int? averageScore) => _$this._averageScore = averageScore;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  _i3.GMediaStatus? _status;
  _i3.GMediaStatus? get status => _$this._status;
  set status(_i3.GMediaStatus? status) => _$this._status = status;

  _i3.GMediaSeason? _season;
  _i3.GMediaSeason? get season => _$this._season;
  set season(_i3.GMediaSeason? season) => _$this._season = season;

  int? _seasonYear;
  int? get seasonYear => _$this._seasonYear;
  set seasonYear(int? seasonYear) => _$this._seasonYear = seasonYear;

  _i3.GMediaSource? _source;
  _i3.GMediaSource? get source => _$this._source;
  set source(_i3.GMediaSource? source) => _$this._source = source;

  String? _hashtag;
  String? get hashtag => _$this._hashtag;
  set hashtag(String? hashtag) => _$this._hashtag = hashtag;

  int? _volumes;
  int? get volumes => _$this._volumes;
  set volumes(int? volumes) => _$this._volumes = volumes;

  int? _episodes;
  int? get episodes => _$this._episodes;
  set episodes(int? episodes) => _$this._episodes = episodes;

  int? _chapters;
  int? get chapters => _$this._chapters;
  set chapters(int? chapters) => _$this._chapters = chapters;

  GMediaData_Media_studiosBuilder? _studios;
  GMediaData_Media_studiosBuilder get studios =>
      _$this._studios ??= new GMediaData_Media_studiosBuilder();
  set studios(GMediaData_Media_studiosBuilder? studios) =>
      _$this._studios = studios;

  GMediaData_Media_startDateBuilder? _startDate;
  GMediaData_Media_startDateBuilder get startDate =>
      _$this._startDate ??= new GMediaData_Media_startDateBuilder();
  set startDate(GMediaData_Media_startDateBuilder? startDate) =>
      _$this._startDate = startDate;

  GMediaData_Media_endDateBuilder? _endDate;
  GMediaData_Media_endDateBuilder get endDate =>
      _$this._endDate ??= new GMediaData_Media_endDateBuilder();
  set endDate(GMediaData_Media_endDateBuilder? endDate) =>
      _$this._endDate = endDate;

  ListBuilder<GMediaData_Media_tags?>? _tags;
  ListBuilder<GMediaData_Media_tags?> get tags =>
      _$this._tags ??= new ListBuilder<GMediaData_Media_tags?>();
  set tags(ListBuilder<GMediaData_Media_tags?>? tags) => _$this._tags = tags;

  GMediaData_Media_relationsBuilder? _relations;
  GMediaData_Media_relationsBuilder get relations =>
      _$this._relations ??= new GMediaData_Media_relationsBuilder();
  set relations(GMediaData_Media_relationsBuilder? relations) =>
      _$this._relations = relations;

  ListBuilder<GMediaData_Media_externalLinks?>? _externalLinks;
  ListBuilder<GMediaData_Media_externalLinks?> get externalLinks =>
      _$this._externalLinks ??=
          new ListBuilder<GMediaData_Media_externalLinks?>();
  set externalLinks(
          ListBuilder<GMediaData_Media_externalLinks?>? externalLinks) =>
      _$this._externalLinks = externalLinks;

  GMediaData_Media_trailerBuilder? _trailer;
  GMediaData_Media_trailerBuilder get trailer =>
      _$this._trailer ??= new GMediaData_Media_trailerBuilder();
  set trailer(GMediaData_Media_trailerBuilder? trailer) =>
      _$this._trailer = trailer;

  GMediaData_Media_charactersBuilder? _characters;
  GMediaData_Media_charactersBuilder get characters =>
      _$this._characters ??= new GMediaData_Media_charactersBuilder();
  set characters(GMediaData_Media_charactersBuilder? characters) =>
      _$this._characters = characters;

  GMediaData_Media_staffBuilder? _staff;
  GMediaData_Media_staffBuilder get staff =>
      _$this._staff ??= new GMediaData_Media_staffBuilder();
  set staff(GMediaData_Media_staffBuilder? staff) => _$this._staff = staff;

  GMediaData_Media_recommendationsBuilder? _recommendations;
  GMediaData_Media_recommendationsBuilder get recommendations =>
      _$this._recommendations ??= new GMediaData_Media_recommendationsBuilder();
  set recommendations(
          GMediaData_Media_recommendationsBuilder? recommendations) =>
      _$this._recommendations = recommendations;

  GMediaData_Media_reviewsBuilder? _reviews;
  GMediaData_Media_reviewsBuilder get reviews =>
      _$this._reviews ??= new GMediaData_Media_reviewsBuilder();
  set reviews(GMediaData_Media_reviewsBuilder? reviews) =>
      _$this._reviews = reviews;

  GMediaData_Media_mediaListEntryBuilder? _mediaListEntry;
  GMediaData_Media_mediaListEntryBuilder get mediaListEntry =>
      _$this._mediaListEntry ??= new GMediaData_Media_mediaListEntryBuilder();
  set mediaListEntry(GMediaData_Media_mediaListEntryBuilder? mediaListEntry) =>
      _$this._mediaListEntry = mediaListEntry;

  GMediaData_MediaBuilder() {
    GMediaData_Media._initializeBuilder(this);
  }

  GMediaData_MediaBuilder get _$this {
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
      _bannerImage = $v.bannerImage;
      _favourites = $v.favourites;
      _isFavourite = $v.isFavourite;
      _isFavouriteBlocked = $v.isFavouriteBlocked;
      _averageScore = $v.averageScore;
      _duration = $v.duration;
      _status = $v.status;
      _season = $v.season;
      _seasonYear = $v.seasonYear;
      _source = $v.source;
      _hashtag = $v.hashtag;
      _volumes = $v.volumes;
      _episodes = $v.episodes;
      _chapters = $v.chapters;
      _studios = $v.studios?.toBuilder();
      _startDate = $v.startDate?.toBuilder();
      _endDate = $v.endDate?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _relations = $v.relations?.toBuilder();
      _externalLinks = $v.externalLinks?.toBuilder();
      _trailer = $v.trailer?.toBuilder();
      _characters = $v.characters?.toBuilder();
      _staff = $v.staff?.toBuilder();
      _recommendations = $v.recommendations?.toBuilder();
      _reviews = $v.reviews?.toBuilder();
      _mediaListEntry = $v.mediaListEntry?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media;
  }

  @override
  void update(void Function(GMediaData_MediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media build() => _build();

  _$GMediaData_Media _build() {
    _$GMediaData_Media _$result;
    try {
      _$result = _$v ??
          new _$GMediaData_Media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaData_Media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaData_Media', 'id'),
              type: type,
              isAdult: isAdult,
              genres: _genres?.build(),
              format: format,
              description: description,
              title: _title?.build(),
              coverImage: _coverImage?.build(),
              bannerImage: bannerImage,
              favourites: favourites,
              isFavourite: BuiltValueNullFieldError.checkNotNull(
                  isFavourite, r'GMediaData_Media', 'isFavourite'),
              isFavouriteBlocked: BuiltValueNullFieldError.checkNotNull(
                  isFavouriteBlocked,
                  r'GMediaData_Media',
                  'isFavouriteBlocked'),
              averageScore: averageScore,
              duration: duration,
              status: status,
              season: season,
              seasonYear: seasonYear,
              source: source,
              hashtag: hashtag,
              volumes: volumes,
              episodes: episodes,
              chapters: chapters,
              studios: _studios?.build(),
              startDate: _startDate?.build(),
              endDate: _endDate?.build(),
              tags: _tags?.build(),
              relations: _relations?.build(),
              externalLinks: _externalLinks?.build(),
              trailer: _trailer?.build(),
              characters: _characters?.build(),
              staff: _staff?.build(),
              recommendations: _recommendations?.build(),
              reviews: _reviews?.build(),
              mediaListEntry: _mediaListEntry?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        _genres?.build();

        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();

        _$failedField = 'studios';
        _studios?.build();
        _$failedField = 'startDate';
        _startDate?.build();
        _$failedField = 'endDate';
        _endDate?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'relations';
        _relations?.build();
        _$failedField = 'externalLinks';
        _externalLinks?.build();
        _$failedField = 'trailer';
        _trailer?.build();
        _$failedField = 'characters';
        _characters?.build();
        _$failedField = 'staff';
        _staff?.build();
        _$failedField = 'recommendations';
        _recommendations?.build();
        _$failedField = 'reviews';
        _reviews?.build();
        _$failedField = 'mediaListEntry';
        _mediaListEntry?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaData_Media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_title extends GMediaData_Media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;
  @override
  final String? english;
  @override
  final String? native;
  @override
  final String? romaji;

  factory _$GMediaData_Media_title(
          [void Function(GMediaData_Media_titleBuilder)? updates]) =>
      (new GMediaData_Media_titleBuilder()..update(updates))._build();

  _$GMediaData_Media_title._(
      {required this.G__typename,
      this.userPreferred,
      this.english,
      this.native,
      this.romaji})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_title', 'G__typename');
  }

  @override
  GMediaData_Media_title rebuild(
          void Function(GMediaData_Media_titleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_titleBuilder toBuilder() =>
      new GMediaData_Media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_title &&
        G__typename == other.G__typename &&
        userPreferred == other.userPreferred &&
        english == other.english &&
        native == other.native &&
        romaji == other.romaji;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userPreferred.hashCode);
    _$hash = $jc(_$hash, english.hashCode);
    _$hash = $jc(_$hash, native.hashCode);
    _$hash = $jc(_$hash, romaji.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaData_Media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred)
          ..add('english', english)
          ..add('native', native)
          ..add('romaji', romaji))
        .toString();
  }
}

class GMediaData_Media_titleBuilder
    implements Builder<GMediaData_Media_title, GMediaData_Media_titleBuilder> {
  _$GMediaData_Media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  String? _english;
  String? get english => _$this._english;
  set english(String? english) => _$this._english = english;

  String? _native;
  String? get native => _$this._native;
  set native(String? native) => _$this._native = native;

  String? _romaji;
  String? get romaji => _$this._romaji;
  set romaji(String? romaji) => _$this._romaji = romaji;

  GMediaData_Media_titleBuilder() {
    GMediaData_Media_title._initializeBuilder(this);
  }

  GMediaData_Media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _english = $v.english;
      _native = $v.native;
      _romaji = $v.romaji;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_title;
  }

  @override
  void update(void Function(GMediaData_Media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_title build() => _build();

  _$GMediaData_Media_title _build() {
    final _$result = _$v ??
        new _$GMediaData_Media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMediaData_Media_title', 'G__typename'),
            userPreferred: userPreferred,
            english: english,
            native: native,
            romaji: romaji);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_coverImage extends GMediaData_Media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GMediaData_Media_coverImage(
          [void Function(GMediaData_Media_coverImageBuilder)? updates]) =>
      (new GMediaData_Media_coverImageBuilder()..update(updates))._build();

  _$GMediaData_Media_coverImage._({required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_coverImage', 'G__typename');
  }

  @override
  GMediaData_Media_coverImage rebuild(
          void Function(GMediaData_Media_coverImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_coverImageBuilder toBuilder() =>
      new GMediaData_Media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_coverImage &&
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
    return (newBuiltValueToStringHelper(r'GMediaData_Media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GMediaData_Media_coverImageBuilder
    implements
        Builder<GMediaData_Media_coverImage,
            GMediaData_Media_coverImageBuilder> {
  _$GMediaData_Media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GMediaData_Media_coverImageBuilder() {
    GMediaData_Media_coverImage._initializeBuilder(this);
  }

  GMediaData_Media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_coverImage;
  }

  @override
  void update(void Function(GMediaData_Media_coverImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_coverImage build() => _build();

  _$GMediaData_Media_coverImage _build() {
    final _$result = _$v ??
        new _$GMediaData_Media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMediaData_Media_coverImage', 'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_studios extends GMediaData_Media_studios {
  @override
  final String G__typename;
  @override
  final BuiltList<GMediaData_Media_studios_nodes?>? nodes;

  factory _$GMediaData_Media_studios(
          [void Function(GMediaData_Media_studiosBuilder)? updates]) =>
      (new GMediaData_Media_studiosBuilder()..update(updates))._build();

  _$GMediaData_Media_studios._({required this.G__typename, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_studios', 'G__typename');
  }

  @override
  GMediaData_Media_studios rebuild(
          void Function(GMediaData_Media_studiosBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_studiosBuilder toBuilder() =>
      new GMediaData_Media_studiosBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_studios &&
        G__typename == other.G__typename &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaData_Media_studios')
          ..add('G__typename', G__typename)
          ..add('nodes', nodes))
        .toString();
  }
}

class GMediaData_Media_studiosBuilder
    implements
        Builder<GMediaData_Media_studios, GMediaData_Media_studiosBuilder> {
  _$GMediaData_Media_studios? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GMediaData_Media_studios_nodes?>? _nodes;
  ListBuilder<GMediaData_Media_studios_nodes?> get nodes =>
      _$this._nodes ??= new ListBuilder<GMediaData_Media_studios_nodes?>();
  set nodes(ListBuilder<GMediaData_Media_studios_nodes?>? nodes) =>
      _$this._nodes = nodes;

  GMediaData_Media_studiosBuilder() {
    GMediaData_Media_studios._initializeBuilder(this);
  }

  GMediaData_Media_studiosBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_studios other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_studios;
  }

  @override
  void update(void Function(GMediaData_Media_studiosBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_studios build() => _build();

  _$GMediaData_Media_studios _build() {
    _$GMediaData_Media_studios _$result;
    try {
      _$result = _$v ??
          new _$GMediaData_Media_studios._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaData_Media_studios', 'G__typename'),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaData_Media_studios', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_studios_nodes extends GMediaData_Media_studios_nodes {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;

  factory _$GMediaData_Media_studios_nodes(
          [void Function(GMediaData_Media_studios_nodesBuilder)? updates]) =>
      (new GMediaData_Media_studios_nodesBuilder()..update(updates))._build();

  _$GMediaData_Media_studios_nodes._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_studios_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaData_Media_studios_nodes', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GMediaData_Media_studios_nodes', 'name');
  }

  @override
  GMediaData_Media_studios_nodes rebuild(
          void Function(GMediaData_Media_studios_nodesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_studios_nodesBuilder toBuilder() =>
      new GMediaData_Media_studios_nodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_studios_nodes &&
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
    return (newBuiltValueToStringHelper(r'GMediaData_Media_studios_nodes')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GMediaData_Media_studios_nodesBuilder
    implements
        Builder<GMediaData_Media_studios_nodes,
            GMediaData_Media_studios_nodesBuilder> {
  _$GMediaData_Media_studios_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GMediaData_Media_studios_nodesBuilder() {
    GMediaData_Media_studios_nodes._initializeBuilder(this);
  }

  GMediaData_Media_studios_nodesBuilder get _$this {
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
  void replace(GMediaData_Media_studios_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_studios_nodes;
  }

  @override
  void update(void Function(GMediaData_Media_studios_nodesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_studios_nodes build() => _build();

  _$GMediaData_Media_studios_nodes _build() {
    final _$result = _$v ??
        new _$GMediaData_Media_studios_nodes._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMediaData_Media_studios_nodes', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GMediaData_Media_studios_nodes', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GMediaData_Media_studios_nodes', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_startDate extends GMediaData_Media_startDate {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GMediaData_Media_startDate(
          [void Function(GMediaData_Media_startDateBuilder)? updates]) =>
      (new GMediaData_Media_startDateBuilder()..update(updates))._build();

  _$GMediaData_Media_startDate._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_startDate', 'G__typename');
  }

  @override
  GMediaData_Media_startDate rebuild(
          void Function(GMediaData_Media_startDateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_startDateBuilder toBuilder() =>
      new GMediaData_Media_startDateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_startDate &&
        G__typename == other.G__typename &&
        day == other.day &&
        month == other.month &&
        year == other.year;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaData_Media_startDate')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GMediaData_Media_startDateBuilder
    implements
        Builder<GMediaData_Media_startDate, GMediaData_Media_startDateBuilder> {
  _$GMediaData_Media_startDate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  int? _month;
  int? get month => _$this._month;
  set month(int? month) => _$this._month = month;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  GMediaData_Media_startDateBuilder() {
    GMediaData_Media_startDate._initializeBuilder(this);
  }

  GMediaData_Media_startDateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _day = $v.day;
      _month = $v.month;
      _year = $v.year;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_startDate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_startDate;
  }

  @override
  void update(void Function(GMediaData_Media_startDateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_startDate build() => _build();

  _$GMediaData_Media_startDate _build() {
    final _$result = _$v ??
        new _$GMediaData_Media_startDate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMediaData_Media_startDate', 'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_endDate extends GMediaData_Media_endDate {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GMediaData_Media_endDate(
          [void Function(GMediaData_Media_endDateBuilder)? updates]) =>
      (new GMediaData_Media_endDateBuilder()..update(updates))._build();

  _$GMediaData_Media_endDate._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_endDate', 'G__typename');
  }

  @override
  GMediaData_Media_endDate rebuild(
          void Function(GMediaData_Media_endDateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_endDateBuilder toBuilder() =>
      new GMediaData_Media_endDateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_endDate &&
        G__typename == other.G__typename &&
        day == other.day &&
        month == other.month &&
        year == other.year;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaData_Media_endDate')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GMediaData_Media_endDateBuilder
    implements
        Builder<GMediaData_Media_endDate, GMediaData_Media_endDateBuilder> {
  _$GMediaData_Media_endDate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  int? _month;
  int? get month => _$this._month;
  set month(int? month) => _$this._month = month;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  GMediaData_Media_endDateBuilder() {
    GMediaData_Media_endDate._initializeBuilder(this);
  }

  GMediaData_Media_endDateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _day = $v.day;
      _month = $v.month;
      _year = $v.year;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_endDate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_endDate;
  }

  @override
  void update(void Function(GMediaData_Media_endDateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_endDate build() => _build();

  _$GMediaData_Media_endDate _build() {
    final _$result = _$v ??
        new _$GMediaData_Media_endDate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMediaData_Media_endDate', 'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_tags extends GMediaData_Media_tags {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String? description;
  @override
  final int? rank;
  @override
  final bool? isMediaSpoiler;

  factory _$GMediaData_Media_tags(
          [void Function(GMediaData_Media_tagsBuilder)? updates]) =>
      (new GMediaData_Media_tagsBuilder()..update(updates))._build();

  _$GMediaData_Media_tags._(
      {required this.G__typename,
      required this.name,
      this.description,
      this.rank,
      this.isMediaSpoiler})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_tags', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GMediaData_Media_tags', 'name');
  }

  @override
  GMediaData_Media_tags rebuild(
          void Function(GMediaData_Media_tagsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_tagsBuilder toBuilder() =>
      new GMediaData_Media_tagsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_tags &&
        G__typename == other.G__typename &&
        name == other.name &&
        description == other.description &&
        rank == other.rank &&
        isMediaSpoiler == other.isMediaSpoiler;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, rank.hashCode);
    _$hash = $jc(_$hash, isMediaSpoiler.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaData_Media_tags')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('description', description)
          ..add('rank', rank)
          ..add('isMediaSpoiler', isMediaSpoiler))
        .toString();
  }
}

class GMediaData_Media_tagsBuilder
    implements Builder<GMediaData_Media_tags, GMediaData_Media_tagsBuilder> {
  _$GMediaData_Media_tags? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _rank;
  int? get rank => _$this._rank;
  set rank(int? rank) => _$this._rank = rank;

  bool? _isMediaSpoiler;
  bool? get isMediaSpoiler => _$this._isMediaSpoiler;
  set isMediaSpoiler(bool? isMediaSpoiler) =>
      _$this._isMediaSpoiler = isMediaSpoiler;

  GMediaData_Media_tagsBuilder() {
    GMediaData_Media_tags._initializeBuilder(this);
  }

  GMediaData_Media_tagsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _description = $v.description;
      _rank = $v.rank;
      _isMediaSpoiler = $v.isMediaSpoiler;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_tags other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_tags;
  }

  @override
  void update(void Function(GMediaData_Media_tagsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_tags build() => _build();

  _$GMediaData_Media_tags _build() {
    final _$result = _$v ??
        new _$GMediaData_Media_tags._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMediaData_Media_tags', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GMediaData_Media_tags', 'name'),
            description: description,
            rank: rank,
            isMediaSpoiler: isMediaSpoiler);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_relations extends GMediaData_Media_relations {
  @override
  final String G__typename;
  @override
  final BuiltList<GMediaData_Media_relations_edges?>? edges;

  factory _$GMediaData_Media_relations(
          [void Function(GMediaData_Media_relationsBuilder)? updates]) =>
      (new GMediaData_Media_relationsBuilder()..update(updates))._build();

  _$GMediaData_Media_relations._({required this.G__typename, this.edges})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_relations', 'G__typename');
  }

  @override
  GMediaData_Media_relations rebuild(
          void Function(GMediaData_Media_relationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_relationsBuilder toBuilder() =>
      new GMediaData_Media_relationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_relations &&
        G__typename == other.G__typename &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, edges.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaData_Media_relations')
          ..add('G__typename', G__typename)
          ..add('edges', edges))
        .toString();
  }
}

class GMediaData_Media_relationsBuilder
    implements
        Builder<GMediaData_Media_relations, GMediaData_Media_relationsBuilder> {
  _$GMediaData_Media_relations? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GMediaData_Media_relations_edges?>? _edges;
  ListBuilder<GMediaData_Media_relations_edges?> get edges =>
      _$this._edges ??= new ListBuilder<GMediaData_Media_relations_edges?>();
  set edges(ListBuilder<GMediaData_Media_relations_edges?>? edges) =>
      _$this._edges = edges;

  GMediaData_Media_relationsBuilder() {
    GMediaData_Media_relations._initializeBuilder(this);
  }

  GMediaData_Media_relationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _edges = $v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_relations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_relations;
  }

  @override
  void update(void Function(GMediaData_Media_relationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_relations build() => _build();

  _$GMediaData_Media_relations _build() {
    _$GMediaData_Media_relations _$result;
    try {
      _$result = _$v ??
          new _$GMediaData_Media_relations._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaData_Media_relations', 'G__typename'),
              edges: _edges?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaData_Media_relations', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_relations_edges
    extends GMediaData_Media_relations_edges {
  @override
  final String G__typename;
  @override
  final _i3.GMediaRelation? relationType;
  @override
  final GMediaData_Media_relations_edges_node? node;

  factory _$GMediaData_Media_relations_edges(
          [void Function(GMediaData_Media_relations_edgesBuilder)? updates]) =>
      (new GMediaData_Media_relations_edgesBuilder()..update(updates))._build();

  _$GMediaData_Media_relations_edges._(
      {required this.G__typename, this.relationType, this.node})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_relations_edges', 'G__typename');
  }

  @override
  GMediaData_Media_relations_edges rebuild(
          void Function(GMediaData_Media_relations_edgesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_relations_edgesBuilder toBuilder() =>
      new GMediaData_Media_relations_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_relations_edges &&
        G__typename == other.G__typename &&
        relationType == other.relationType &&
        node == other.node;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, relationType.hashCode);
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaData_Media_relations_edges')
          ..add('G__typename', G__typename)
          ..add('relationType', relationType)
          ..add('node', node))
        .toString();
  }
}

class GMediaData_Media_relations_edgesBuilder
    implements
        Builder<GMediaData_Media_relations_edges,
            GMediaData_Media_relations_edgesBuilder> {
  _$GMediaData_Media_relations_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i3.GMediaRelation? _relationType;
  _i3.GMediaRelation? get relationType => _$this._relationType;
  set relationType(_i3.GMediaRelation? relationType) =>
      _$this._relationType = relationType;

  GMediaData_Media_relations_edges_nodeBuilder? _node;
  GMediaData_Media_relations_edges_nodeBuilder get node =>
      _$this._node ??= new GMediaData_Media_relations_edges_nodeBuilder();
  set node(GMediaData_Media_relations_edges_nodeBuilder? node) =>
      _$this._node = node;

  GMediaData_Media_relations_edgesBuilder() {
    GMediaData_Media_relations_edges._initializeBuilder(this);
  }

  GMediaData_Media_relations_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _relationType = $v.relationType;
      _node = $v.node?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_relations_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_relations_edges;
  }

  @override
  void update(void Function(GMediaData_Media_relations_edgesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_relations_edges build() => _build();

  _$GMediaData_Media_relations_edges _build() {
    _$GMediaData_Media_relations_edges _$result;
    try {
      _$result = _$v ??
          new _$GMediaData_Media_relations_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GMediaData_Media_relations_edges', 'G__typename'),
              relationType: relationType,
              node: _node?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaData_Media_relations_edges', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_relations_edges_node
    extends GMediaData_Media_relations_edges_node {
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
  final GMediaData_Media_relations_edges_node_title? title;
  @override
  final GMediaData_Media_relations_edges_node_coverImage? coverImage;

  factory _$GMediaData_Media_relations_edges_node(
          [void Function(GMediaData_Media_relations_edges_nodeBuilder)?
              updates]) =>
      (new GMediaData_Media_relations_edges_nodeBuilder()..update(updates))
          ._build();

  _$GMediaData_Media_relations_edges_node._(
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
        G__typename, r'GMediaData_Media_relations_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaData_Media_relations_edges_node', 'id');
  }

  @override
  GMediaData_Media_relations_edges_node rebuild(
          void Function(GMediaData_Media_relations_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_relations_edges_nodeBuilder toBuilder() =>
      new GMediaData_Media_relations_edges_nodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_relations_edges_node &&
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
            r'GMediaData_Media_relations_edges_node')
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

class GMediaData_Media_relations_edges_nodeBuilder
    implements
        Builder<GMediaData_Media_relations_edges_node,
            GMediaData_Media_relations_edges_nodeBuilder> {
  _$GMediaData_Media_relations_edges_node? _$v;

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

  GMediaData_Media_relations_edges_node_titleBuilder? _title;
  GMediaData_Media_relations_edges_node_titleBuilder get title =>
      _$this._title ??=
          new GMediaData_Media_relations_edges_node_titleBuilder();
  set title(GMediaData_Media_relations_edges_node_titleBuilder? title) =>
      _$this._title = title;

  GMediaData_Media_relations_edges_node_coverImageBuilder? _coverImage;
  GMediaData_Media_relations_edges_node_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GMediaData_Media_relations_edges_node_coverImageBuilder();
  set coverImage(
          GMediaData_Media_relations_edges_node_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GMediaData_Media_relations_edges_nodeBuilder() {
    GMediaData_Media_relations_edges_node._initializeBuilder(this);
  }

  GMediaData_Media_relations_edges_nodeBuilder get _$this {
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
  void replace(GMediaData_Media_relations_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_relations_edges_node;
  }

  @override
  void update(
      void Function(GMediaData_Media_relations_edges_nodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_relations_edges_node build() => _build();

  _$GMediaData_Media_relations_edges_node _build() {
    _$GMediaData_Media_relations_edges_node _$result;
    try {
      _$result = _$v ??
          new _$GMediaData_Media_relations_edges_node._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GMediaData_Media_relations_edges_node', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaData_Media_relations_edges_node', 'id'),
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
            r'GMediaData_Media_relations_edges_node',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_relations_edges_node_title
    extends GMediaData_Media_relations_edges_node_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GMediaData_Media_relations_edges_node_title(
          [void Function(GMediaData_Media_relations_edges_node_titleBuilder)?
              updates]) =>
      (new GMediaData_Media_relations_edges_node_titleBuilder()
            ..update(updates))
          ._build();

  _$GMediaData_Media_relations_edges_node_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaData_Media_relations_edges_node_title', 'G__typename');
  }

  @override
  GMediaData_Media_relations_edges_node_title rebuild(
          void Function(GMediaData_Media_relations_edges_node_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_relations_edges_node_titleBuilder toBuilder() =>
      new GMediaData_Media_relations_edges_node_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_relations_edges_node_title &&
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
            r'GMediaData_Media_relations_edges_node_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GMediaData_Media_relations_edges_node_titleBuilder
    implements
        Builder<GMediaData_Media_relations_edges_node_title,
            GMediaData_Media_relations_edges_node_titleBuilder> {
  _$GMediaData_Media_relations_edges_node_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GMediaData_Media_relations_edges_node_titleBuilder() {
    GMediaData_Media_relations_edges_node_title._initializeBuilder(this);
  }

  GMediaData_Media_relations_edges_node_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_relations_edges_node_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_relations_edges_node_title;
  }

  @override
  void update(
      void Function(GMediaData_Media_relations_edges_node_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_relations_edges_node_title build() => _build();

  _$GMediaData_Media_relations_edges_node_title _build() {
    final _$result = _$v ??
        new _$GMediaData_Media_relations_edges_node_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GMediaData_Media_relations_edges_node_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_relations_edges_node_coverImage
    extends GMediaData_Media_relations_edges_node_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GMediaData_Media_relations_edges_node_coverImage(
          [void Function(
                  GMediaData_Media_relations_edges_node_coverImageBuilder)?
              updates]) =>
      (new GMediaData_Media_relations_edges_node_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GMediaData_Media_relations_edges_node_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaData_Media_relations_edges_node_coverImage', 'G__typename');
  }

  @override
  GMediaData_Media_relations_edges_node_coverImage rebuild(
          void Function(GMediaData_Media_relations_edges_node_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_relations_edges_node_coverImageBuilder toBuilder() =>
      new GMediaData_Media_relations_edges_node_coverImageBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_relations_edges_node_coverImage &&
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
            r'GMediaData_Media_relations_edges_node_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GMediaData_Media_relations_edges_node_coverImageBuilder
    implements
        Builder<GMediaData_Media_relations_edges_node_coverImage,
            GMediaData_Media_relations_edges_node_coverImageBuilder> {
  _$GMediaData_Media_relations_edges_node_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GMediaData_Media_relations_edges_node_coverImageBuilder() {
    GMediaData_Media_relations_edges_node_coverImage._initializeBuilder(this);
  }

  GMediaData_Media_relations_edges_node_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_relations_edges_node_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_relations_edges_node_coverImage;
  }

  @override
  void update(
      void Function(GMediaData_Media_relations_edges_node_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_relations_edges_node_coverImage build() => _build();

  _$GMediaData_Media_relations_edges_node_coverImage _build() {
    final _$result = _$v ??
        new _$GMediaData_Media_relations_edges_node_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaData_Media_relations_edges_node_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_externalLinks extends GMediaData_Media_externalLinks {
  @override
  final String G__typename;
  @override
  final String site;
  @override
  final String? url;
  @override
  final String? color;
  @override
  final String? icon;
  @override
  final bool? isDisabled;
  @override
  final String? language;

  factory _$GMediaData_Media_externalLinks(
          [void Function(GMediaData_Media_externalLinksBuilder)? updates]) =>
      (new GMediaData_Media_externalLinksBuilder()..update(updates))._build();

  _$GMediaData_Media_externalLinks._(
      {required this.G__typename,
      required this.site,
      this.url,
      this.color,
      this.icon,
      this.isDisabled,
      this.language})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_externalLinks', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        site, r'GMediaData_Media_externalLinks', 'site');
  }

  @override
  GMediaData_Media_externalLinks rebuild(
          void Function(GMediaData_Media_externalLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_externalLinksBuilder toBuilder() =>
      new GMediaData_Media_externalLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_externalLinks &&
        G__typename == other.G__typename &&
        site == other.site &&
        url == other.url &&
        color == other.color &&
        icon == other.icon &&
        isDisabled == other.isDisabled &&
        language == other.language;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, site.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, isDisabled.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaData_Media_externalLinks')
          ..add('G__typename', G__typename)
          ..add('site', site)
          ..add('url', url)
          ..add('color', color)
          ..add('icon', icon)
          ..add('isDisabled', isDisabled)
          ..add('language', language))
        .toString();
  }
}

class GMediaData_Media_externalLinksBuilder
    implements
        Builder<GMediaData_Media_externalLinks,
            GMediaData_Media_externalLinksBuilder> {
  _$GMediaData_Media_externalLinks? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _site;
  String? get site => _$this._site;
  set site(String? site) => _$this._site = site;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  bool? _isDisabled;
  bool? get isDisabled => _$this._isDisabled;
  set isDisabled(bool? isDisabled) => _$this._isDisabled = isDisabled;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  GMediaData_Media_externalLinksBuilder() {
    GMediaData_Media_externalLinks._initializeBuilder(this);
  }

  GMediaData_Media_externalLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _site = $v.site;
      _url = $v.url;
      _color = $v.color;
      _icon = $v.icon;
      _isDisabled = $v.isDisabled;
      _language = $v.language;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_externalLinks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_externalLinks;
  }

  @override
  void update(void Function(GMediaData_Media_externalLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_externalLinks build() => _build();

  _$GMediaData_Media_externalLinks _build() {
    final _$result = _$v ??
        new _$GMediaData_Media_externalLinks._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMediaData_Media_externalLinks', 'G__typename'),
            site: BuiltValueNullFieldError.checkNotNull(
                site, r'GMediaData_Media_externalLinks', 'site'),
            url: url,
            color: color,
            icon: icon,
            isDisabled: isDisabled,
            language: language);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_trailer extends GMediaData_Media_trailer {
  @override
  final String G__typename;
  @override
  final String? site;
  @override
  final String? id;
  @override
  final String? thumbnail;

  factory _$GMediaData_Media_trailer(
          [void Function(GMediaData_Media_trailerBuilder)? updates]) =>
      (new GMediaData_Media_trailerBuilder()..update(updates))._build();

  _$GMediaData_Media_trailer._(
      {required this.G__typename, this.site, this.id, this.thumbnail})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_trailer', 'G__typename');
  }

  @override
  GMediaData_Media_trailer rebuild(
          void Function(GMediaData_Media_trailerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_trailerBuilder toBuilder() =>
      new GMediaData_Media_trailerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_trailer &&
        G__typename == other.G__typename &&
        site == other.site &&
        id == other.id &&
        thumbnail == other.thumbnail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, site.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, thumbnail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaData_Media_trailer')
          ..add('G__typename', G__typename)
          ..add('site', site)
          ..add('id', id)
          ..add('thumbnail', thumbnail))
        .toString();
  }
}

class GMediaData_Media_trailerBuilder
    implements
        Builder<GMediaData_Media_trailer, GMediaData_Media_trailerBuilder> {
  _$GMediaData_Media_trailer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _site;
  String? get site => _$this._site;
  set site(String? site) => _$this._site = site;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  GMediaData_Media_trailerBuilder() {
    GMediaData_Media_trailer._initializeBuilder(this);
  }

  GMediaData_Media_trailerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _site = $v.site;
      _id = $v.id;
      _thumbnail = $v.thumbnail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_trailer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_trailer;
  }

  @override
  void update(void Function(GMediaData_Media_trailerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_trailer build() => _build();

  _$GMediaData_Media_trailer _build() {
    final _$result = _$v ??
        new _$GMediaData_Media_trailer._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMediaData_Media_trailer', 'G__typename'),
            site: site,
            id: id,
            thumbnail: thumbnail);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_characters extends GMediaData_Media_characters {
  @override
  final String G__typename;
  @override
  final BuiltList<GMediaData_Media_characters_nodes?>? nodes;

  factory _$GMediaData_Media_characters(
          [void Function(GMediaData_Media_charactersBuilder)? updates]) =>
      (new GMediaData_Media_charactersBuilder()..update(updates))._build();

  _$GMediaData_Media_characters._({required this.G__typename, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_characters', 'G__typename');
  }

  @override
  GMediaData_Media_characters rebuild(
          void Function(GMediaData_Media_charactersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_charactersBuilder toBuilder() =>
      new GMediaData_Media_charactersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_characters &&
        G__typename == other.G__typename &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaData_Media_characters')
          ..add('G__typename', G__typename)
          ..add('nodes', nodes))
        .toString();
  }
}

class GMediaData_Media_charactersBuilder
    implements
        Builder<GMediaData_Media_characters,
            GMediaData_Media_charactersBuilder> {
  _$GMediaData_Media_characters? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GMediaData_Media_characters_nodes?>? _nodes;
  ListBuilder<GMediaData_Media_characters_nodes?> get nodes =>
      _$this._nodes ??= new ListBuilder<GMediaData_Media_characters_nodes?>();
  set nodes(ListBuilder<GMediaData_Media_characters_nodes?>? nodes) =>
      _$this._nodes = nodes;

  GMediaData_Media_charactersBuilder() {
    GMediaData_Media_characters._initializeBuilder(this);
  }

  GMediaData_Media_charactersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_characters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_characters;
  }

  @override
  void update(void Function(GMediaData_Media_charactersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_characters build() => _build();

  _$GMediaData_Media_characters _build() {
    _$GMediaData_Media_characters _$result;
    try {
      _$result = _$v ??
          new _$GMediaData_Media_characters._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaData_Media_characters', 'G__typename'),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaData_Media_characters', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_characters_nodes
    extends GMediaData_Media_characters_nodes {
  @override
  final String G__typename;
  @override
  final int id;

  factory _$GMediaData_Media_characters_nodes(
          [void Function(GMediaData_Media_characters_nodesBuilder)? updates]) =>
      (new GMediaData_Media_characters_nodesBuilder()..update(updates))
          ._build();

  _$GMediaData_Media_characters_nodes._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_characters_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaData_Media_characters_nodes', 'id');
  }

  @override
  GMediaData_Media_characters_nodes rebuild(
          void Function(GMediaData_Media_characters_nodesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_characters_nodesBuilder toBuilder() =>
      new GMediaData_Media_characters_nodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_characters_nodes &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaData_Media_characters_nodes')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GMediaData_Media_characters_nodesBuilder
    implements
        Builder<GMediaData_Media_characters_nodes,
            GMediaData_Media_characters_nodesBuilder> {
  _$GMediaData_Media_characters_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GMediaData_Media_characters_nodesBuilder() {
    GMediaData_Media_characters_nodes._initializeBuilder(this);
  }

  GMediaData_Media_characters_nodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_characters_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_characters_nodes;
  }

  @override
  void update(
      void Function(GMediaData_Media_characters_nodesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_characters_nodes build() => _build();

  _$GMediaData_Media_characters_nodes _build() {
    final _$result = _$v ??
        new _$GMediaData_Media_characters_nodes._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GMediaData_Media_characters_nodes', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GMediaData_Media_characters_nodes', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_staff extends GMediaData_Media_staff {
  @override
  final String G__typename;
  @override
  final BuiltList<GMediaData_Media_staff_nodes?>? nodes;

  factory _$GMediaData_Media_staff(
          [void Function(GMediaData_Media_staffBuilder)? updates]) =>
      (new GMediaData_Media_staffBuilder()..update(updates))._build();

  _$GMediaData_Media_staff._({required this.G__typename, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_staff', 'G__typename');
  }

  @override
  GMediaData_Media_staff rebuild(
          void Function(GMediaData_Media_staffBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_staffBuilder toBuilder() =>
      new GMediaData_Media_staffBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_staff &&
        G__typename == other.G__typename &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaData_Media_staff')
          ..add('G__typename', G__typename)
          ..add('nodes', nodes))
        .toString();
  }
}

class GMediaData_Media_staffBuilder
    implements Builder<GMediaData_Media_staff, GMediaData_Media_staffBuilder> {
  _$GMediaData_Media_staff? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GMediaData_Media_staff_nodes?>? _nodes;
  ListBuilder<GMediaData_Media_staff_nodes?> get nodes =>
      _$this._nodes ??= new ListBuilder<GMediaData_Media_staff_nodes?>();
  set nodes(ListBuilder<GMediaData_Media_staff_nodes?>? nodes) =>
      _$this._nodes = nodes;

  GMediaData_Media_staffBuilder() {
    GMediaData_Media_staff._initializeBuilder(this);
  }

  GMediaData_Media_staffBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_staff other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_staff;
  }

  @override
  void update(void Function(GMediaData_Media_staffBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_staff build() => _build();

  _$GMediaData_Media_staff _build() {
    _$GMediaData_Media_staff _$result;
    try {
      _$result = _$v ??
          new _$GMediaData_Media_staff._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaData_Media_staff', 'G__typename'),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaData_Media_staff', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_staff_nodes extends GMediaData_Media_staff_nodes {
  @override
  final String G__typename;
  @override
  final int id;

  factory _$GMediaData_Media_staff_nodes(
          [void Function(GMediaData_Media_staff_nodesBuilder)? updates]) =>
      (new GMediaData_Media_staff_nodesBuilder()..update(updates))._build();

  _$GMediaData_Media_staff_nodes._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_staff_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaData_Media_staff_nodes', 'id');
  }

  @override
  GMediaData_Media_staff_nodes rebuild(
          void Function(GMediaData_Media_staff_nodesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_staff_nodesBuilder toBuilder() =>
      new GMediaData_Media_staff_nodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_staff_nodes &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaData_Media_staff_nodes')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GMediaData_Media_staff_nodesBuilder
    implements
        Builder<GMediaData_Media_staff_nodes,
            GMediaData_Media_staff_nodesBuilder> {
  _$GMediaData_Media_staff_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GMediaData_Media_staff_nodesBuilder() {
    GMediaData_Media_staff_nodes._initializeBuilder(this);
  }

  GMediaData_Media_staff_nodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_staff_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_staff_nodes;
  }

  @override
  void update(void Function(GMediaData_Media_staff_nodesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_staff_nodes build() => _build();

  _$GMediaData_Media_staff_nodes _build() {
    final _$result = _$v ??
        new _$GMediaData_Media_staff_nodes._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMediaData_Media_staff_nodes', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GMediaData_Media_staff_nodes', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_recommendations
    extends GMediaData_Media_recommendations {
  @override
  final String G__typename;
  @override
  final BuiltList<GMediaData_Media_recommendations_nodes?>? nodes;

  factory _$GMediaData_Media_recommendations(
          [void Function(GMediaData_Media_recommendationsBuilder)? updates]) =>
      (new GMediaData_Media_recommendationsBuilder()..update(updates))._build();

  _$GMediaData_Media_recommendations._({required this.G__typename, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_recommendations', 'G__typename');
  }

  @override
  GMediaData_Media_recommendations rebuild(
          void Function(GMediaData_Media_recommendationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_recommendationsBuilder toBuilder() =>
      new GMediaData_Media_recommendationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_recommendations &&
        G__typename == other.G__typename &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaData_Media_recommendations')
          ..add('G__typename', G__typename)
          ..add('nodes', nodes))
        .toString();
  }
}

class GMediaData_Media_recommendationsBuilder
    implements
        Builder<GMediaData_Media_recommendations,
            GMediaData_Media_recommendationsBuilder> {
  _$GMediaData_Media_recommendations? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GMediaData_Media_recommendations_nodes?>? _nodes;
  ListBuilder<GMediaData_Media_recommendations_nodes?> get nodes =>
      _$this._nodes ??=
          new ListBuilder<GMediaData_Media_recommendations_nodes?>();
  set nodes(ListBuilder<GMediaData_Media_recommendations_nodes?>? nodes) =>
      _$this._nodes = nodes;

  GMediaData_Media_recommendationsBuilder() {
    GMediaData_Media_recommendations._initializeBuilder(this);
  }

  GMediaData_Media_recommendationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_recommendations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_recommendations;
  }

  @override
  void update(void Function(GMediaData_Media_recommendationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_recommendations build() => _build();

  _$GMediaData_Media_recommendations _build() {
    _$GMediaData_Media_recommendations _$result;
    try {
      _$result = _$v ??
          new _$GMediaData_Media_recommendations._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GMediaData_Media_recommendations', 'G__typename'),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaData_Media_recommendations', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_recommendations_nodes
    extends GMediaData_Media_recommendations_nodes {
  @override
  final String G__typename;
  @override
  final int id;

  factory _$GMediaData_Media_recommendations_nodes(
          [void Function(GMediaData_Media_recommendations_nodesBuilder)?
              updates]) =>
      (new GMediaData_Media_recommendations_nodesBuilder()..update(updates))
          ._build();

  _$GMediaData_Media_recommendations_nodes._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_recommendations_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaData_Media_recommendations_nodes', 'id');
  }

  @override
  GMediaData_Media_recommendations_nodes rebuild(
          void Function(GMediaData_Media_recommendations_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_recommendations_nodesBuilder toBuilder() =>
      new GMediaData_Media_recommendations_nodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_recommendations_nodes &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaData_Media_recommendations_nodes')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GMediaData_Media_recommendations_nodesBuilder
    implements
        Builder<GMediaData_Media_recommendations_nodes,
            GMediaData_Media_recommendations_nodesBuilder> {
  _$GMediaData_Media_recommendations_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GMediaData_Media_recommendations_nodesBuilder() {
    GMediaData_Media_recommendations_nodes._initializeBuilder(this);
  }

  GMediaData_Media_recommendations_nodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_recommendations_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_recommendations_nodes;
  }

  @override
  void update(
      void Function(GMediaData_Media_recommendations_nodesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_recommendations_nodes build() => _build();

  _$GMediaData_Media_recommendations_nodes _build() {
    final _$result = _$v ??
        new _$GMediaData_Media_recommendations_nodes._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GMediaData_Media_recommendations_nodes', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GMediaData_Media_recommendations_nodes', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_reviews extends GMediaData_Media_reviews {
  @override
  final String G__typename;
  @override
  final BuiltList<GMediaData_Media_reviews_nodes?>? nodes;

  factory _$GMediaData_Media_reviews(
          [void Function(GMediaData_Media_reviewsBuilder)? updates]) =>
      (new GMediaData_Media_reviewsBuilder()..update(updates))._build();

  _$GMediaData_Media_reviews._({required this.G__typename, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_reviews', 'G__typename');
  }

  @override
  GMediaData_Media_reviews rebuild(
          void Function(GMediaData_Media_reviewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_reviewsBuilder toBuilder() =>
      new GMediaData_Media_reviewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_reviews &&
        G__typename == other.G__typename &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaData_Media_reviews')
          ..add('G__typename', G__typename)
          ..add('nodes', nodes))
        .toString();
  }
}

class GMediaData_Media_reviewsBuilder
    implements
        Builder<GMediaData_Media_reviews, GMediaData_Media_reviewsBuilder> {
  _$GMediaData_Media_reviews? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GMediaData_Media_reviews_nodes?>? _nodes;
  ListBuilder<GMediaData_Media_reviews_nodes?> get nodes =>
      _$this._nodes ??= new ListBuilder<GMediaData_Media_reviews_nodes?>();
  set nodes(ListBuilder<GMediaData_Media_reviews_nodes?>? nodes) =>
      _$this._nodes = nodes;

  GMediaData_Media_reviewsBuilder() {
    GMediaData_Media_reviews._initializeBuilder(this);
  }

  GMediaData_Media_reviewsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_reviews other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_reviews;
  }

  @override
  void update(void Function(GMediaData_Media_reviewsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_reviews build() => _build();

  _$GMediaData_Media_reviews _build() {
    _$GMediaData_Media_reviews _$result;
    try {
      _$result = _$v ??
          new _$GMediaData_Media_reviews._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaData_Media_reviews', 'G__typename'),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaData_Media_reviews', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_reviews_nodes extends GMediaData_Media_reviews_nodes {
  @override
  final String G__typename;
  @override
  final int id;

  factory _$GMediaData_Media_reviews_nodes(
          [void Function(GMediaData_Media_reviews_nodesBuilder)? updates]) =>
      (new GMediaData_Media_reviews_nodesBuilder()..update(updates))._build();

  _$GMediaData_Media_reviews_nodes._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_reviews_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaData_Media_reviews_nodes', 'id');
  }

  @override
  GMediaData_Media_reviews_nodes rebuild(
          void Function(GMediaData_Media_reviews_nodesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_reviews_nodesBuilder toBuilder() =>
      new GMediaData_Media_reviews_nodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_reviews_nodes &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaData_Media_reviews_nodes')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GMediaData_Media_reviews_nodesBuilder
    implements
        Builder<GMediaData_Media_reviews_nodes,
            GMediaData_Media_reviews_nodesBuilder> {
  _$GMediaData_Media_reviews_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GMediaData_Media_reviews_nodesBuilder() {
    GMediaData_Media_reviews_nodes._initializeBuilder(this);
  }

  GMediaData_Media_reviews_nodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_reviews_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_reviews_nodes;
  }

  @override
  void update(void Function(GMediaData_Media_reviews_nodesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_reviews_nodes build() => _build();

  _$GMediaData_Media_reviews_nodes _build() {
    final _$result = _$v ??
        new _$GMediaData_Media_reviews_nodes._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMediaData_Media_reviews_nodes', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GMediaData_Media_reviews_nodes', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GMediaData_Media_mediaListEntry
    extends GMediaData_Media_mediaListEntry {
  @override
  final String G__typename;
  @override
  final _i3.GMediaListStatus? status;

  factory _$GMediaData_Media_mediaListEntry(
          [void Function(GMediaData_Media_mediaListEntryBuilder)? updates]) =>
      (new GMediaData_Media_mediaListEntryBuilder()..update(updates))._build();

  _$GMediaData_Media_mediaListEntry._({required this.G__typename, this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaData_Media_mediaListEntry', 'G__typename');
  }

  @override
  GMediaData_Media_mediaListEntry rebuild(
          void Function(GMediaData_Media_mediaListEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaData_Media_mediaListEntryBuilder toBuilder() =>
      new GMediaData_Media_mediaListEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaData_Media_mediaListEntry &&
        G__typename == other.G__typename &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaData_Media_mediaListEntry')
          ..add('G__typename', G__typename)
          ..add('status', status))
        .toString();
  }
}

class GMediaData_Media_mediaListEntryBuilder
    implements
        Builder<GMediaData_Media_mediaListEntry,
            GMediaData_Media_mediaListEntryBuilder> {
  _$GMediaData_Media_mediaListEntry? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i3.GMediaListStatus? _status;
  _i3.GMediaListStatus? get status => _$this._status;
  set status(_i3.GMediaListStatus? status) => _$this._status = status;

  GMediaData_Media_mediaListEntryBuilder() {
    GMediaData_Media_mediaListEntry._initializeBuilder(this);
  }

  GMediaData_Media_mediaListEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaData_Media_mediaListEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaData_Media_mediaListEntry;
  }

  @override
  void update(void Function(GMediaData_Media_mediaListEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaData_Media_mediaListEntry build() => _build();

  _$GMediaData_Media_mediaListEntry _build() {
    final _$result = _$v ??
        new _$GMediaData_Media_mediaListEntry._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMediaData_Media_mediaListEntry', 'G__typename'),
            status: status);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavoriteData extends GToggleFavoriteData {
  @override
  final String G__typename;
  @override
  final GToggleFavoriteData_ToggleFavourite? ToggleFavourite;

  factory _$GToggleFavoriteData(
          [void Function(GToggleFavoriteDataBuilder)? updates]) =>
      (new GToggleFavoriteDataBuilder()..update(updates))._build();

  _$GToggleFavoriteData._({required this.G__typename, this.ToggleFavourite})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GToggleFavoriteData', 'G__typename');
  }

  @override
  GToggleFavoriteData rebuild(
          void Function(GToggleFavoriteDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavoriteDataBuilder toBuilder() =>
      new GToggleFavoriteDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavoriteData &&
        G__typename == other.G__typename &&
        ToggleFavourite == other.ToggleFavourite;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, ToggleFavourite.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GToggleFavoriteData')
          ..add('G__typename', G__typename)
          ..add('ToggleFavourite', ToggleFavourite))
        .toString();
  }
}

class GToggleFavoriteDataBuilder
    implements Builder<GToggleFavoriteData, GToggleFavoriteDataBuilder> {
  _$GToggleFavoriteData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GToggleFavoriteData_ToggleFavouriteBuilder? _ToggleFavourite;
  GToggleFavoriteData_ToggleFavouriteBuilder get ToggleFavourite =>
      _$this._ToggleFavourite ??=
          new GToggleFavoriteData_ToggleFavouriteBuilder();
  set ToggleFavourite(
          GToggleFavoriteData_ToggleFavouriteBuilder? ToggleFavourite) =>
      _$this._ToggleFavourite = ToggleFavourite;

  GToggleFavoriteDataBuilder() {
    GToggleFavoriteData._initializeBuilder(this);
  }

  GToggleFavoriteDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ToggleFavourite = $v.ToggleFavourite?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavoriteData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavoriteData;
  }

  @override
  void update(void Function(GToggleFavoriteDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavoriteData build() => _build();

  _$GToggleFavoriteData _build() {
    _$GToggleFavoriteData _$result;
    try {
      _$result = _$v ??
          new _$GToggleFavoriteData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GToggleFavoriteData', 'G__typename'),
              ToggleFavourite: _ToggleFavourite?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ToggleFavourite';
        _ToggleFavourite?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GToggleFavoriteData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavoriteData_ToggleFavourite
    extends GToggleFavoriteData_ToggleFavourite {
  @override
  final String G__typename;
  @override
  final GToggleFavoriteData_ToggleFavourite_anime? anime;
  @override
  final GToggleFavoriteData_ToggleFavourite_manga? manga;
  @override
  final GToggleFavoriteData_ToggleFavourite_characters? characters;
  @override
  final GToggleFavoriteData_ToggleFavourite_staff? staff;
  @override
  final GToggleFavoriteData_ToggleFavourite_studios? studios;

  factory _$GToggleFavoriteData_ToggleFavourite(
          [void Function(GToggleFavoriteData_ToggleFavouriteBuilder)?
              updates]) =>
      (new GToggleFavoriteData_ToggleFavouriteBuilder()..update(updates))
          ._build();

  _$GToggleFavoriteData_ToggleFavourite._(
      {required this.G__typename,
      this.anime,
      this.manga,
      this.characters,
      this.staff,
      this.studios})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GToggleFavoriteData_ToggleFavourite', 'G__typename');
  }

  @override
  GToggleFavoriteData_ToggleFavourite rebuild(
          void Function(GToggleFavoriteData_ToggleFavouriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavoriteData_ToggleFavouriteBuilder toBuilder() =>
      new GToggleFavoriteData_ToggleFavouriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavoriteData_ToggleFavourite &&
        G__typename == other.G__typename &&
        anime == other.anime &&
        manga == other.manga &&
        characters == other.characters &&
        staff == other.staff &&
        studios == other.studios;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, anime.hashCode);
    _$hash = $jc(_$hash, manga.hashCode);
    _$hash = $jc(_$hash, characters.hashCode);
    _$hash = $jc(_$hash, staff.hashCode);
    _$hash = $jc(_$hash, studios.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GToggleFavoriteData_ToggleFavourite')
          ..add('G__typename', G__typename)
          ..add('anime', anime)
          ..add('manga', manga)
          ..add('characters', characters)
          ..add('staff', staff)
          ..add('studios', studios))
        .toString();
  }
}

class GToggleFavoriteData_ToggleFavouriteBuilder
    implements
        Builder<GToggleFavoriteData_ToggleFavourite,
            GToggleFavoriteData_ToggleFavouriteBuilder> {
  _$GToggleFavoriteData_ToggleFavourite? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GToggleFavoriteData_ToggleFavourite_animeBuilder? _anime;
  GToggleFavoriteData_ToggleFavourite_animeBuilder get anime =>
      _$this._anime ??= new GToggleFavoriteData_ToggleFavourite_animeBuilder();
  set anime(GToggleFavoriteData_ToggleFavourite_animeBuilder? anime) =>
      _$this._anime = anime;

  GToggleFavoriteData_ToggleFavourite_mangaBuilder? _manga;
  GToggleFavoriteData_ToggleFavourite_mangaBuilder get manga =>
      _$this._manga ??= new GToggleFavoriteData_ToggleFavourite_mangaBuilder();
  set manga(GToggleFavoriteData_ToggleFavourite_mangaBuilder? manga) =>
      _$this._manga = manga;

  GToggleFavoriteData_ToggleFavourite_charactersBuilder? _characters;
  GToggleFavoriteData_ToggleFavourite_charactersBuilder get characters =>
      _$this._characters ??=
          new GToggleFavoriteData_ToggleFavourite_charactersBuilder();
  set characters(
          GToggleFavoriteData_ToggleFavourite_charactersBuilder? characters) =>
      _$this._characters = characters;

  GToggleFavoriteData_ToggleFavourite_staffBuilder? _staff;
  GToggleFavoriteData_ToggleFavourite_staffBuilder get staff =>
      _$this._staff ??= new GToggleFavoriteData_ToggleFavourite_staffBuilder();
  set staff(GToggleFavoriteData_ToggleFavourite_staffBuilder? staff) =>
      _$this._staff = staff;

  GToggleFavoriteData_ToggleFavourite_studiosBuilder? _studios;
  GToggleFavoriteData_ToggleFavourite_studiosBuilder get studios =>
      _$this._studios ??=
          new GToggleFavoriteData_ToggleFavourite_studiosBuilder();
  set studios(GToggleFavoriteData_ToggleFavourite_studiosBuilder? studios) =>
      _$this._studios = studios;

  GToggleFavoriteData_ToggleFavouriteBuilder() {
    GToggleFavoriteData_ToggleFavourite._initializeBuilder(this);
  }

  GToggleFavoriteData_ToggleFavouriteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _anime = $v.anime?.toBuilder();
      _manga = $v.manga?.toBuilder();
      _characters = $v.characters?.toBuilder();
      _staff = $v.staff?.toBuilder();
      _studios = $v.studios?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavoriteData_ToggleFavourite other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavoriteData_ToggleFavourite;
  }

  @override
  void update(
      void Function(GToggleFavoriteData_ToggleFavouriteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavoriteData_ToggleFavourite build() => _build();

  _$GToggleFavoriteData_ToggleFavourite _build() {
    _$GToggleFavoriteData_ToggleFavourite _$result;
    try {
      _$result = _$v ??
          new _$GToggleFavoriteData_ToggleFavourite._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GToggleFavoriteData_ToggleFavourite', 'G__typename'),
              anime: _anime?.build(),
              manga: _manga?.build(),
              characters: _characters?.build(),
              staff: _staff?.build(),
              studios: _studios?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'anime';
        _anime?.build();
        _$failedField = 'manga';
        _manga?.build();
        _$failedField = 'characters';
        _characters?.build();
        _$failedField = 'staff';
        _staff?.build();
        _$failedField = 'studios';
        _studios?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GToggleFavoriteData_ToggleFavourite',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavoriteData_ToggleFavourite_anime
    extends GToggleFavoriteData_ToggleFavourite_anime {
  @override
  final String G__typename;
  @override
  final GToggleFavoriteData_ToggleFavourite_anime_pageInfo? pageInfo;

  factory _$GToggleFavoriteData_ToggleFavourite_anime(
          [void Function(GToggleFavoriteData_ToggleFavourite_animeBuilder)?
              updates]) =>
      (new GToggleFavoriteData_ToggleFavourite_animeBuilder()..update(updates))
          ._build();

  _$GToggleFavoriteData_ToggleFavourite_anime._(
      {required this.G__typename, this.pageInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToggleFavoriteData_ToggleFavourite_anime', 'G__typename');
  }

  @override
  GToggleFavoriteData_ToggleFavourite_anime rebuild(
          void Function(GToggleFavoriteData_ToggleFavourite_animeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavoriteData_ToggleFavourite_animeBuilder toBuilder() =>
      new GToggleFavoriteData_ToggleFavourite_animeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavoriteData_ToggleFavourite_anime &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleFavoriteData_ToggleFavourite_anime')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo))
        .toString();
  }
}

class GToggleFavoriteData_ToggleFavourite_animeBuilder
    implements
        Builder<GToggleFavoriteData_ToggleFavourite_anime,
            GToggleFavoriteData_ToggleFavourite_animeBuilder> {
  _$GToggleFavoriteData_ToggleFavourite_anime? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GToggleFavoriteData_ToggleFavourite_anime_pageInfoBuilder? _pageInfo;
  GToggleFavoriteData_ToggleFavourite_anime_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??=
          new GToggleFavoriteData_ToggleFavourite_anime_pageInfoBuilder();
  set pageInfo(
          GToggleFavoriteData_ToggleFavourite_anime_pageInfoBuilder?
              pageInfo) =>
      _$this._pageInfo = pageInfo;

  GToggleFavoriteData_ToggleFavourite_animeBuilder() {
    GToggleFavoriteData_ToggleFavourite_anime._initializeBuilder(this);
  }

  GToggleFavoriteData_ToggleFavourite_animeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavoriteData_ToggleFavourite_anime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavoriteData_ToggleFavourite_anime;
  }

  @override
  void update(
      void Function(GToggleFavoriteData_ToggleFavourite_animeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavoriteData_ToggleFavourite_anime build() => _build();

  _$GToggleFavoriteData_ToggleFavourite_anime _build() {
    _$GToggleFavoriteData_ToggleFavourite_anime _$result;
    try {
      _$result = _$v ??
          new _$GToggleFavoriteData_ToggleFavourite_anime._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GToggleFavoriteData_ToggleFavourite_anime', 'G__typename'),
              pageInfo: _pageInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GToggleFavoriteData_ToggleFavourite_anime',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavoriteData_ToggleFavourite_anime_pageInfo
    extends GToggleFavoriteData_ToggleFavourite_anime_pageInfo {
  @override
  final String G__typename;
  @override
  final int? total;

  factory _$GToggleFavoriteData_ToggleFavourite_anime_pageInfo(
          [void Function(
                  GToggleFavoriteData_ToggleFavourite_anime_pageInfoBuilder)?
              updates]) =>
      (new GToggleFavoriteData_ToggleFavourite_anime_pageInfoBuilder()
            ..update(updates))
          ._build();

  _$GToggleFavoriteData_ToggleFavourite_anime_pageInfo._(
      {required this.G__typename, this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToggleFavoriteData_ToggleFavourite_anime_pageInfo', 'G__typename');
  }

  @override
  GToggleFavoriteData_ToggleFavourite_anime_pageInfo rebuild(
          void Function(
                  GToggleFavoriteData_ToggleFavourite_anime_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavoriteData_ToggleFavourite_anime_pageInfoBuilder toBuilder() =>
      new GToggleFavoriteData_ToggleFavourite_anime_pageInfoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavoriteData_ToggleFavourite_anime_pageInfo &&
        G__typename == other.G__typename &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleFavoriteData_ToggleFavourite_anime_pageInfo')
          ..add('G__typename', G__typename)
          ..add('total', total))
        .toString();
  }
}

class GToggleFavoriteData_ToggleFavourite_anime_pageInfoBuilder
    implements
        Builder<GToggleFavoriteData_ToggleFavourite_anime_pageInfo,
            GToggleFavoriteData_ToggleFavourite_anime_pageInfoBuilder> {
  _$GToggleFavoriteData_ToggleFavourite_anime_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  GToggleFavoriteData_ToggleFavourite_anime_pageInfoBuilder() {
    GToggleFavoriteData_ToggleFavourite_anime_pageInfo._initializeBuilder(this);
  }

  GToggleFavoriteData_ToggleFavourite_anime_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavoriteData_ToggleFavourite_anime_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavoriteData_ToggleFavourite_anime_pageInfo;
  }

  @override
  void update(
      void Function(GToggleFavoriteData_ToggleFavourite_anime_pageInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavoriteData_ToggleFavourite_anime_pageInfo build() => _build();

  _$GToggleFavoriteData_ToggleFavourite_anime_pageInfo _build() {
    final _$result = _$v ??
        new _$GToggleFavoriteData_ToggleFavourite_anime_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GToggleFavoriteData_ToggleFavourite_anime_pageInfo',
                'G__typename'),
            total: total);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavoriteData_ToggleFavourite_manga
    extends GToggleFavoriteData_ToggleFavourite_manga {
  @override
  final String G__typename;
  @override
  final GToggleFavoriteData_ToggleFavourite_manga_pageInfo? pageInfo;

  factory _$GToggleFavoriteData_ToggleFavourite_manga(
          [void Function(GToggleFavoriteData_ToggleFavourite_mangaBuilder)?
              updates]) =>
      (new GToggleFavoriteData_ToggleFavourite_mangaBuilder()..update(updates))
          ._build();

  _$GToggleFavoriteData_ToggleFavourite_manga._(
      {required this.G__typename, this.pageInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToggleFavoriteData_ToggleFavourite_manga', 'G__typename');
  }

  @override
  GToggleFavoriteData_ToggleFavourite_manga rebuild(
          void Function(GToggleFavoriteData_ToggleFavourite_mangaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavoriteData_ToggleFavourite_mangaBuilder toBuilder() =>
      new GToggleFavoriteData_ToggleFavourite_mangaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavoriteData_ToggleFavourite_manga &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleFavoriteData_ToggleFavourite_manga')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo))
        .toString();
  }
}

class GToggleFavoriteData_ToggleFavourite_mangaBuilder
    implements
        Builder<GToggleFavoriteData_ToggleFavourite_manga,
            GToggleFavoriteData_ToggleFavourite_mangaBuilder> {
  _$GToggleFavoriteData_ToggleFavourite_manga? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GToggleFavoriteData_ToggleFavourite_manga_pageInfoBuilder? _pageInfo;
  GToggleFavoriteData_ToggleFavourite_manga_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??=
          new GToggleFavoriteData_ToggleFavourite_manga_pageInfoBuilder();
  set pageInfo(
          GToggleFavoriteData_ToggleFavourite_manga_pageInfoBuilder?
              pageInfo) =>
      _$this._pageInfo = pageInfo;

  GToggleFavoriteData_ToggleFavourite_mangaBuilder() {
    GToggleFavoriteData_ToggleFavourite_manga._initializeBuilder(this);
  }

  GToggleFavoriteData_ToggleFavourite_mangaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavoriteData_ToggleFavourite_manga other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavoriteData_ToggleFavourite_manga;
  }

  @override
  void update(
      void Function(GToggleFavoriteData_ToggleFavourite_mangaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavoriteData_ToggleFavourite_manga build() => _build();

  _$GToggleFavoriteData_ToggleFavourite_manga _build() {
    _$GToggleFavoriteData_ToggleFavourite_manga _$result;
    try {
      _$result = _$v ??
          new _$GToggleFavoriteData_ToggleFavourite_manga._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GToggleFavoriteData_ToggleFavourite_manga', 'G__typename'),
              pageInfo: _pageInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GToggleFavoriteData_ToggleFavourite_manga',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavoriteData_ToggleFavourite_manga_pageInfo
    extends GToggleFavoriteData_ToggleFavourite_manga_pageInfo {
  @override
  final String G__typename;
  @override
  final int? total;

  factory _$GToggleFavoriteData_ToggleFavourite_manga_pageInfo(
          [void Function(
                  GToggleFavoriteData_ToggleFavourite_manga_pageInfoBuilder)?
              updates]) =>
      (new GToggleFavoriteData_ToggleFavourite_manga_pageInfoBuilder()
            ..update(updates))
          ._build();

  _$GToggleFavoriteData_ToggleFavourite_manga_pageInfo._(
      {required this.G__typename, this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToggleFavoriteData_ToggleFavourite_manga_pageInfo', 'G__typename');
  }

  @override
  GToggleFavoriteData_ToggleFavourite_manga_pageInfo rebuild(
          void Function(
                  GToggleFavoriteData_ToggleFavourite_manga_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavoriteData_ToggleFavourite_manga_pageInfoBuilder toBuilder() =>
      new GToggleFavoriteData_ToggleFavourite_manga_pageInfoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavoriteData_ToggleFavourite_manga_pageInfo &&
        G__typename == other.G__typename &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleFavoriteData_ToggleFavourite_manga_pageInfo')
          ..add('G__typename', G__typename)
          ..add('total', total))
        .toString();
  }
}

class GToggleFavoriteData_ToggleFavourite_manga_pageInfoBuilder
    implements
        Builder<GToggleFavoriteData_ToggleFavourite_manga_pageInfo,
            GToggleFavoriteData_ToggleFavourite_manga_pageInfoBuilder> {
  _$GToggleFavoriteData_ToggleFavourite_manga_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  GToggleFavoriteData_ToggleFavourite_manga_pageInfoBuilder() {
    GToggleFavoriteData_ToggleFavourite_manga_pageInfo._initializeBuilder(this);
  }

  GToggleFavoriteData_ToggleFavourite_manga_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavoriteData_ToggleFavourite_manga_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavoriteData_ToggleFavourite_manga_pageInfo;
  }

  @override
  void update(
      void Function(GToggleFavoriteData_ToggleFavourite_manga_pageInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavoriteData_ToggleFavourite_manga_pageInfo build() => _build();

  _$GToggleFavoriteData_ToggleFavourite_manga_pageInfo _build() {
    final _$result = _$v ??
        new _$GToggleFavoriteData_ToggleFavourite_manga_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GToggleFavoriteData_ToggleFavourite_manga_pageInfo',
                'G__typename'),
            total: total);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavoriteData_ToggleFavourite_characters
    extends GToggleFavoriteData_ToggleFavourite_characters {
  @override
  final String G__typename;
  @override
  final GToggleFavoriteData_ToggleFavourite_characters_pageInfo? pageInfo;

  factory _$GToggleFavoriteData_ToggleFavourite_characters(
          [void Function(GToggleFavoriteData_ToggleFavourite_charactersBuilder)?
              updates]) =>
      (new GToggleFavoriteData_ToggleFavourite_charactersBuilder()
            ..update(updates))
          ._build();

  _$GToggleFavoriteData_ToggleFavourite_characters._(
      {required this.G__typename, this.pageInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToggleFavoriteData_ToggleFavourite_characters', 'G__typename');
  }

  @override
  GToggleFavoriteData_ToggleFavourite_characters rebuild(
          void Function(GToggleFavoriteData_ToggleFavourite_charactersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavoriteData_ToggleFavourite_charactersBuilder toBuilder() =>
      new GToggleFavoriteData_ToggleFavourite_charactersBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavoriteData_ToggleFavourite_characters &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleFavoriteData_ToggleFavourite_characters')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo))
        .toString();
  }
}

class GToggleFavoriteData_ToggleFavourite_charactersBuilder
    implements
        Builder<GToggleFavoriteData_ToggleFavourite_characters,
            GToggleFavoriteData_ToggleFavourite_charactersBuilder> {
  _$GToggleFavoriteData_ToggleFavourite_characters? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GToggleFavoriteData_ToggleFavourite_characters_pageInfoBuilder? _pageInfo;
  GToggleFavoriteData_ToggleFavourite_characters_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??=
          new GToggleFavoriteData_ToggleFavourite_characters_pageInfoBuilder();
  set pageInfo(
          GToggleFavoriteData_ToggleFavourite_characters_pageInfoBuilder?
              pageInfo) =>
      _$this._pageInfo = pageInfo;

  GToggleFavoriteData_ToggleFavourite_charactersBuilder() {
    GToggleFavoriteData_ToggleFavourite_characters._initializeBuilder(this);
  }

  GToggleFavoriteData_ToggleFavourite_charactersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavoriteData_ToggleFavourite_characters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavoriteData_ToggleFavourite_characters;
  }

  @override
  void update(
      void Function(GToggleFavoriteData_ToggleFavourite_charactersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavoriteData_ToggleFavourite_characters build() => _build();

  _$GToggleFavoriteData_ToggleFavourite_characters _build() {
    _$GToggleFavoriteData_ToggleFavourite_characters _$result;
    try {
      _$result = _$v ??
          new _$GToggleFavoriteData_ToggleFavourite_characters._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GToggleFavoriteData_ToggleFavourite_characters',
                  'G__typename'),
              pageInfo: _pageInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GToggleFavoriteData_ToggleFavourite_characters',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavoriteData_ToggleFavourite_characters_pageInfo
    extends GToggleFavoriteData_ToggleFavourite_characters_pageInfo {
  @override
  final String G__typename;
  @override
  final int? total;

  factory _$GToggleFavoriteData_ToggleFavourite_characters_pageInfo(
          [void Function(
                  GToggleFavoriteData_ToggleFavourite_characters_pageInfoBuilder)?
              updates]) =>
      (new GToggleFavoriteData_ToggleFavourite_characters_pageInfoBuilder()
            ..update(updates))
          ._build();

  _$GToggleFavoriteData_ToggleFavourite_characters_pageInfo._(
      {required this.G__typename, this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GToggleFavoriteData_ToggleFavourite_characters_pageInfo',
        'G__typename');
  }

  @override
  GToggleFavoriteData_ToggleFavourite_characters_pageInfo rebuild(
          void Function(
                  GToggleFavoriteData_ToggleFavourite_characters_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavoriteData_ToggleFavourite_characters_pageInfoBuilder toBuilder() =>
      new GToggleFavoriteData_ToggleFavourite_characters_pageInfoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavoriteData_ToggleFavourite_characters_pageInfo &&
        G__typename == other.G__typename &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleFavoriteData_ToggleFavourite_characters_pageInfo')
          ..add('G__typename', G__typename)
          ..add('total', total))
        .toString();
  }
}

class GToggleFavoriteData_ToggleFavourite_characters_pageInfoBuilder
    implements
        Builder<GToggleFavoriteData_ToggleFavourite_characters_pageInfo,
            GToggleFavoriteData_ToggleFavourite_characters_pageInfoBuilder> {
  _$GToggleFavoriteData_ToggleFavourite_characters_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  GToggleFavoriteData_ToggleFavourite_characters_pageInfoBuilder() {
    GToggleFavoriteData_ToggleFavourite_characters_pageInfo._initializeBuilder(
        this);
  }

  GToggleFavoriteData_ToggleFavourite_characters_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavoriteData_ToggleFavourite_characters_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavoriteData_ToggleFavourite_characters_pageInfo;
  }

  @override
  void update(
      void Function(
              GToggleFavoriteData_ToggleFavourite_characters_pageInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavoriteData_ToggleFavourite_characters_pageInfo build() => _build();

  _$GToggleFavoriteData_ToggleFavourite_characters_pageInfo _build() {
    final _$result = _$v ??
        new _$GToggleFavoriteData_ToggleFavourite_characters_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GToggleFavoriteData_ToggleFavourite_characters_pageInfo',
                'G__typename'),
            total: total);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavoriteData_ToggleFavourite_staff
    extends GToggleFavoriteData_ToggleFavourite_staff {
  @override
  final String G__typename;
  @override
  final GToggleFavoriteData_ToggleFavourite_staff_pageInfo? pageInfo;

  factory _$GToggleFavoriteData_ToggleFavourite_staff(
          [void Function(GToggleFavoriteData_ToggleFavourite_staffBuilder)?
              updates]) =>
      (new GToggleFavoriteData_ToggleFavourite_staffBuilder()..update(updates))
          ._build();

  _$GToggleFavoriteData_ToggleFavourite_staff._(
      {required this.G__typename, this.pageInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToggleFavoriteData_ToggleFavourite_staff', 'G__typename');
  }

  @override
  GToggleFavoriteData_ToggleFavourite_staff rebuild(
          void Function(GToggleFavoriteData_ToggleFavourite_staffBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavoriteData_ToggleFavourite_staffBuilder toBuilder() =>
      new GToggleFavoriteData_ToggleFavourite_staffBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavoriteData_ToggleFavourite_staff &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleFavoriteData_ToggleFavourite_staff')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo))
        .toString();
  }
}

class GToggleFavoriteData_ToggleFavourite_staffBuilder
    implements
        Builder<GToggleFavoriteData_ToggleFavourite_staff,
            GToggleFavoriteData_ToggleFavourite_staffBuilder> {
  _$GToggleFavoriteData_ToggleFavourite_staff? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GToggleFavoriteData_ToggleFavourite_staff_pageInfoBuilder? _pageInfo;
  GToggleFavoriteData_ToggleFavourite_staff_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??=
          new GToggleFavoriteData_ToggleFavourite_staff_pageInfoBuilder();
  set pageInfo(
          GToggleFavoriteData_ToggleFavourite_staff_pageInfoBuilder?
              pageInfo) =>
      _$this._pageInfo = pageInfo;

  GToggleFavoriteData_ToggleFavourite_staffBuilder() {
    GToggleFavoriteData_ToggleFavourite_staff._initializeBuilder(this);
  }

  GToggleFavoriteData_ToggleFavourite_staffBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavoriteData_ToggleFavourite_staff other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavoriteData_ToggleFavourite_staff;
  }

  @override
  void update(
      void Function(GToggleFavoriteData_ToggleFavourite_staffBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavoriteData_ToggleFavourite_staff build() => _build();

  _$GToggleFavoriteData_ToggleFavourite_staff _build() {
    _$GToggleFavoriteData_ToggleFavourite_staff _$result;
    try {
      _$result = _$v ??
          new _$GToggleFavoriteData_ToggleFavourite_staff._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GToggleFavoriteData_ToggleFavourite_staff', 'G__typename'),
              pageInfo: _pageInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GToggleFavoriteData_ToggleFavourite_staff',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavoriteData_ToggleFavourite_staff_pageInfo
    extends GToggleFavoriteData_ToggleFavourite_staff_pageInfo {
  @override
  final String G__typename;
  @override
  final int? total;

  factory _$GToggleFavoriteData_ToggleFavourite_staff_pageInfo(
          [void Function(
                  GToggleFavoriteData_ToggleFavourite_staff_pageInfoBuilder)?
              updates]) =>
      (new GToggleFavoriteData_ToggleFavourite_staff_pageInfoBuilder()
            ..update(updates))
          ._build();

  _$GToggleFavoriteData_ToggleFavourite_staff_pageInfo._(
      {required this.G__typename, this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToggleFavoriteData_ToggleFavourite_staff_pageInfo', 'G__typename');
  }

  @override
  GToggleFavoriteData_ToggleFavourite_staff_pageInfo rebuild(
          void Function(
                  GToggleFavoriteData_ToggleFavourite_staff_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavoriteData_ToggleFavourite_staff_pageInfoBuilder toBuilder() =>
      new GToggleFavoriteData_ToggleFavourite_staff_pageInfoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavoriteData_ToggleFavourite_staff_pageInfo &&
        G__typename == other.G__typename &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleFavoriteData_ToggleFavourite_staff_pageInfo')
          ..add('G__typename', G__typename)
          ..add('total', total))
        .toString();
  }
}

class GToggleFavoriteData_ToggleFavourite_staff_pageInfoBuilder
    implements
        Builder<GToggleFavoriteData_ToggleFavourite_staff_pageInfo,
            GToggleFavoriteData_ToggleFavourite_staff_pageInfoBuilder> {
  _$GToggleFavoriteData_ToggleFavourite_staff_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  GToggleFavoriteData_ToggleFavourite_staff_pageInfoBuilder() {
    GToggleFavoriteData_ToggleFavourite_staff_pageInfo._initializeBuilder(this);
  }

  GToggleFavoriteData_ToggleFavourite_staff_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavoriteData_ToggleFavourite_staff_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavoriteData_ToggleFavourite_staff_pageInfo;
  }

  @override
  void update(
      void Function(GToggleFavoriteData_ToggleFavourite_staff_pageInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavoriteData_ToggleFavourite_staff_pageInfo build() => _build();

  _$GToggleFavoriteData_ToggleFavourite_staff_pageInfo _build() {
    final _$result = _$v ??
        new _$GToggleFavoriteData_ToggleFavourite_staff_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GToggleFavoriteData_ToggleFavourite_staff_pageInfo',
                'G__typename'),
            total: total);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavoriteData_ToggleFavourite_studios
    extends GToggleFavoriteData_ToggleFavourite_studios {
  @override
  final String G__typename;
  @override
  final GToggleFavoriteData_ToggleFavourite_studios_pageInfo? pageInfo;

  factory _$GToggleFavoriteData_ToggleFavourite_studios(
          [void Function(GToggleFavoriteData_ToggleFavourite_studiosBuilder)?
              updates]) =>
      (new GToggleFavoriteData_ToggleFavourite_studiosBuilder()
            ..update(updates))
          ._build();

  _$GToggleFavoriteData_ToggleFavourite_studios._(
      {required this.G__typename, this.pageInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToggleFavoriteData_ToggleFavourite_studios', 'G__typename');
  }

  @override
  GToggleFavoriteData_ToggleFavourite_studios rebuild(
          void Function(GToggleFavoriteData_ToggleFavourite_studiosBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavoriteData_ToggleFavourite_studiosBuilder toBuilder() =>
      new GToggleFavoriteData_ToggleFavourite_studiosBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavoriteData_ToggleFavourite_studios &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleFavoriteData_ToggleFavourite_studios')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo))
        .toString();
  }
}

class GToggleFavoriteData_ToggleFavourite_studiosBuilder
    implements
        Builder<GToggleFavoriteData_ToggleFavourite_studios,
            GToggleFavoriteData_ToggleFavourite_studiosBuilder> {
  _$GToggleFavoriteData_ToggleFavourite_studios? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GToggleFavoriteData_ToggleFavourite_studios_pageInfoBuilder? _pageInfo;
  GToggleFavoriteData_ToggleFavourite_studios_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??=
          new GToggleFavoriteData_ToggleFavourite_studios_pageInfoBuilder();
  set pageInfo(
          GToggleFavoriteData_ToggleFavourite_studios_pageInfoBuilder?
              pageInfo) =>
      _$this._pageInfo = pageInfo;

  GToggleFavoriteData_ToggleFavourite_studiosBuilder() {
    GToggleFavoriteData_ToggleFavourite_studios._initializeBuilder(this);
  }

  GToggleFavoriteData_ToggleFavourite_studiosBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavoriteData_ToggleFavourite_studios other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavoriteData_ToggleFavourite_studios;
  }

  @override
  void update(
      void Function(GToggleFavoriteData_ToggleFavourite_studiosBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavoriteData_ToggleFavourite_studios build() => _build();

  _$GToggleFavoriteData_ToggleFavourite_studios _build() {
    _$GToggleFavoriteData_ToggleFavourite_studios _$result;
    try {
      _$result = _$v ??
          new _$GToggleFavoriteData_ToggleFavourite_studios._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GToggleFavoriteData_ToggleFavourite_studios',
                  'G__typename'),
              pageInfo: _pageInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GToggleFavoriteData_ToggleFavourite_studios',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavoriteData_ToggleFavourite_studios_pageInfo
    extends GToggleFavoriteData_ToggleFavourite_studios_pageInfo {
  @override
  final String G__typename;
  @override
  final int? total;

  factory _$GToggleFavoriteData_ToggleFavourite_studios_pageInfo(
          [void Function(
                  GToggleFavoriteData_ToggleFavourite_studios_pageInfoBuilder)?
              updates]) =>
      (new GToggleFavoriteData_ToggleFavourite_studios_pageInfoBuilder()
            ..update(updates))
          ._build();

  _$GToggleFavoriteData_ToggleFavourite_studios_pageInfo._(
      {required this.G__typename, this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToggleFavoriteData_ToggleFavourite_studios_pageInfo', 'G__typename');
  }

  @override
  GToggleFavoriteData_ToggleFavourite_studios_pageInfo rebuild(
          void Function(
                  GToggleFavoriteData_ToggleFavourite_studios_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavoriteData_ToggleFavourite_studios_pageInfoBuilder toBuilder() =>
      new GToggleFavoriteData_ToggleFavourite_studios_pageInfoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavoriteData_ToggleFavourite_studios_pageInfo &&
        G__typename == other.G__typename &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleFavoriteData_ToggleFavourite_studios_pageInfo')
          ..add('G__typename', G__typename)
          ..add('total', total))
        .toString();
  }
}

class GToggleFavoriteData_ToggleFavourite_studios_pageInfoBuilder
    implements
        Builder<GToggleFavoriteData_ToggleFavourite_studios_pageInfo,
            GToggleFavoriteData_ToggleFavourite_studios_pageInfoBuilder> {
  _$GToggleFavoriteData_ToggleFavourite_studios_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  GToggleFavoriteData_ToggleFavourite_studios_pageInfoBuilder() {
    GToggleFavoriteData_ToggleFavourite_studios_pageInfo._initializeBuilder(
        this);
  }

  GToggleFavoriteData_ToggleFavourite_studios_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavoriteData_ToggleFavourite_studios_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavoriteData_ToggleFavourite_studios_pageInfo;
  }

  @override
  void update(
      void Function(
              GToggleFavoriteData_ToggleFavourite_studios_pageInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavoriteData_ToggleFavourite_studios_pageInfo build() => _build();

  _$GToggleFavoriteData_ToggleFavourite_studios_pageInfo _build() {
    final _$result = _$v ??
        new _$GToggleFavoriteData_ToggleFavourite_studios_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GToggleFavoriteData_ToggleFavourite_studios_pageInfo',
                'G__typename'),
            total: total);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
