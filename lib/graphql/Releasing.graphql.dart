import 'Media.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Fragment$ReleasingMedia implements Fragment$BasicMedia {
  Fragment$ReleasingMedia({
    this.id,
    this.type,
    this.isAdult,
    this.genres,
    this.episodes,
    this.format,
    this.chapters,
    this.title,
    this.coverImage,
    this.description,
    this.$__typename = 'Media',
    this.nextAiringEpisode,
    this.airingSchedule,
  });

  factory Fragment$ReleasingMedia.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$isAdult = json['isAdult'];
    final l$genres = json['genres'];
    final l$episodes = json['episodes'];
    final l$format = json['format'];
    final l$chapters = json['chapters'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    final l$nextAiringEpisode = json['nextAiringEpisode'];
    final l$airingSchedule = json['airingSchedule'];
    return Fragment$ReleasingMedia(
      id: (l$id as int?),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      isAdult: (l$isAdult as bool?),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      episodes: (l$episodes as int?),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      chapters: (l$chapters as int?),
      title: l$title == null
          ? null
          : Fragment$ReleasingMedia$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Fragment$ReleasingMedia$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      description: (l$description as String?),
      $__typename: (l$$__typename as String),
      nextAiringEpisode: l$nextAiringEpisode == null
          ? null
          : Fragment$ReleasingMedia$nextAiringEpisode.fromJson(
              (l$nextAiringEpisode as Map<String, dynamic>)),
      airingSchedule: l$airingSchedule == null
          ? null
          : Fragment$ReleasingMedia$airingSchedule.fromJson(
              (l$airingSchedule as Map<String, dynamic>)),
    );
  }

  final int? id;

  final Enum$MediaType? type;

  final bool? isAdult;

  final List<String?>? genres;

  final int? episodes;

  final Enum$MediaFormat? format;

  final int? chapters;

  final Fragment$ReleasingMedia$title? title;

  final Fragment$ReleasingMedia$coverImage? coverImage;

  final String? description;

  final String $__typename;

  final Fragment$ReleasingMedia$nextAiringEpisode? nextAiringEpisode;

  final Fragment$ReleasingMedia$airingSchedule? airingSchedule;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$nextAiringEpisode = nextAiringEpisode;
    _resultData['nextAiringEpisode'] = l$nextAiringEpisode?.toJson();
    final l$airingSchedule = airingSchedule;
    _resultData['airingSchedule'] = l$airingSchedule?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$isAdult = isAdult;
    final l$genres = genres;
    final l$episodes = episodes;
    final l$format = format;
    final l$chapters = chapters;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$description = description;
    final l$$__typename = $__typename;
    final l$nextAiringEpisode = nextAiringEpisode;
    final l$airingSchedule = airingSchedule;
    return Object.hashAll([
      l$id,
      l$type,
      l$isAdult,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$episodes,
      l$format,
      l$chapters,
      l$title,
      l$coverImage,
      l$description,
      l$$__typename,
      l$nextAiringEpisode,
      l$airingSchedule,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReleasingMedia) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (l$isAdult != lOther$isAdult) {
      return false;
    }
    final l$genres = genres;
    final lOther$genres = other.genres;
    if (l$genres != null && lOther$genres != null) {
      if (l$genres.length != lOther$genres.length) {
        return false;
      }
      for (int i = 0; i < l$genres.length; i++) {
        final l$genres$entry = l$genres[i];
        final lOther$genres$entry = lOther$genres[i];
        if (l$genres$entry != lOther$genres$entry) {
          return false;
        }
      }
    } else if (l$genres != lOther$genres) {
      return false;
    }
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$nextAiringEpisode = nextAiringEpisode;
    final lOther$nextAiringEpisode = other.nextAiringEpisode;
    if (l$nextAiringEpisode != lOther$nextAiringEpisode) {
      return false;
    }
    final l$airingSchedule = airingSchedule;
    final lOther$airingSchedule = other.airingSchedule;
    if (l$airingSchedule != lOther$airingSchedule) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ReleasingMedia on Fragment$ReleasingMedia {
  CopyWith$Fragment$ReleasingMedia<Fragment$ReleasingMedia> get copyWith =>
      CopyWith$Fragment$ReleasingMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ReleasingMedia<TRes> {
  factory CopyWith$Fragment$ReleasingMedia(
    Fragment$ReleasingMedia instance,
    TRes Function(Fragment$ReleasingMedia) then,
  ) = _CopyWithImpl$Fragment$ReleasingMedia;

  factory CopyWith$Fragment$ReleasingMedia.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReleasingMedia;

  TRes call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    int? episodes,
    Enum$MediaFormat? format,
    int? chapters,
    Fragment$ReleasingMedia$title? title,
    Fragment$ReleasingMedia$coverImage? coverImage,
    String? description,
    String? $__typename,
    Fragment$ReleasingMedia$nextAiringEpisode? nextAiringEpisode,
    Fragment$ReleasingMedia$airingSchedule? airingSchedule,
  });
  CopyWith$Fragment$ReleasingMedia$title<TRes> get title;
  CopyWith$Fragment$ReleasingMedia$coverImage<TRes> get coverImage;
  CopyWith$Fragment$ReleasingMedia$nextAiringEpisode<TRes>
      get nextAiringEpisode;
  CopyWith$Fragment$ReleasingMedia$airingSchedule<TRes> get airingSchedule;
}

class _CopyWithImpl$Fragment$ReleasingMedia<TRes>
    implements CopyWith$Fragment$ReleasingMedia<TRes> {
  _CopyWithImpl$Fragment$ReleasingMedia(
    this._instance,
    this._then,
  );

  final Fragment$ReleasingMedia _instance;

  final TRes Function(Fragment$ReleasingMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? isAdult = _undefined,
    Object? genres = _undefined,
    Object? episodes = _undefined,
    Object? format = _undefined,
    Object? chapters = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
    Object? nextAiringEpisode = _undefined,
    Object? airingSchedule = _undefined,
  }) =>
      _then(Fragment$ReleasingMedia(
        id: id == _undefined ? _instance.id : (id as int?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$ReleasingMedia$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$ReleasingMedia$coverImage?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        nextAiringEpisode: nextAiringEpisode == _undefined
            ? _instance.nextAiringEpisode
            : (nextAiringEpisode as Fragment$ReleasingMedia$nextAiringEpisode?),
        airingSchedule: airingSchedule == _undefined
            ? _instance.airingSchedule
            : (airingSchedule as Fragment$ReleasingMedia$airingSchedule?),
      ));
  CopyWith$Fragment$ReleasingMedia$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$ReleasingMedia$title.stub(_then(_instance))
        : CopyWith$Fragment$ReleasingMedia$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$ReleasingMedia$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$ReleasingMedia$coverImage.stub(_then(_instance))
        : CopyWith$Fragment$ReleasingMedia$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Fragment$ReleasingMedia$nextAiringEpisode<TRes>
      get nextAiringEpisode {
    final local$nextAiringEpisode = _instance.nextAiringEpisode;
    return local$nextAiringEpisode == null
        ? CopyWith$Fragment$ReleasingMedia$nextAiringEpisode.stub(
            _then(_instance))
        : CopyWith$Fragment$ReleasingMedia$nextAiringEpisode(
            local$nextAiringEpisode, (e) => call(nextAiringEpisode: e));
  }

  CopyWith$Fragment$ReleasingMedia$airingSchedule<TRes> get airingSchedule {
    final local$airingSchedule = _instance.airingSchedule;
    return local$airingSchedule == null
        ? CopyWith$Fragment$ReleasingMedia$airingSchedule.stub(_then(_instance))
        : CopyWith$Fragment$ReleasingMedia$airingSchedule(
            local$airingSchedule, (e) => call(airingSchedule: e));
  }
}

class _CopyWithStubImpl$Fragment$ReleasingMedia<TRes>
    implements CopyWith$Fragment$ReleasingMedia<TRes> {
  _CopyWithStubImpl$Fragment$ReleasingMedia(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    int? episodes,
    Enum$MediaFormat? format,
    int? chapters,
    Fragment$ReleasingMedia$title? title,
    Fragment$ReleasingMedia$coverImage? coverImage,
    String? description,
    String? $__typename,
    Fragment$ReleasingMedia$nextAiringEpisode? nextAiringEpisode,
    Fragment$ReleasingMedia$airingSchedule? airingSchedule,
  }) =>
      _res;
  CopyWith$Fragment$ReleasingMedia$title<TRes> get title =>
      CopyWith$Fragment$ReleasingMedia$title.stub(_res);
  CopyWith$Fragment$ReleasingMedia$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$ReleasingMedia$coverImage.stub(_res);
  CopyWith$Fragment$ReleasingMedia$nextAiringEpisode<TRes>
      get nextAiringEpisode =>
          CopyWith$Fragment$ReleasingMedia$nextAiringEpisode.stub(_res);
  CopyWith$Fragment$ReleasingMedia$airingSchedule<TRes> get airingSchedule =>
      CopyWith$Fragment$ReleasingMedia$airingSchedule.stub(_res);
}

const fragmentDefinitionReleasingMedia = FragmentDefinitionNode(
  name: NameNode(value: 'ReleasingMedia'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'BasicMedia'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: 'nextAiringEpisode'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'airingAt'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'timeUntilAiring'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'episode'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'airingSchedule'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'notYetAired'),
          value: BooleanValueNode(value: false),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'edges'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'node'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                  name: NameNode(value: 'airingAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'timeUntilAiring'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'episode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ]),
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentReleasingMedia = DocumentNode(definitions: [
  fragmentDefinitionReleasingMedia,
  fragmentDefinitionBasicMedia,
]);

extension ClientExtension$Fragment$ReleasingMedia on graphql.GraphQLClient {
  void writeFragment$ReleasingMedia({
    required Fragment$ReleasingMedia data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ReleasingMedia',
            document: documentNodeFragmentReleasingMedia,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ReleasingMedia? readFragment$ReleasingMedia({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ReleasingMedia',
          document: documentNodeFragmentReleasingMedia,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ReleasingMedia.fromJson(result);
  }
}

class Fragment$ReleasingMedia$title implements Fragment$BasicMedia$title {
  Fragment$ReleasingMedia$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$ReleasingMedia$title.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$ReleasingMedia$title(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReleasingMedia$title) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ReleasingMedia$title
    on Fragment$ReleasingMedia$title {
  CopyWith$Fragment$ReleasingMedia$title<Fragment$ReleasingMedia$title>
      get copyWith => CopyWith$Fragment$ReleasingMedia$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReleasingMedia$title<TRes> {
  factory CopyWith$Fragment$ReleasingMedia$title(
    Fragment$ReleasingMedia$title instance,
    TRes Function(Fragment$ReleasingMedia$title) then,
  ) = _CopyWithImpl$Fragment$ReleasingMedia$title;

  factory CopyWith$Fragment$ReleasingMedia$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReleasingMedia$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ReleasingMedia$title<TRes>
    implements CopyWith$Fragment$ReleasingMedia$title<TRes> {
  _CopyWithImpl$Fragment$ReleasingMedia$title(
    this._instance,
    this._then,
  );

  final Fragment$ReleasingMedia$title _instance;

  final TRes Function(Fragment$ReleasingMedia$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReleasingMedia$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ReleasingMedia$title<TRes>
    implements CopyWith$Fragment$ReleasingMedia$title<TRes> {
  _CopyWithStubImpl$Fragment$ReleasingMedia$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ReleasingMedia$coverImage
    implements Fragment$BasicMedia$coverImage {
  Fragment$ReleasingMedia$coverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$ReleasingMedia$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$ReleasingMedia$coverImage(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReleasingMedia$coverImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ReleasingMedia$coverImage
    on Fragment$ReleasingMedia$coverImage {
  CopyWith$Fragment$ReleasingMedia$coverImage<
          Fragment$ReleasingMedia$coverImage>
      get copyWith => CopyWith$Fragment$ReleasingMedia$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReleasingMedia$coverImage<TRes> {
  factory CopyWith$Fragment$ReleasingMedia$coverImage(
    Fragment$ReleasingMedia$coverImage instance,
    TRes Function(Fragment$ReleasingMedia$coverImage) then,
  ) = _CopyWithImpl$Fragment$ReleasingMedia$coverImage;

  factory CopyWith$Fragment$ReleasingMedia$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReleasingMedia$coverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ReleasingMedia$coverImage<TRes>
    implements CopyWith$Fragment$ReleasingMedia$coverImage<TRes> {
  _CopyWithImpl$Fragment$ReleasingMedia$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$ReleasingMedia$coverImage _instance;

  final TRes Function(Fragment$ReleasingMedia$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReleasingMedia$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ReleasingMedia$coverImage<TRes>
    implements CopyWith$Fragment$ReleasingMedia$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$ReleasingMedia$coverImage(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ReleasingMedia$nextAiringEpisode {
  Fragment$ReleasingMedia$nextAiringEpisode({
    required this.airingAt,
    required this.timeUntilAiring,
    required this.episode,
    this.$__typename = 'AiringSchedule',
  });

  factory Fragment$ReleasingMedia$nextAiringEpisode.fromJson(
      Map<String, dynamic> json) {
    final l$airingAt = json['airingAt'];
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Fragment$ReleasingMedia$nextAiringEpisode(
      airingAt: (l$airingAt as int),
      timeUntilAiring: (l$timeUntilAiring as int),
      episode: (l$episode as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int airingAt;

  final int timeUntilAiring;

  final int episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$airingAt = airingAt;
    _resultData['airingAt'] = l$airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    _resultData['timeUntilAiring'] = l$timeUntilAiring;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$airingAt = airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$airingAt,
      l$timeUntilAiring,
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReleasingMedia$nextAiringEpisode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$airingAt = airingAt;
    final lOther$airingAt = other.airingAt;
    if (l$airingAt != lOther$airingAt) {
      return false;
    }
    final l$timeUntilAiring = timeUntilAiring;
    final lOther$timeUntilAiring = other.timeUntilAiring;
    if (l$timeUntilAiring != lOther$timeUntilAiring) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ReleasingMedia$nextAiringEpisode
    on Fragment$ReleasingMedia$nextAiringEpisode {
  CopyWith$Fragment$ReleasingMedia$nextAiringEpisode<
          Fragment$ReleasingMedia$nextAiringEpisode>
      get copyWith => CopyWith$Fragment$ReleasingMedia$nextAiringEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReleasingMedia$nextAiringEpisode<TRes> {
  factory CopyWith$Fragment$ReleasingMedia$nextAiringEpisode(
    Fragment$ReleasingMedia$nextAiringEpisode instance,
    TRes Function(Fragment$ReleasingMedia$nextAiringEpisode) then,
  ) = _CopyWithImpl$Fragment$ReleasingMedia$nextAiringEpisode;

  factory CopyWith$Fragment$ReleasingMedia$nextAiringEpisode.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReleasingMedia$nextAiringEpisode;

  TRes call({
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ReleasingMedia$nextAiringEpisode<TRes>
    implements CopyWith$Fragment$ReleasingMedia$nextAiringEpisode<TRes> {
  _CopyWithImpl$Fragment$ReleasingMedia$nextAiringEpisode(
    this._instance,
    this._then,
  );

  final Fragment$ReleasingMedia$nextAiringEpisode _instance;

  final TRes Function(Fragment$ReleasingMedia$nextAiringEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? airingAt = _undefined,
    Object? timeUntilAiring = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReleasingMedia$nextAiringEpisode(
        airingAt: airingAt == _undefined || airingAt == null
            ? _instance.airingAt
            : (airingAt as int),
        timeUntilAiring:
            timeUntilAiring == _undefined || timeUntilAiring == null
                ? _instance.timeUntilAiring
                : (timeUntilAiring as int),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ReleasingMedia$nextAiringEpisode<TRes>
    implements CopyWith$Fragment$ReleasingMedia$nextAiringEpisode<TRes> {
  _CopyWithStubImpl$Fragment$ReleasingMedia$nextAiringEpisode(this._res);

  TRes _res;

  call({
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ReleasingMedia$airingSchedule {
  Fragment$ReleasingMedia$airingSchedule({
    this.edges,
    this.$__typename = 'AiringScheduleConnection',
  });

  factory Fragment$ReleasingMedia$airingSchedule.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$ReleasingMedia$airingSchedule(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ReleasingMedia$airingSchedule$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ReleasingMedia$airingSchedule$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReleasingMedia$airingSchedule) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ReleasingMedia$airingSchedule
    on Fragment$ReleasingMedia$airingSchedule {
  CopyWith$Fragment$ReleasingMedia$airingSchedule<
          Fragment$ReleasingMedia$airingSchedule>
      get copyWith => CopyWith$Fragment$ReleasingMedia$airingSchedule(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReleasingMedia$airingSchedule<TRes> {
  factory CopyWith$Fragment$ReleasingMedia$airingSchedule(
    Fragment$ReleasingMedia$airingSchedule instance,
    TRes Function(Fragment$ReleasingMedia$airingSchedule) then,
  ) = _CopyWithImpl$Fragment$ReleasingMedia$airingSchedule;

  factory CopyWith$Fragment$ReleasingMedia$airingSchedule.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReleasingMedia$airingSchedule;

  TRes call({
    List<Fragment$ReleasingMedia$airingSchedule$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$ReleasingMedia$airingSchedule$edges?>? Function(
              Iterable<
                  CopyWith$Fragment$ReleasingMedia$airingSchedule$edges<
                      Fragment$ReleasingMedia$airingSchedule$edges>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$ReleasingMedia$airingSchedule<TRes>
    implements CopyWith$Fragment$ReleasingMedia$airingSchedule<TRes> {
  _CopyWithImpl$Fragment$ReleasingMedia$airingSchedule(
    this._instance,
    this._then,
  );

  final Fragment$ReleasingMedia$airingSchedule _instance;

  final TRes Function(Fragment$ReleasingMedia$airingSchedule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReleasingMedia$airingSchedule(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Fragment$ReleasingMedia$airingSchedule$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Fragment$ReleasingMedia$airingSchedule$edges?>? Function(
                  Iterable<
                      CopyWith$Fragment$ReleasingMedia$airingSchedule$edges<
                          Fragment$ReleasingMedia$airingSchedule$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Fragment$ReleasingMedia$airingSchedule$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$ReleasingMedia$airingSchedule<TRes>
    implements CopyWith$Fragment$ReleasingMedia$airingSchedule<TRes> {
  _CopyWithStubImpl$Fragment$ReleasingMedia$airingSchedule(this._res);

  TRes _res;

  call({
    List<Fragment$ReleasingMedia$airingSchedule$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Fragment$ReleasingMedia$airingSchedule$edges {
  Fragment$ReleasingMedia$airingSchedule$edges({
    this.node,
    this.$__typename = 'AiringScheduleEdge',
  });

  factory Fragment$ReleasingMedia$airingSchedule$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$ReleasingMedia$airingSchedule$edges(
      node: l$node == null
          ? null
          : Fragment$ReleasingMedia$airingSchedule$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ReleasingMedia$airingSchedule$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReleasingMedia$airingSchedule$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ReleasingMedia$airingSchedule$edges
    on Fragment$ReleasingMedia$airingSchedule$edges {
  CopyWith$Fragment$ReleasingMedia$airingSchedule$edges<
          Fragment$ReleasingMedia$airingSchedule$edges>
      get copyWith => CopyWith$Fragment$ReleasingMedia$airingSchedule$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReleasingMedia$airingSchedule$edges<TRes> {
  factory CopyWith$Fragment$ReleasingMedia$airingSchedule$edges(
    Fragment$ReleasingMedia$airingSchedule$edges instance,
    TRes Function(Fragment$ReleasingMedia$airingSchedule$edges) then,
  ) = _CopyWithImpl$Fragment$ReleasingMedia$airingSchedule$edges;

  factory CopyWith$Fragment$ReleasingMedia$airingSchedule$edges.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReleasingMedia$airingSchedule$edges;

  TRes call({
    Fragment$ReleasingMedia$airingSchedule$edges$node? node,
    String? $__typename,
  });
  CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node<TRes> get node;
}

class _CopyWithImpl$Fragment$ReleasingMedia$airingSchedule$edges<TRes>
    implements CopyWith$Fragment$ReleasingMedia$airingSchedule$edges<TRes> {
  _CopyWithImpl$Fragment$ReleasingMedia$airingSchedule$edges(
    this._instance,
    this._then,
  );

  final Fragment$ReleasingMedia$airingSchedule$edges _instance;

  final TRes Function(Fragment$ReleasingMedia$airingSchedule$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReleasingMedia$airingSchedule$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$ReleasingMedia$airingSchedule$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node.stub(
            _then(_instance))
        : CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$ReleasingMedia$airingSchedule$edges<TRes>
    implements CopyWith$Fragment$ReleasingMedia$airingSchedule$edges<TRes> {
  _CopyWithStubImpl$Fragment$ReleasingMedia$airingSchedule$edges(this._res);

  TRes _res;

  call({
    Fragment$ReleasingMedia$airingSchedule$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node<TRes> get node =>
      CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node.stub(_res);
}

class Fragment$ReleasingMedia$airingSchedule$edges$node {
  Fragment$ReleasingMedia$airingSchedule$edges$node({
    required this.airingAt,
    required this.timeUntilAiring,
    required this.episode,
    this.$__typename = 'AiringSchedule',
  });

  factory Fragment$ReleasingMedia$airingSchedule$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$airingAt = json['airingAt'];
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Fragment$ReleasingMedia$airingSchedule$edges$node(
      airingAt: (l$airingAt as int),
      timeUntilAiring: (l$timeUntilAiring as int),
      episode: (l$episode as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int airingAt;

  final int timeUntilAiring;

  final int episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$airingAt = airingAt;
    _resultData['airingAt'] = l$airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    _resultData['timeUntilAiring'] = l$timeUntilAiring;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$airingAt = airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$airingAt,
      l$timeUntilAiring,
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReleasingMedia$airingSchedule$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$airingAt = airingAt;
    final lOther$airingAt = other.airingAt;
    if (l$airingAt != lOther$airingAt) {
      return false;
    }
    final l$timeUntilAiring = timeUntilAiring;
    final lOther$timeUntilAiring = other.timeUntilAiring;
    if (l$timeUntilAiring != lOther$timeUntilAiring) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ReleasingMedia$airingSchedule$edges$node
    on Fragment$ReleasingMedia$airingSchedule$edges$node {
  CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node<
          Fragment$ReleasingMedia$airingSchedule$edges$node>
      get copyWith =>
          CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node<
    TRes> {
  factory CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node(
    Fragment$ReleasingMedia$airingSchedule$edges$node instance,
    TRes Function(Fragment$ReleasingMedia$airingSchedule$edges$node) then,
  ) = _CopyWithImpl$Fragment$ReleasingMedia$airingSchedule$edges$node;

  factory CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$ReleasingMedia$airingSchedule$edges$node;

  TRes call({
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ReleasingMedia$airingSchedule$edges$node<TRes>
    implements
        CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node<TRes> {
  _CopyWithImpl$Fragment$ReleasingMedia$airingSchedule$edges$node(
    this._instance,
    this._then,
  );

  final Fragment$ReleasingMedia$airingSchedule$edges$node _instance;

  final TRes Function(Fragment$ReleasingMedia$airingSchedule$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? airingAt = _undefined,
    Object? timeUntilAiring = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReleasingMedia$airingSchedule$edges$node(
        airingAt: airingAt == _undefined || airingAt == null
            ? _instance.airingAt
            : (airingAt as int),
        timeUntilAiring:
            timeUntilAiring == _undefined || timeUntilAiring == null
                ? _instance.timeUntilAiring
                : (timeUntilAiring as int),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ReleasingMedia$airingSchedule$edges$node<TRes>
    implements
        CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node<TRes> {
  _CopyWithStubImpl$Fragment$ReleasingMedia$airingSchedule$edges$node(
      this._res);

  TRes _res;

  call({
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$Releasing {
  factory Variables$Query$Releasing({
    int? page,
    int? perPage,
  }) =>
      Variables$Query$Releasing._({
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
      });

  Variables$Query$Releasing._(this._$data);

  factory Variables$Query$Releasing.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    return Variables$Query$Releasing._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);
  int? get perPage => (_$data['perPage'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('perPage')) {
      final l$perPage = perPage;
      result$data['perPage'] = l$perPage;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Releasing<Variables$Query$Releasing> get copyWith =>
      CopyWith$Variables$Query$Releasing(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Releasing) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    final l$perPage = perPage;
    final lOther$perPage = other.perPage;
    if (_$data.containsKey('perPage') != other._$data.containsKey('perPage')) {
      return false;
    }
    if (l$perPage != lOther$perPage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$perPage = perPage;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Releasing<TRes> {
  factory CopyWith$Variables$Query$Releasing(
    Variables$Query$Releasing instance,
    TRes Function(Variables$Query$Releasing) then,
  ) = _CopyWithImpl$Variables$Query$Releasing;

  factory CopyWith$Variables$Query$Releasing.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Releasing;

  TRes call({
    int? page,
    int? perPage,
  });
}

class _CopyWithImpl$Variables$Query$Releasing<TRes>
    implements CopyWith$Variables$Query$Releasing<TRes> {
  _CopyWithImpl$Variables$Query$Releasing(
    this._instance,
    this._then,
  );

  final Variables$Query$Releasing _instance;

  final TRes Function(Variables$Query$Releasing) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? perPage = _undefined,
  }) =>
      _then(Variables$Query$Releasing._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Releasing<TRes>
    implements CopyWith$Variables$Query$Releasing<TRes> {
  _CopyWithStubImpl$Variables$Query$Releasing(this._res);

  TRes _res;

  call({
    int? page,
    int? perPage,
  }) =>
      _res;
}

class Query$Releasing {
  Query$Releasing({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$Releasing.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$Releasing(
      Page: l$Page == null
          ? null
          : Query$Releasing$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Releasing$Page? Page;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Page = Page;
    _resultData['Page'] = l$Page?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Page = Page;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Page,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Releasing) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Page = Page;
    final lOther$Page = other.Page;
    if (l$Page != lOther$Page) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Releasing on Query$Releasing {
  CopyWith$Query$Releasing<Query$Releasing> get copyWith =>
      CopyWith$Query$Releasing(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Releasing<TRes> {
  factory CopyWith$Query$Releasing(
    Query$Releasing instance,
    TRes Function(Query$Releasing) then,
  ) = _CopyWithImpl$Query$Releasing;

  factory CopyWith$Query$Releasing.stub(TRes res) =
      _CopyWithStubImpl$Query$Releasing;

  TRes call({
    Query$Releasing$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$Releasing$Page<TRes> get Page;
}

class _CopyWithImpl$Query$Releasing<TRes>
    implements CopyWith$Query$Releasing<TRes> {
  _CopyWithImpl$Query$Releasing(
    this._instance,
    this._then,
  );

  final Query$Releasing _instance;

  final TRes Function(Query$Releasing) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Releasing(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$Releasing$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Releasing$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$Releasing$Page.stub(_then(_instance))
        : CopyWith$Query$Releasing$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$Releasing<TRes>
    implements CopyWith$Query$Releasing<TRes> {
  _CopyWithStubImpl$Query$Releasing(this._res);

  TRes _res;

  call({
    Query$Releasing$Page? Page,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Releasing$Page<TRes> get Page =>
      CopyWith$Query$Releasing$Page.stub(_res);
}

const documentNodeQueryReleasing = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Releasing'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'perPage')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: VariableNode(name: NameNode(value: 'perPage')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'currentPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'onList'),
                value: BooleanValueNode(value: true),
              ),
              ArgumentNode(
                name: NameNode(value: 'status_in'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'RELEASING')),
                  EnumValueNode(name: NameNode(value: 'NOT_YET_RELEASED')),
                ]),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ReleasingMedia'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionReleasingMedia,
  fragmentDefinitionBasicMedia,
]);
Query$Releasing _parserFn$Query$Releasing(Map<String, dynamic> data) =>
    Query$Releasing.fromJson(data);
typedef OnQueryComplete$Query$Releasing = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Releasing?,
);

class Options$Query$Releasing extends graphql.QueryOptions<Query$Releasing> {
  Options$Query$Releasing({
    String? operationName,
    Variables$Query$Releasing? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Releasing? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Releasing? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$Releasing(data),
                  ),
          onError: onError,
          document: documentNodeQueryReleasing,
          parserFn: _parserFn$Query$Releasing,
        );

  final OnQueryComplete$Query$Releasing? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Releasing
    extends graphql.WatchQueryOptions<Query$Releasing> {
  WatchOptions$Query$Releasing({
    String? operationName,
    Variables$Query$Releasing? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Releasing? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryReleasing,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Releasing,
        );
}

class FetchMoreOptions$Query$Releasing extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Releasing({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Releasing? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryReleasing,
        );
}

extension ClientExtension$Query$Releasing on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Releasing>> query$Releasing(
          [Options$Query$Releasing? options]) async =>
      await this.query(options ?? Options$Query$Releasing());
  graphql.ObservableQuery<Query$Releasing> watchQuery$Releasing(
          [WatchOptions$Query$Releasing? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Releasing());
  void writeQuery$Releasing({
    required Query$Releasing data,
    Variables$Query$Releasing? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryReleasing),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Releasing? readQuery$Releasing({
    Variables$Query$Releasing? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryReleasing),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Releasing.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Releasing> useQuery$Releasing(
        [Options$Query$Releasing? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Releasing());
graphql.ObservableQuery<Query$Releasing> useWatchQuery$Releasing(
        [WatchOptions$Query$Releasing? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Releasing());

class Query$Releasing$Widget extends graphql_flutter.Query<Query$Releasing> {
  Query$Releasing$Widget({
    widgets.Key? key,
    Options$Query$Releasing? options,
    required graphql_flutter.QueryBuilder<Query$Releasing> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Releasing(),
          builder: builder,
        );
}

class Query$Releasing$Page {
  Query$Releasing$Page({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Releasing$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Releasing$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$Releasing$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ReleasingMedia.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Releasing$Page$pageInfo? pageInfo;

  final List<Fragment$ReleasingMedia?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Releasing$Page) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Releasing$Page on Query$Releasing$Page {
  CopyWith$Query$Releasing$Page<Query$Releasing$Page> get copyWith =>
      CopyWith$Query$Releasing$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Releasing$Page<TRes> {
  factory CopyWith$Query$Releasing$Page(
    Query$Releasing$Page instance,
    TRes Function(Query$Releasing$Page) then,
  ) = _CopyWithImpl$Query$Releasing$Page;

  factory CopyWith$Query$Releasing$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$Releasing$Page;

  TRes call({
    Query$Releasing$Page$pageInfo? pageInfo,
    List<Fragment$ReleasingMedia?>? media,
    String? $__typename,
  });
  CopyWith$Query$Releasing$Page$pageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Fragment$ReleasingMedia?>? Function(
              Iterable<
                  CopyWith$Fragment$ReleasingMedia<Fragment$ReleasingMedia>?>?)
          _fn);
}

class _CopyWithImpl$Query$Releasing$Page<TRes>
    implements CopyWith$Query$Releasing$Page<TRes> {
  _CopyWithImpl$Query$Releasing$Page(
    this._instance,
    this._then,
  );

  final Query$Releasing$Page _instance;

  final TRes Function(Query$Releasing$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Releasing$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$Releasing$Page$pageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$ReleasingMedia?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Releasing$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$Releasing$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$Releasing$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes media(
          Iterable<Fragment$ReleasingMedia?>? Function(
                  Iterable<
                      CopyWith$Fragment$ReleasingMedia<
                          Fragment$ReleasingMedia>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$ReleasingMedia(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Releasing$Page<TRes>
    implements CopyWith$Query$Releasing$Page<TRes> {
  _CopyWithStubImpl$Query$Releasing$Page(this._res);

  TRes _res;

  call({
    Query$Releasing$Page$pageInfo? pageInfo,
    List<Fragment$ReleasingMedia?>? media,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Releasing$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Releasing$Page$pageInfo.stub(_res);
  media(_fn) => _res;
}

class Query$Releasing$Page$pageInfo {
  Query$Releasing$Page$pageInfo({
    this.hasNextPage,
    this.currentPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$Releasing$Page$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$currentPage = json['currentPage'];
    final l$$__typename = json['__typename'];
    return Query$Releasing$Page$pageInfo(
      hasNextPage: (l$hasNextPage as bool?),
      currentPage: (l$currentPage as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? hasNextPage;

  final int? currentPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$currentPage = currentPage;
    _resultData['currentPage'] = l$currentPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$currentPage = currentPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$currentPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Releasing$Page$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$currentPage = currentPage;
    final lOther$currentPage = other.currentPage;
    if (l$currentPage != lOther$currentPage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Releasing$Page$pageInfo
    on Query$Releasing$Page$pageInfo {
  CopyWith$Query$Releasing$Page$pageInfo<Query$Releasing$Page$pageInfo>
      get copyWith => CopyWith$Query$Releasing$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Releasing$Page$pageInfo<TRes> {
  factory CopyWith$Query$Releasing$Page$pageInfo(
    Query$Releasing$Page$pageInfo instance,
    TRes Function(Query$Releasing$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$Releasing$Page$pageInfo;

  factory CopyWith$Query$Releasing$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Releasing$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    int? currentPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Releasing$Page$pageInfo<TRes>
    implements CopyWith$Query$Releasing$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$Releasing$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Releasing$Page$pageInfo _instance;

  final TRes Function(Query$Releasing$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? currentPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Releasing$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        currentPage: currentPage == _undefined
            ? _instance.currentPage
            : (currentPage as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Releasing$Page$pageInfo<TRes>
    implements CopyWith$Query$Releasing$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Releasing$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    int? currentPage,
    String? $__typename,
  }) =>
      _res;
}
