// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Fragment$ThisUser {
  Fragment$ThisUser({
    required this.id,
    required this.name,
    this.about,
    this.bannerImage,
    this.unreadNotificationCount,
    this.avatar,
    this.statistics,
    this.options,
    this.mediaListOptions,
    this.$__typename = 'User',
  });

  factory Fragment$ThisUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$about = json['about'];
    final l$bannerImage = json['bannerImage'];
    final l$unreadNotificationCount = json['unreadNotificationCount'];
    final l$avatar = json['avatar'];
    final l$statistics = json['statistics'];
    final l$options = json['options'];
    final l$mediaListOptions = json['mediaListOptions'];
    final l$$__typename = json['__typename'];
    return Fragment$ThisUser(
      id: (l$id as int),
      name: (l$name as String),
      about: (l$about as String?),
      bannerImage: (l$bannerImage as String?),
      unreadNotificationCount: (l$unreadNotificationCount as int?),
      avatar: l$avatar == null
          ? null
          : Fragment$ThisUser$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      statistics: l$statistics == null
          ? null
          : Fragment$ThisUser$statistics.fromJson(
              (l$statistics as Map<String, dynamic>)),
      options: l$options == null
          ? null
          : Fragment$ThisUser$options.fromJson(
              (l$options as Map<String, dynamic>)),
      mediaListOptions: l$mediaListOptions == null
          ? null
          : Fragment$ThisUser$mediaListOptions.fromJson(
              (l$mediaListOptions as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String? about;

  final String? bannerImage;

  final int? unreadNotificationCount;

  final Fragment$ThisUser$avatar? avatar;

  final Fragment$ThisUser$statistics? statistics;

  final Fragment$ThisUser$options? options;

  final Fragment$ThisUser$mediaListOptions? mediaListOptions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$about = about;
    _resultData['about'] = l$about;
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$unreadNotificationCount = unreadNotificationCount;
    _resultData['unreadNotificationCount'] = l$unreadNotificationCount;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$statistics = statistics;
    _resultData['statistics'] = l$statistics?.toJson();
    final l$options = options;
    _resultData['options'] = l$options?.toJson();
    final l$mediaListOptions = mediaListOptions;
    _resultData['mediaListOptions'] = l$mediaListOptions?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$about = about;
    final l$bannerImage = bannerImage;
    final l$unreadNotificationCount = unreadNotificationCount;
    final l$avatar = avatar;
    final l$statistics = statistics;
    final l$options = options;
    final l$mediaListOptions = mediaListOptions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$about,
      l$bannerImage,
      l$unreadNotificationCount,
      l$avatar,
      l$statistics,
      l$options,
      l$mediaListOptions,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ThisUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$about = about;
    final lOther$about = other.about;
    if (l$about != lOther$about) {
      return false;
    }
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
      return false;
    }
    final l$unreadNotificationCount = unreadNotificationCount;
    final lOther$unreadNotificationCount = other.unreadNotificationCount;
    if (l$unreadNotificationCount != lOther$unreadNotificationCount) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$statistics = statistics;
    final lOther$statistics = other.statistics;
    if (l$statistics != lOther$statistics) {
      return false;
    }
    final l$options = options;
    final lOther$options = other.options;
    if (l$options != lOther$options) {
      return false;
    }
    final l$mediaListOptions = mediaListOptions;
    final lOther$mediaListOptions = other.mediaListOptions;
    if (l$mediaListOptions != lOther$mediaListOptions) {
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

extension UtilityExtension$Fragment$ThisUser on Fragment$ThisUser {
  CopyWith$Fragment$ThisUser<Fragment$ThisUser> get copyWith =>
      CopyWith$Fragment$ThisUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ThisUser<TRes> {
  factory CopyWith$Fragment$ThisUser(
    Fragment$ThisUser instance,
    TRes Function(Fragment$ThisUser) then,
  ) = _CopyWithImpl$Fragment$ThisUser;

  factory CopyWith$Fragment$ThisUser.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ThisUser;

  TRes call({
    int? id,
    String? name,
    String? about,
    String? bannerImage,
    int? unreadNotificationCount,
    Fragment$ThisUser$avatar? avatar,
    Fragment$ThisUser$statistics? statistics,
    Fragment$ThisUser$options? options,
    Fragment$ThisUser$mediaListOptions? mediaListOptions,
    String? $__typename,
  });
  CopyWith$Fragment$ThisUser$avatar<TRes> get avatar;
  CopyWith$Fragment$ThisUser$statistics<TRes> get statistics;
  CopyWith$Fragment$ThisUser$options<TRes> get options;
  CopyWith$Fragment$ThisUser$mediaListOptions<TRes> get mediaListOptions;
}

class _CopyWithImpl$Fragment$ThisUser<TRes>
    implements CopyWith$Fragment$ThisUser<TRes> {
  _CopyWithImpl$Fragment$ThisUser(
    this._instance,
    this._then,
  );

  final Fragment$ThisUser _instance;

  final TRes Function(Fragment$ThisUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? about = _undefined,
    Object? bannerImage = _undefined,
    Object? unreadNotificationCount = _undefined,
    Object? avatar = _undefined,
    Object? statistics = _undefined,
    Object? options = _undefined,
    Object? mediaListOptions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ThisUser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        about: about == _undefined ? _instance.about : (about as String?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        unreadNotificationCount: unreadNotificationCount == _undefined
            ? _instance.unreadNotificationCount
            : (unreadNotificationCount as int?),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Fragment$ThisUser$avatar?),
        statistics: statistics == _undefined
            ? _instance.statistics
            : (statistics as Fragment$ThisUser$statistics?),
        options: options == _undefined
            ? _instance.options
            : (options as Fragment$ThisUser$options?),
        mediaListOptions: mediaListOptions == _undefined
            ? _instance.mediaListOptions
            : (mediaListOptions as Fragment$ThisUser$mediaListOptions?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$ThisUser$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Fragment$ThisUser$avatar.stub(_then(_instance))
        : CopyWith$Fragment$ThisUser$avatar(
            local$avatar, (e) => call(avatar: e));
  }

  CopyWith$Fragment$ThisUser$statistics<TRes> get statistics {
    final local$statistics = _instance.statistics;
    return local$statistics == null
        ? CopyWith$Fragment$ThisUser$statistics.stub(_then(_instance))
        : CopyWith$Fragment$ThisUser$statistics(
            local$statistics, (e) => call(statistics: e));
  }

  CopyWith$Fragment$ThisUser$options<TRes> get options {
    final local$options = _instance.options;
    return local$options == null
        ? CopyWith$Fragment$ThisUser$options.stub(_then(_instance))
        : CopyWith$Fragment$ThisUser$options(
            local$options, (e) => call(options: e));
  }

  CopyWith$Fragment$ThisUser$mediaListOptions<TRes> get mediaListOptions {
    final local$mediaListOptions = _instance.mediaListOptions;
    return local$mediaListOptions == null
        ? CopyWith$Fragment$ThisUser$mediaListOptions.stub(_then(_instance))
        : CopyWith$Fragment$ThisUser$mediaListOptions(
            local$mediaListOptions, (e) => call(mediaListOptions: e));
  }
}

class _CopyWithStubImpl$Fragment$ThisUser<TRes>
    implements CopyWith$Fragment$ThisUser<TRes> {
  _CopyWithStubImpl$Fragment$ThisUser(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? about,
    String? bannerImage,
    int? unreadNotificationCount,
    Fragment$ThisUser$avatar? avatar,
    Fragment$ThisUser$statistics? statistics,
    Fragment$ThisUser$options? options,
    Fragment$ThisUser$mediaListOptions? mediaListOptions,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$ThisUser$avatar<TRes> get avatar =>
      CopyWith$Fragment$ThisUser$avatar.stub(_res);
  CopyWith$Fragment$ThisUser$statistics<TRes> get statistics =>
      CopyWith$Fragment$ThisUser$statistics.stub(_res);
  CopyWith$Fragment$ThisUser$options<TRes> get options =>
      CopyWith$Fragment$ThisUser$options.stub(_res);
  CopyWith$Fragment$ThisUser$mediaListOptions<TRes> get mediaListOptions =>
      CopyWith$Fragment$ThisUser$mediaListOptions.stub(_res);
}

const fragmentDefinitionThisUser = FragmentDefinitionNode(
  name: NameNode(value: 'ThisUser'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'about'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'bannerImage'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'unreadNotificationCount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'avatar'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'large'),
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
      name: NameNode(value: 'statistics'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'anime'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'count'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'episodesWatched'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'minutesWatched'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'meanScore'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'standardDeviation'),
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
          name: NameNode(value: 'manga'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'count'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'chaptersRead'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'volumesRead'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'meanScore'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'standardDeviation'),
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
      name: NameNode(value: 'options'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'displayAdultContent'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'airingNotifications'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'titleLanguage'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'staffNameLanguage'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'activityMergeTime'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'restrictMessagesToFollowing'),
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
      name: NameNode(value: 'mediaListOptions'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'scoreFormat'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'rowOrder'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'animeList'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'sectionOrder'),
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
);
const documentNodeFragmentThisUser = DocumentNode(definitions: [
  fragmentDefinitionThisUser,
]);

extension ClientExtension$Fragment$ThisUser on graphql.GraphQLClient {
  void writeFragment$ThisUser({
    required Fragment$ThisUser data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ThisUser',
            document: documentNodeFragmentThisUser,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ThisUser? readFragment$ThisUser({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ThisUser',
          document: documentNodeFragmentThisUser,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ThisUser.fromJson(result);
  }
}

class Fragment$ThisUser$avatar {
  Fragment$ThisUser$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Fragment$ThisUser$avatar.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$ThisUser$avatar(
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
    if (!(other is Fragment$ThisUser$avatar) ||
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

extension UtilityExtension$Fragment$ThisUser$avatar
    on Fragment$ThisUser$avatar {
  CopyWith$Fragment$ThisUser$avatar<Fragment$ThisUser$avatar> get copyWith =>
      CopyWith$Fragment$ThisUser$avatar(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ThisUser$avatar<TRes> {
  factory CopyWith$Fragment$ThisUser$avatar(
    Fragment$ThisUser$avatar instance,
    TRes Function(Fragment$ThisUser$avatar) then,
  ) = _CopyWithImpl$Fragment$ThisUser$avatar;

  factory CopyWith$Fragment$ThisUser$avatar.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ThisUser$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ThisUser$avatar<TRes>
    implements CopyWith$Fragment$ThisUser$avatar<TRes> {
  _CopyWithImpl$Fragment$ThisUser$avatar(
    this._instance,
    this._then,
  );

  final Fragment$ThisUser$avatar _instance;

  final TRes Function(Fragment$ThisUser$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ThisUser$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ThisUser$avatar<TRes>
    implements CopyWith$Fragment$ThisUser$avatar<TRes> {
  _CopyWithStubImpl$Fragment$ThisUser$avatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ThisUser$statistics {
  Fragment$ThisUser$statistics({
    this.anime,
    this.manga,
    this.$__typename = 'UserStatisticTypes',
  });

  factory Fragment$ThisUser$statistics.fromJson(Map<String, dynamic> json) {
    final l$anime = json['anime'];
    final l$manga = json['manga'];
    final l$$__typename = json['__typename'];
    return Fragment$ThisUser$statistics(
      anime: l$anime == null
          ? null
          : Fragment$ThisUser$statistics$anime.fromJson(
              (l$anime as Map<String, dynamic>)),
      manga: l$manga == null
          ? null
          : Fragment$ThisUser$statistics$manga.fromJson(
              (l$manga as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ThisUser$statistics$anime? anime;

  final Fragment$ThisUser$statistics$manga? manga;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$anime = anime;
    _resultData['anime'] = l$anime?.toJson();
    final l$manga = manga;
    _resultData['manga'] = l$manga?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$anime = anime;
    final l$manga = manga;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$anime,
      l$manga,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ThisUser$statistics) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$anime = anime;
    final lOther$anime = other.anime;
    if (l$anime != lOther$anime) {
      return false;
    }
    final l$manga = manga;
    final lOther$manga = other.manga;
    if (l$manga != lOther$manga) {
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

extension UtilityExtension$Fragment$ThisUser$statistics
    on Fragment$ThisUser$statistics {
  CopyWith$Fragment$ThisUser$statistics<Fragment$ThisUser$statistics>
      get copyWith => CopyWith$Fragment$ThisUser$statistics(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ThisUser$statistics<TRes> {
  factory CopyWith$Fragment$ThisUser$statistics(
    Fragment$ThisUser$statistics instance,
    TRes Function(Fragment$ThisUser$statistics) then,
  ) = _CopyWithImpl$Fragment$ThisUser$statistics;

  factory CopyWith$Fragment$ThisUser$statistics.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ThisUser$statistics;

  TRes call({
    Fragment$ThisUser$statistics$anime? anime,
    Fragment$ThisUser$statistics$manga? manga,
    String? $__typename,
  });
  CopyWith$Fragment$ThisUser$statistics$anime<TRes> get anime;
  CopyWith$Fragment$ThisUser$statistics$manga<TRes> get manga;
}

class _CopyWithImpl$Fragment$ThisUser$statistics<TRes>
    implements CopyWith$Fragment$ThisUser$statistics<TRes> {
  _CopyWithImpl$Fragment$ThisUser$statistics(
    this._instance,
    this._then,
  );

  final Fragment$ThisUser$statistics _instance;

  final TRes Function(Fragment$ThisUser$statistics) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? anime = _undefined,
    Object? manga = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ThisUser$statistics(
        anime: anime == _undefined
            ? _instance.anime
            : (anime as Fragment$ThisUser$statistics$anime?),
        manga: manga == _undefined
            ? _instance.manga
            : (manga as Fragment$ThisUser$statistics$manga?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$ThisUser$statistics$anime<TRes> get anime {
    final local$anime = _instance.anime;
    return local$anime == null
        ? CopyWith$Fragment$ThisUser$statistics$anime.stub(_then(_instance))
        : CopyWith$Fragment$ThisUser$statistics$anime(
            local$anime, (e) => call(anime: e));
  }

  CopyWith$Fragment$ThisUser$statistics$manga<TRes> get manga {
    final local$manga = _instance.manga;
    return local$manga == null
        ? CopyWith$Fragment$ThisUser$statistics$manga.stub(_then(_instance))
        : CopyWith$Fragment$ThisUser$statistics$manga(
            local$manga, (e) => call(manga: e));
  }
}

class _CopyWithStubImpl$Fragment$ThisUser$statistics<TRes>
    implements CopyWith$Fragment$ThisUser$statistics<TRes> {
  _CopyWithStubImpl$Fragment$ThisUser$statistics(this._res);

  TRes _res;

  call({
    Fragment$ThisUser$statistics$anime? anime,
    Fragment$ThisUser$statistics$manga? manga,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$ThisUser$statistics$anime<TRes> get anime =>
      CopyWith$Fragment$ThisUser$statistics$anime.stub(_res);
  CopyWith$Fragment$ThisUser$statistics$manga<TRes> get manga =>
      CopyWith$Fragment$ThisUser$statistics$manga.stub(_res);
}

class Fragment$ThisUser$statistics$anime {
  Fragment$ThisUser$statistics$anime({
    required this.count,
    required this.episodesWatched,
    required this.minutesWatched,
    required this.meanScore,
    required this.standardDeviation,
    this.$__typename = 'UserStatistics',
  });

  factory Fragment$ThisUser$statistics$anime.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$episodesWatched = json['episodesWatched'];
    final l$minutesWatched = json['minutesWatched'];
    final l$meanScore = json['meanScore'];
    final l$standardDeviation = json['standardDeviation'];
    final l$$__typename = json['__typename'];
    return Fragment$ThisUser$statistics$anime(
      count: (l$count as int),
      episodesWatched: (l$episodesWatched as int),
      minutesWatched: (l$minutesWatched as int),
      meanScore: (l$meanScore as num).toDouble(),
      standardDeviation: (l$standardDeviation as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final int episodesWatched;

  final int minutesWatched;

  final double meanScore;

  final double standardDeviation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$episodesWatched = episodesWatched;
    _resultData['episodesWatched'] = l$episodesWatched;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$standardDeviation = standardDeviation;
    _resultData['standardDeviation'] = l$standardDeviation;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$episodesWatched = episodesWatched;
    final l$minutesWatched = minutesWatched;
    final l$meanScore = meanScore;
    final l$standardDeviation = standardDeviation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$episodesWatched,
      l$minutesWatched,
      l$meanScore,
      l$standardDeviation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ThisUser$statistics$anime) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$episodesWatched = episodesWatched;
    final lOther$episodesWatched = other.episodesWatched;
    if (l$episodesWatched != lOther$episodesWatched) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$standardDeviation = standardDeviation;
    final lOther$standardDeviation = other.standardDeviation;
    if (l$standardDeviation != lOther$standardDeviation) {
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

extension UtilityExtension$Fragment$ThisUser$statistics$anime
    on Fragment$ThisUser$statistics$anime {
  CopyWith$Fragment$ThisUser$statistics$anime<
          Fragment$ThisUser$statistics$anime>
      get copyWith => CopyWith$Fragment$ThisUser$statistics$anime(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ThisUser$statistics$anime<TRes> {
  factory CopyWith$Fragment$ThisUser$statistics$anime(
    Fragment$ThisUser$statistics$anime instance,
    TRes Function(Fragment$ThisUser$statistics$anime) then,
  ) = _CopyWithImpl$Fragment$ThisUser$statistics$anime;

  factory CopyWith$Fragment$ThisUser$statistics$anime.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ThisUser$statistics$anime;

  TRes call({
    int? count,
    int? episodesWatched,
    int? minutesWatched,
    double? meanScore,
    double? standardDeviation,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ThisUser$statistics$anime<TRes>
    implements CopyWith$Fragment$ThisUser$statistics$anime<TRes> {
  _CopyWithImpl$Fragment$ThisUser$statistics$anime(
    this._instance,
    this._then,
  );

  final Fragment$ThisUser$statistics$anime _instance;

  final TRes Function(Fragment$ThisUser$statistics$anime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? episodesWatched = _undefined,
    Object? minutesWatched = _undefined,
    Object? meanScore = _undefined,
    Object? standardDeviation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ThisUser$statistics$anime(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        episodesWatched:
            episodesWatched == _undefined || episodesWatched == null
                ? _instance.episodesWatched
                : (episodesWatched as int),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        standardDeviation:
            standardDeviation == _undefined || standardDeviation == null
                ? _instance.standardDeviation
                : (standardDeviation as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ThisUser$statistics$anime<TRes>
    implements CopyWith$Fragment$ThisUser$statistics$anime<TRes> {
  _CopyWithStubImpl$Fragment$ThisUser$statistics$anime(this._res);

  TRes _res;

  call({
    int? count,
    int? episodesWatched,
    int? minutesWatched,
    double? meanScore,
    double? standardDeviation,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ThisUser$statistics$manga {
  Fragment$ThisUser$statistics$manga({
    required this.count,
    required this.chaptersRead,
    required this.volumesRead,
    required this.meanScore,
    required this.standardDeviation,
    this.$__typename = 'UserStatistics',
  });

  factory Fragment$ThisUser$statistics$manga.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$chaptersRead = json['chaptersRead'];
    final l$volumesRead = json['volumesRead'];
    final l$meanScore = json['meanScore'];
    final l$standardDeviation = json['standardDeviation'];
    final l$$__typename = json['__typename'];
    return Fragment$ThisUser$statistics$manga(
      count: (l$count as int),
      chaptersRead: (l$chaptersRead as int),
      volumesRead: (l$volumesRead as int),
      meanScore: (l$meanScore as num).toDouble(),
      standardDeviation: (l$standardDeviation as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final int chaptersRead;

  final int volumesRead;

  final double meanScore;

  final double standardDeviation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$volumesRead = volumesRead;
    _resultData['volumesRead'] = l$volumesRead;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$standardDeviation = standardDeviation;
    _resultData['standardDeviation'] = l$standardDeviation;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$chaptersRead = chaptersRead;
    final l$volumesRead = volumesRead;
    final l$meanScore = meanScore;
    final l$standardDeviation = standardDeviation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$chaptersRead,
      l$volumesRead,
      l$meanScore,
      l$standardDeviation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ThisUser$statistics$manga) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$volumesRead = volumesRead;
    final lOther$volumesRead = other.volumesRead;
    if (l$volumesRead != lOther$volumesRead) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$standardDeviation = standardDeviation;
    final lOther$standardDeviation = other.standardDeviation;
    if (l$standardDeviation != lOther$standardDeviation) {
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

extension UtilityExtension$Fragment$ThisUser$statistics$manga
    on Fragment$ThisUser$statistics$manga {
  CopyWith$Fragment$ThisUser$statistics$manga<
          Fragment$ThisUser$statistics$manga>
      get copyWith => CopyWith$Fragment$ThisUser$statistics$manga(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ThisUser$statistics$manga<TRes> {
  factory CopyWith$Fragment$ThisUser$statistics$manga(
    Fragment$ThisUser$statistics$manga instance,
    TRes Function(Fragment$ThisUser$statistics$manga) then,
  ) = _CopyWithImpl$Fragment$ThisUser$statistics$manga;

  factory CopyWith$Fragment$ThisUser$statistics$manga.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ThisUser$statistics$manga;

  TRes call({
    int? count,
    int? chaptersRead,
    int? volumesRead,
    double? meanScore,
    double? standardDeviation,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ThisUser$statistics$manga<TRes>
    implements CopyWith$Fragment$ThisUser$statistics$manga<TRes> {
  _CopyWithImpl$Fragment$ThisUser$statistics$manga(
    this._instance,
    this._then,
  );

  final Fragment$ThisUser$statistics$manga _instance;

  final TRes Function(Fragment$ThisUser$statistics$manga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? chaptersRead = _undefined,
    Object? volumesRead = _undefined,
    Object? meanScore = _undefined,
    Object? standardDeviation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ThisUser$statistics$manga(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        volumesRead: volumesRead == _undefined || volumesRead == null
            ? _instance.volumesRead
            : (volumesRead as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        standardDeviation:
            standardDeviation == _undefined || standardDeviation == null
                ? _instance.standardDeviation
                : (standardDeviation as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ThisUser$statistics$manga<TRes>
    implements CopyWith$Fragment$ThisUser$statistics$manga<TRes> {
  _CopyWithStubImpl$Fragment$ThisUser$statistics$manga(this._res);

  TRes _res;

  call({
    int? count,
    int? chaptersRead,
    int? volumesRead,
    double? meanScore,
    double? standardDeviation,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ThisUser$options {
  Fragment$ThisUser$options({
    this.displayAdultContent,
    this.airingNotifications,
    this.titleLanguage,
    this.staffNameLanguage,
    this.activityMergeTime,
    this.restrictMessagesToFollowing,
    this.$__typename = 'UserOptions',
  });

  factory Fragment$ThisUser$options.fromJson(Map<String, dynamic> json) {
    final l$displayAdultContent = json['displayAdultContent'];
    final l$airingNotifications = json['airingNotifications'];
    final l$titleLanguage = json['titleLanguage'];
    final l$staffNameLanguage = json['staffNameLanguage'];
    final l$activityMergeTime = json['activityMergeTime'];
    final l$restrictMessagesToFollowing = json['restrictMessagesToFollowing'];
    final l$$__typename = json['__typename'];
    return Fragment$ThisUser$options(
      displayAdultContent: (l$displayAdultContent as bool?),
      airingNotifications: (l$airingNotifications as bool?),
      titleLanguage: l$titleLanguage == null
          ? null
          : fromJson$Enum$UserTitleLanguage((l$titleLanguage as String)),
      staffNameLanguage: l$staffNameLanguage == null
          ? null
          : fromJson$Enum$UserStaffNameLanguage(
              (l$staffNameLanguage as String)),
      activityMergeTime: (l$activityMergeTime as int?),
      restrictMessagesToFollowing: (l$restrictMessagesToFollowing as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? displayAdultContent;

  final bool? airingNotifications;

  final Enum$UserTitleLanguage? titleLanguage;

  final Enum$UserStaffNameLanguage? staffNameLanguage;

  final int? activityMergeTime;

  final bool? restrictMessagesToFollowing;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$displayAdultContent = displayAdultContent;
    _resultData['displayAdultContent'] = l$displayAdultContent;
    final l$airingNotifications = airingNotifications;
    _resultData['airingNotifications'] = l$airingNotifications;
    final l$titleLanguage = titleLanguage;
    _resultData['titleLanguage'] = l$titleLanguage == null
        ? null
        : toJson$Enum$UserTitleLanguage(l$titleLanguage);
    final l$staffNameLanguage = staffNameLanguage;
    _resultData['staffNameLanguage'] = l$staffNameLanguage == null
        ? null
        : toJson$Enum$UserStaffNameLanguage(l$staffNameLanguage);
    final l$activityMergeTime = activityMergeTime;
    _resultData['activityMergeTime'] = l$activityMergeTime;
    final l$restrictMessagesToFollowing = restrictMessagesToFollowing;
    _resultData['restrictMessagesToFollowing'] = l$restrictMessagesToFollowing;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$displayAdultContent = displayAdultContent;
    final l$airingNotifications = airingNotifications;
    final l$titleLanguage = titleLanguage;
    final l$staffNameLanguage = staffNameLanguage;
    final l$activityMergeTime = activityMergeTime;
    final l$restrictMessagesToFollowing = restrictMessagesToFollowing;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$displayAdultContent,
      l$airingNotifications,
      l$titleLanguage,
      l$staffNameLanguage,
      l$activityMergeTime,
      l$restrictMessagesToFollowing,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ThisUser$options) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$displayAdultContent = displayAdultContent;
    final lOther$displayAdultContent = other.displayAdultContent;
    if (l$displayAdultContent != lOther$displayAdultContent) {
      return false;
    }
    final l$airingNotifications = airingNotifications;
    final lOther$airingNotifications = other.airingNotifications;
    if (l$airingNotifications != lOther$airingNotifications) {
      return false;
    }
    final l$titleLanguage = titleLanguage;
    final lOther$titleLanguage = other.titleLanguage;
    if (l$titleLanguage != lOther$titleLanguage) {
      return false;
    }
    final l$staffNameLanguage = staffNameLanguage;
    final lOther$staffNameLanguage = other.staffNameLanguage;
    if (l$staffNameLanguage != lOther$staffNameLanguage) {
      return false;
    }
    final l$activityMergeTime = activityMergeTime;
    final lOther$activityMergeTime = other.activityMergeTime;
    if (l$activityMergeTime != lOther$activityMergeTime) {
      return false;
    }
    final l$restrictMessagesToFollowing = restrictMessagesToFollowing;
    final lOther$restrictMessagesToFollowing =
        other.restrictMessagesToFollowing;
    if (l$restrictMessagesToFollowing != lOther$restrictMessagesToFollowing) {
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

extension UtilityExtension$Fragment$ThisUser$options
    on Fragment$ThisUser$options {
  CopyWith$Fragment$ThisUser$options<Fragment$ThisUser$options> get copyWith =>
      CopyWith$Fragment$ThisUser$options(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ThisUser$options<TRes> {
  factory CopyWith$Fragment$ThisUser$options(
    Fragment$ThisUser$options instance,
    TRes Function(Fragment$ThisUser$options) then,
  ) = _CopyWithImpl$Fragment$ThisUser$options;

  factory CopyWith$Fragment$ThisUser$options.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ThisUser$options;

  TRes call({
    bool? displayAdultContent,
    bool? airingNotifications,
    Enum$UserTitleLanguage? titleLanguage,
    Enum$UserStaffNameLanguage? staffNameLanguage,
    int? activityMergeTime,
    bool? restrictMessagesToFollowing,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ThisUser$options<TRes>
    implements CopyWith$Fragment$ThisUser$options<TRes> {
  _CopyWithImpl$Fragment$ThisUser$options(
    this._instance,
    this._then,
  );

  final Fragment$ThisUser$options _instance;

  final TRes Function(Fragment$ThisUser$options) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? displayAdultContent = _undefined,
    Object? airingNotifications = _undefined,
    Object? titleLanguage = _undefined,
    Object? staffNameLanguage = _undefined,
    Object? activityMergeTime = _undefined,
    Object? restrictMessagesToFollowing = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ThisUser$options(
        displayAdultContent: displayAdultContent == _undefined
            ? _instance.displayAdultContent
            : (displayAdultContent as bool?),
        airingNotifications: airingNotifications == _undefined
            ? _instance.airingNotifications
            : (airingNotifications as bool?),
        titleLanguage: titleLanguage == _undefined
            ? _instance.titleLanguage
            : (titleLanguage as Enum$UserTitleLanguage?),
        staffNameLanguage: staffNameLanguage == _undefined
            ? _instance.staffNameLanguage
            : (staffNameLanguage as Enum$UserStaffNameLanguage?),
        activityMergeTime: activityMergeTime == _undefined
            ? _instance.activityMergeTime
            : (activityMergeTime as int?),
        restrictMessagesToFollowing: restrictMessagesToFollowing == _undefined
            ? _instance.restrictMessagesToFollowing
            : (restrictMessagesToFollowing as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ThisUser$options<TRes>
    implements CopyWith$Fragment$ThisUser$options<TRes> {
  _CopyWithStubImpl$Fragment$ThisUser$options(this._res);

  TRes _res;

  call({
    bool? displayAdultContent,
    bool? airingNotifications,
    Enum$UserTitleLanguage? titleLanguage,
    Enum$UserStaffNameLanguage? staffNameLanguage,
    int? activityMergeTime,
    bool? restrictMessagesToFollowing,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ThisUser$mediaListOptions {
  Fragment$ThisUser$mediaListOptions({
    this.scoreFormat,
    this.rowOrder,
    this.animeList,
    this.$__typename = 'MediaListOptions',
  });

  factory Fragment$ThisUser$mediaListOptions.fromJson(
      Map<String, dynamic> json) {
    final l$scoreFormat = json['scoreFormat'];
    final l$rowOrder = json['rowOrder'];
    final l$animeList = json['animeList'];
    final l$$__typename = json['__typename'];
    return Fragment$ThisUser$mediaListOptions(
      scoreFormat: l$scoreFormat == null
          ? null
          : fromJson$Enum$ScoreFormat((l$scoreFormat as String)),
      rowOrder: (l$rowOrder as String?),
      animeList: l$animeList == null
          ? null
          : Fragment$ThisUser$mediaListOptions$animeList.fromJson(
              (l$animeList as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$ScoreFormat? scoreFormat;

  final String? rowOrder;

  final Fragment$ThisUser$mediaListOptions$animeList? animeList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$scoreFormat = scoreFormat;
    _resultData['scoreFormat'] =
        l$scoreFormat == null ? null : toJson$Enum$ScoreFormat(l$scoreFormat);
    final l$rowOrder = rowOrder;
    _resultData['rowOrder'] = l$rowOrder;
    final l$animeList = animeList;
    _resultData['animeList'] = l$animeList?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$scoreFormat = scoreFormat;
    final l$rowOrder = rowOrder;
    final l$animeList = animeList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$scoreFormat,
      l$rowOrder,
      l$animeList,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ThisUser$mediaListOptions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$scoreFormat = scoreFormat;
    final lOther$scoreFormat = other.scoreFormat;
    if (l$scoreFormat != lOther$scoreFormat) {
      return false;
    }
    final l$rowOrder = rowOrder;
    final lOther$rowOrder = other.rowOrder;
    if (l$rowOrder != lOther$rowOrder) {
      return false;
    }
    final l$animeList = animeList;
    final lOther$animeList = other.animeList;
    if (l$animeList != lOther$animeList) {
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

extension UtilityExtension$Fragment$ThisUser$mediaListOptions
    on Fragment$ThisUser$mediaListOptions {
  CopyWith$Fragment$ThisUser$mediaListOptions<
          Fragment$ThisUser$mediaListOptions>
      get copyWith => CopyWith$Fragment$ThisUser$mediaListOptions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ThisUser$mediaListOptions<TRes> {
  factory CopyWith$Fragment$ThisUser$mediaListOptions(
    Fragment$ThisUser$mediaListOptions instance,
    TRes Function(Fragment$ThisUser$mediaListOptions) then,
  ) = _CopyWithImpl$Fragment$ThisUser$mediaListOptions;

  factory CopyWith$Fragment$ThisUser$mediaListOptions.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ThisUser$mediaListOptions;

  TRes call({
    Enum$ScoreFormat? scoreFormat,
    String? rowOrder,
    Fragment$ThisUser$mediaListOptions$animeList? animeList,
    String? $__typename,
  });
  CopyWith$Fragment$ThisUser$mediaListOptions$animeList<TRes> get animeList;
}

class _CopyWithImpl$Fragment$ThisUser$mediaListOptions<TRes>
    implements CopyWith$Fragment$ThisUser$mediaListOptions<TRes> {
  _CopyWithImpl$Fragment$ThisUser$mediaListOptions(
    this._instance,
    this._then,
  );

  final Fragment$ThisUser$mediaListOptions _instance;

  final TRes Function(Fragment$ThisUser$mediaListOptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scoreFormat = _undefined,
    Object? rowOrder = _undefined,
    Object? animeList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ThisUser$mediaListOptions(
        scoreFormat: scoreFormat == _undefined
            ? _instance.scoreFormat
            : (scoreFormat as Enum$ScoreFormat?),
        rowOrder:
            rowOrder == _undefined ? _instance.rowOrder : (rowOrder as String?),
        animeList: animeList == _undefined
            ? _instance.animeList
            : (animeList as Fragment$ThisUser$mediaListOptions$animeList?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$ThisUser$mediaListOptions$animeList<TRes> get animeList {
    final local$animeList = _instance.animeList;
    return local$animeList == null
        ? CopyWith$Fragment$ThisUser$mediaListOptions$animeList.stub(
            _then(_instance))
        : CopyWith$Fragment$ThisUser$mediaListOptions$animeList(
            local$animeList, (e) => call(animeList: e));
  }
}

class _CopyWithStubImpl$Fragment$ThisUser$mediaListOptions<TRes>
    implements CopyWith$Fragment$ThisUser$mediaListOptions<TRes> {
  _CopyWithStubImpl$Fragment$ThisUser$mediaListOptions(this._res);

  TRes _res;

  call({
    Enum$ScoreFormat? scoreFormat,
    String? rowOrder,
    Fragment$ThisUser$mediaListOptions$animeList? animeList,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$ThisUser$mediaListOptions$animeList<TRes> get animeList =>
      CopyWith$Fragment$ThisUser$mediaListOptions$animeList.stub(_res);
}

class Fragment$ThisUser$mediaListOptions$animeList {
  Fragment$ThisUser$mediaListOptions$animeList({
    this.sectionOrder,
    this.$__typename = 'MediaListTypeOptions',
  });

  factory Fragment$ThisUser$mediaListOptions$animeList.fromJson(
      Map<String, dynamic> json) {
    final l$sectionOrder = json['sectionOrder'];
    final l$$__typename = json['__typename'];
    return Fragment$ThisUser$mediaListOptions$animeList(
      sectionOrder: (l$sectionOrder as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?>? sectionOrder;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sectionOrder = sectionOrder;
    _resultData['sectionOrder'] = l$sectionOrder?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sectionOrder = sectionOrder;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sectionOrder == null
          ? null
          : Object.hashAll(l$sectionOrder.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ThisUser$mediaListOptions$animeList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sectionOrder = sectionOrder;
    final lOther$sectionOrder = other.sectionOrder;
    if (l$sectionOrder != null && lOther$sectionOrder != null) {
      if (l$sectionOrder.length != lOther$sectionOrder.length) {
        return false;
      }
      for (int i = 0; i < l$sectionOrder.length; i++) {
        final l$sectionOrder$entry = l$sectionOrder[i];
        final lOther$sectionOrder$entry = lOther$sectionOrder[i];
        if (l$sectionOrder$entry != lOther$sectionOrder$entry) {
          return false;
        }
      }
    } else if (l$sectionOrder != lOther$sectionOrder) {
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

extension UtilityExtension$Fragment$ThisUser$mediaListOptions$animeList
    on Fragment$ThisUser$mediaListOptions$animeList {
  CopyWith$Fragment$ThisUser$mediaListOptions$animeList<
          Fragment$ThisUser$mediaListOptions$animeList>
      get copyWith => CopyWith$Fragment$ThisUser$mediaListOptions$animeList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ThisUser$mediaListOptions$animeList<TRes> {
  factory CopyWith$Fragment$ThisUser$mediaListOptions$animeList(
    Fragment$ThisUser$mediaListOptions$animeList instance,
    TRes Function(Fragment$ThisUser$mediaListOptions$animeList) then,
  ) = _CopyWithImpl$Fragment$ThisUser$mediaListOptions$animeList;

  factory CopyWith$Fragment$ThisUser$mediaListOptions$animeList.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ThisUser$mediaListOptions$animeList;

  TRes call({
    List<String?>? sectionOrder,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ThisUser$mediaListOptions$animeList<TRes>
    implements CopyWith$Fragment$ThisUser$mediaListOptions$animeList<TRes> {
  _CopyWithImpl$Fragment$ThisUser$mediaListOptions$animeList(
    this._instance,
    this._then,
  );

  final Fragment$ThisUser$mediaListOptions$animeList _instance;

  final TRes Function(Fragment$ThisUser$mediaListOptions$animeList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sectionOrder = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ThisUser$mediaListOptions$animeList(
        sectionOrder: sectionOrder == _undefined
            ? _instance.sectionOrder
            : (sectionOrder as List<String?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ThisUser$mediaListOptions$animeList<TRes>
    implements CopyWith$Fragment$ThisUser$mediaListOptions$animeList<TRes> {
  _CopyWithStubImpl$Fragment$ThisUser$mediaListOptions$animeList(this._res);

  TRes _res;

  call({
    List<String?>? sectionOrder,
    String? $__typename,
  }) =>
      _res;
}

class Query$Viewer {
  Query$Viewer({
    this.Viewer,
    this.$__typename = 'Query',
  });

  factory Query$Viewer.fromJson(Map<String, dynamic> json) {
    final l$Viewer = json['Viewer'];
    final l$$__typename = json['__typename'];
    return Query$Viewer(
      Viewer: l$Viewer == null
          ? null
          : Fragment$ThisUser.fromJson((l$Viewer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ThisUser? Viewer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Viewer = Viewer;
    _resultData['Viewer'] = l$Viewer?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Viewer = Viewer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Viewer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Viewer) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Viewer = Viewer;
    final lOther$Viewer = other.Viewer;
    if (l$Viewer != lOther$Viewer) {
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

extension UtilityExtension$Query$Viewer on Query$Viewer {
  CopyWith$Query$Viewer<Query$Viewer> get copyWith => CopyWith$Query$Viewer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Viewer<TRes> {
  factory CopyWith$Query$Viewer(
    Query$Viewer instance,
    TRes Function(Query$Viewer) then,
  ) = _CopyWithImpl$Query$Viewer;

  factory CopyWith$Query$Viewer.stub(TRes res) = _CopyWithStubImpl$Query$Viewer;

  TRes call({
    Fragment$ThisUser? Viewer,
    String? $__typename,
  });
  CopyWith$Fragment$ThisUser<TRes> get Viewer;
}

class _CopyWithImpl$Query$Viewer<TRes> implements CopyWith$Query$Viewer<TRes> {
  _CopyWithImpl$Query$Viewer(
    this._instance,
    this._then,
  );

  final Query$Viewer _instance;

  final TRes Function(Query$Viewer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Viewer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Viewer(
        Viewer: Viewer == _undefined
            ? _instance.Viewer
            : (Viewer as Fragment$ThisUser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$ThisUser<TRes> get Viewer {
    final local$Viewer = _instance.Viewer;
    return local$Viewer == null
        ? CopyWith$Fragment$ThisUser.stub(_then(_instance))
        : CopyWith$Fragment$ThisUser(local$Viewer, (e) => call(Viewer: e));
  }
}

class _CopyWithStubImpl$Query$Viewer<TRes>
    implements CopyWith$Query$Viewer<TRes> {
  _CopyWithStubImpl$Query$Viewer(this._res);

  TRes _res;

  call({
    Fragment$ThisUser? Viewer,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$ThisUser<TRes> get Viewer =>
      CopyWith$Fragment$ThisUser.stub(_res);
}

const documentNodeQueryViewer = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Viewer'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Viewer'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ThisUser'),
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
  fragmentDefinitionThisUser,
]);
Query$Viewer _parserFn$Query$Viewer(Map<String, dynamic> data) =>
    Query$Viewer.fromJson(data);
typedef OnQueryComplete$Query$Viewer = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Viewer?,
);

class Options$Query$Viewer extends graphql.QueryOptions<Query$Viewer> {
  Options$Query$Viewer({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Viewer? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Viewer? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                    data == null ? null : _parserFn$Query$Viewer(data),
                  ),
          onError: onError,
          document: documentNodeQueryViewer,
          parserFn: _parserFn$Query$Viewer,
        );

  final OnQueryComplete$Query$Viewer? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Viewer
    extends graphql.WatchQueryOptions<Query$Viewer> {
  WatchOptions$Query$Viewer({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Viewer? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryViewer,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Viewer,
        );
}

class FetchMoreOptions$Query$Viewer extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Viewer({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryViewer,
        );
}

extension ClientExtension$Query$Viewer on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Viewer>> query$Viewer(
          [Options$Query$Viewer? options]) async =>
      await this.query(options ?? Options$Query$Viewer());
  graphql.ObservableQuery<Query$Viewer> watchQuery$Viewer(
          [WatchOptions$Query$Viewer? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Viewer());
  void writeQuery$Viewer({
    required Query$Viewer data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryViewer)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Viewer? readQuery$Viewer({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryViewer)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Viewer.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Viewer> useQuery$Viewer(
        [Options$Query$Viewer? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Viewer());
graphql.ObservableQuery<Query$Viewer> useWatchQuery$Viewer(
        [WatchOptions$Query$Viewer? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Viewer());

class Query$Viewer$Widget extends graphql_flutter.Query<Query$Viewer> {
  Query$Viewer$Widget({
    widgets.Key? key,
    Options$Query$Viewer? options,
    required graphql_flutter.QueryBuilder<Query$Viewer> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Viewer(),
          builder: builder,
        );
}

class Query$NotificationCount {
  Query$NotificationCount({
    this.Viewer,
    this.$__typename = 'Query',
  });

  factory Query$NotificationCount.fromJson(Map<String, dynamic> json) {
    final l$Viewer = json['Viewer'];
    final l$$__typename = json['__typename'];
    return Query$NotificationCount(
      Viewer: l$Viewer == null
          ? null
          : Query$NotificationCount$Viewer.fromJson(
              (l$Viewer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$NotificationCount$Viewer? Viewer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Viewer = Viewer;
    _resultData['Viewer'] = l$Viewer?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Viewer = Viewer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Viewer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$NotificationCount) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$Viewer = Viewer;
    final lOther$Viewer = other.Viewer;
    if (l$Viewer != lOther$Viewer) {
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

extension UtilityExtension$Query$NotificationCount on Query$NotificationCount {
  CopyWith$Query$NotificationCount<Query$NotificationCount> get copyWith =>
      CopyWith$Query$NotificationCount(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$NotificationCount<TRes> {
  factory CopyWith$Query$NotificationCount(
    Query$NotificationCount instance,
    TRes Function(Query$NotificationCount) then,
  ) = _CopyWithImpl$Query$NotificationCount;

  factory CopyWith$Query$NotificationCount.stub(TRes res) =
      _CopyWithStubImpl$Query$NotificationCount;

  TRes call({
    Query$NotificationCount$Viewer? Viewer,
    String? $__typename,
  });
  CopyWith$Query$NotificationCount$Viewer<TRes> get Viewer;
}

class _CopyWithImpl$Query$NotificationCount<TRes>
    implements CopyWith$Query$NotificationCount<TRes> {
  _CopyWithImpl$Query$NotificationCount(
    this._instance,
    this._then,
  );

  final Query$NotificationCount _instance;

  final TRes Function(Query$NotificationCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Viewer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NotificationCount(
        Viewer: Viewer == _undefined
            ? _instance.Viewer
            : (Viewer as Query$NotificationCount$Viewer?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$NotificationCount$Viewer<TRes> get Viewer {
    final local$Viewer = _instance.Viewer;
    return local$Viewer == null
        ? CopyWith$Query$NotificationCount$Viewer.stub(_then(_instance))
        : CopyWith$Query$NotificationCount$Viewer(
            local$Viewer, (e) => call(Viewer: e));
  }
}

class _CopyWithStubImpl$Query$NotificationCount<TRes>
    implements CopyWith$Query$NotificationCount<TRes> {
  _CopyWithStubImpl$Query$NotificationCount(this._res);

  TRes _res;

  call({
    Query$NotificationCount$Viewer? Viewer,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$NotificationCount$Viewer<TRes> get Viewer =>
      CopyWith$Query$NotificationCount$Viewer.stub(_res);
}

const documentNodeQueryNotificationCount = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'NotificationCount'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Viewer'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'unreadNotificationCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'options'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'airingNotifications'),
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
]);
Query$NotificationCount _parserFn$Query$NotificationCount(
        Map<String, dynamic> data) =>
    Query$NotificationCount.fromJson(data);
typedef OnQueryComplete$Query$NotificationCount = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$NotificationCount?,
);

class Options$Query$NotificationCount
    extends graphql.QueryOptions<Query$NotificationCount> {
  Options$Query$NotificationCount({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$NotificationCount? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$NotificationCount? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                    data == null
                        ? null
                        : _parserFn$Query$NotificationCount(data),
                  ),
          onError: onError,
          document: documentNodeQueryNotificationCount,
          parserFn: _parserFn$Query$NotificationCount,
        );

  final OnQueryComplete$Query$NotificationCount? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$NotificationCount
    extends graphql.WatchQueryOptions<Query$NotificationCount> {
  WatchOptions$Query$NotificationCount({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$NotificationCount? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryNotificationCount,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$NotificationCount,
        );
}

class FetchMoreOptions$Query$NotificationCount
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$NotificationCount(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryNotificationCount,
        );
}

extension ClientExtension$Query$NotificationCount on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$NotificationCount>> query$NotificationCount(
          [Options$Query$NotificationCount? options]) async =>
      await this.query(options ?? Options$Query$NotificationCount());
  graphql.ObservableQuery<Query$NotificationCount> watchQuery$NotificationCount(
          [WatchOptions$Query$NotificationCount? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$NotificationCount());
  void writeQuery$NotificationCount({
    required Query$NotificationCount data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryNotificationCount)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$NotificationCount? readQuery$NotificationCount(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryNotificationCount)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$NotificationCount.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$NotificationCount>
    useQuery$NotificationCount([Options$Query$NotificationCount? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$NotificationCount());
graphql.ObservableQuery<Query$NotificationCount>
    useWatchQuery$NotificationCount(
            [WatchOptions$Query$NotificationCount? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$NotificationCount());

class Query$NotificationCount$Widget
    extends graphql_flutter.Query<Query$NotificationCount> {
  Query$NotificationCount$Widget({
    widgets.Key? key,
    Options$Query$NotificationCount? options,
    required graphql_flutter.QueryBuilder<Query$NotificationCount> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$NotificationCount(),
          builder: builder,
        );
}

class Query$NotificationCount$Viewer {
  Query$NotificationCount$Viewer({
    this.unreadNotificationCount,
    this.options,
    this.$__typename = 'User',
  });

  factory Query$NotificationCount$Viewer.fromJson(Map<String, dynamic> json) {
    final l$unreadNotificationCount = json['unreadNotificationCount'];
    final l$options = json['options'];
    final l$$__typename = json['__typename'];
    return Query$NotificationCount$Viewer(
      unreadNotificationCount: (l$unreadNotificationCount as int?),
      options: l$options == null
          ? null
          : Query$NotificationCount$Viewer$options.fromJson(
              (l$options as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? unreadNotificationCount;

  final Query$NotificationCount$Viewer$options? options;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unreadNotificationCount = unreadNotificationCount;
    _resultData['unreadNotificationCount'] = l$unreadNotificationCount;
    final l$options = options;
    _resultData['options'] = l$options?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unreadNotificationCount = unreadNotificationCount;
    final l$options = options;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$unreadNotificationCount,
      l$options,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$NotificationCount$Viewer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$unreadNotificationCount = unreadNotificationCount;
    final lOther$unreadNotificationCount = other.unreadNotificationCount;
    if (l$unreadNotificationCount != lOther$unreadNotificationCount) {
      return false;
    }
    final l$options = options;
    final lOther$options = other.options;
    if (l$options != lOther$options) {
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

extension UtilityExtension$Query$NotificationCount$Viewer
    on Query$NotificationCount$Viewer {
  CopyWith$Query$NotificationCount$Viewer<Query$NotificationCount$Viewer>
      get copyWith => CopyWith$Query$NotificationCount$Viewer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NotificationCount$Viewer<TRes> {
  factory CopyWith$Query$NotificationCount$Viewer(
    Query$NotificationCount$Viewer instance,
    TRes Function(Query$NotificationCount$Viewer) then,
  ) = _CopyWithImpl$Query$NotificationCount$Viewer;

  factory CopyWith$Query$NotificationCount$Viewer.stub(TRes res) =
      _CopyWithStubImpl$Query$NotificationCount$Viewer;

  TRes call({
    int? unreadNotificationCount,
    Query$NotificationCount$Viewer$options? options,
    String? $__typename,
  });
  CopyWith$Query$NotificationCount$Viewer$options<TRes> get options;
}

class _CopyWithImpl$Query$NotificationCount$Viewer<TRes>
    implements CopyWith$Query$NotificationCount$Viewer<TRes> {
  _CopyWithImpl$Query$NotificationCount$Viewer(
    this._instance,
    this._then,
  );

  final Query$NotificationCount$Viewer _instance;

  final TRes Function(Query$NotificationCount$Viewer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? unreadNotificationCount = _undefined,
    Object? options = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NotificationCount$Viewer(
        unreadNotificationCount: unreadNotificationCount == _undefined
            ? _instance.unreadNotificationCount
            : (unreadNotificationCount as int?),
        options: options == _undefined
            ? _instance.options
            : (options as Query$NotificationCount$Viewer$options?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$NotificationCount$Viewer$options<TRes> get options {
    final local$options = _instance.options;
    return local$options == null
        ? CopyWith$Query$NotificationCount$Viewer$options.stub(_then(_instance))
        : CopyWith$Query$NotificationCount$Viewer$options(
            local$options, (e) => call(options: e));
  }
}

class _CopyWithStubImpl$Query$NotificationCount$Viewer<TRes>
    implements CopyWith$Query$NotificationCount$Viewer<TRes> {
  _CopyWithStubImpl$Query$NotificationCount$Viewer(this._res);

  TRes _res;

  call({
    int? unreadNotificationCount,
    Query$NotificationCount$Viewer$options? options,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$NotificationCount$Viewer$options<TRes> get options =>
      CopyWith$Query$NotificationCount$Viewer$options.stub(_res);
}

class Query$NotificationCount$Viewer$options {
  Query$NotificationCount$Viewer$options({
    this.airingNotifications,
    this.$__typename = 'UserOptions',
  });

  factory Query$NotificationCount$Viewer$options.fromJson(
      Map<String, dynamic> json) {
    final l$airingNotifications = json['airingNotifications'];
    final l$$__typename = json['__typename'];
    return Query$NotificationCount$Viewer$options(
      airingNotifications: (l$airingNotifications as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? airingNotifications;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$airingNotifications = airingNotifications;
    _resultData['airingNotifications'] = l$airingNotifications;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$airingNotifications = airingNotifications;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$airingNotifications,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$NotificationCount$Viewer$options) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$airingNotifications = airingNotifications;
    final lOther$airingNotifications = other.airingNotifications;
    if (l$airingNotifications != lOther$airingNotifications) {
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

extension UtilityExtension$Query$NotificationCount$Viewer$options
    on Query$NotificationCount$Viewer$options {
  CopyWith$Query$NotificationCount$Viewer$options<
          Query$NotificationCount$Viewer$options>
      get copyWith => CopyWith$Query$NotificationCount$Viewer$options(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NotificationCount$Viewer$options<TRes> {
  factory CopyWith$Query$NotificationCount$Viewer$options(
    Query$NotificationCount$Viewer$options instance,
    TRes Function(Query$NotificationCount$Viewer$options) then,
  ) = _CopyWithImpl$Query$NotificationCount$Viewer$options;

  factory CopyWith$Query$NotificationCount$Viewer$options.stub(TRes res) =
      _CopyWithStubImpl$Query$NotificationCount$Viewer$options;

  TRes call({
    bool? airingNotifications,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$NotificationCount$Viewer$options<TRes>
    implements CopyWith$Query$NotificationCount$Viewer$options<TRes> {
  _CopyWithImpl$Query$NotificationCount$Viewer$options(
    this._instance,
    this._then,
  );

  final Query$NotificationCount$Viewer$options _instance;

  final TRes Function(Query$NotificationCount$Viewer$options) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? airingNotifications = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NotificationCount$Viewer$options(
        airingNotifications: airingNotifications == _undefined
            ? _instance.airingNotifications
            : (airingNotifications as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$NotificationCount$Viewer$options<TRes>
    implements CopyWith$Query$NotificationCount$Viewer$options<TRes> {
  _CopyWithStubImpl$Query$NotificationCount$Viewer$options(this._res);

  TRes _res;

  call({
    bool? airingNotifications,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateUser {
  factory Variables$Mutation$UpdateUser({
    String? about,
    Enum$UserTitleLanguage? titleLanguage,
    bool? displayAdultContent,
    bool? airingNotifications,
    Enum$ScoreFormat? scoreFormat,
    String? rowOrder,
    String? profileColor,
    String? donatorBadge,
    List<Input$NotificationOptionInput?>? notificationOptions,
    String? timezone,
    int? activityMergeTime,
    Input$MediaListOptionsInput? animeListOptions,
    Input$MediaListOptionsInput? mangaListOptions,
    Enum$UserStaffNameLanguage? staffNameLanguage,
    bool? restrictMessagesToFollowing,
    List<Input$ListActivityOptionInput?>? disabledListActivity,
  }) =>
      Variables$Mutation$UpdateUser._({
        if (about != null) r'about': about,
        if (titleLanguage != null) r'titleLanguage': titleLanguage,
        if (displayAdultContent != null)
          r'displayAdultContent': displayAdultContent,
        if (airingNotifications != null)
          r'airingNotifications': airingNotifications,
        if (scoreFormat != null) r'scoreFormat': scoreFormat,
        if (rowOrder != null) r'rowOrder': rowOrder,
        if (profileColor != null) r'profileColor': profileColor,
        if (donatorBadge != null) r'donatorBadge': donatorBadge,
        if (notificationOptions != null)
          r'notificationOptions': notificationOptions,
        if (timezone != null) r'timezone': timezone,
        if (activityMergeTime != null) r'activityMergeTime': activityMergeTime,
        if (animeListOptions != null) r'animeListOptions': animeListOptions,
        if (mangaListOptions != null) r'mangaListOptions': mangaListOptions,
        if (staffNameLanguage != null) r'staffNameLanguage': staffNameLanguage,
        if (restrictMessagesToFollowing != null)
          r'restrictMessagesToFollowing': restrictMessagesToFollowing,
        if (disabledListActivity != null)
          r'disabledListActivity': disabledListActivity,
      });

  Variables$Mutation$UpdateUser._(this._$data);

  factory Variables$Mutation$UpdateUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('about')) {
      final l$about = data['about'];
      result$data['about'] = (l$about as String?);
    }
    if (data.containsKey('titleLanguage')) {
      final l$titleLanguage = data['titleLanguage'];
      result$data['titleLanguage'] = l$titleLanguage == null
          ? null
          : fromJson$Enum$UserTitleLanguage((l$titleLanguage as String));
    }
    if (data.containsKey('displayAdultContent')) {
      final l$displayAdultContent = data['displayAdultContent'];
      result$data['displayAdultContent'] = (l$displayAdultContent as bool?);
    }
    if (data.containsKey('airingNotifications')) {
      final l$airingNotifications = data['airingNotifications'];
      result$data['airingNotifications'] = (l$airingNotifications as bool?);
    }
    if (data.containsKey('scoreFormat')) {
      final l$scoreFormat = data['scoreFormat'];
      result$data['scoreFormat'] = l$scoreFormat == null
          ? null
          : fromJson$Enum$ScoreFormat((l$scoreFormat as String));
    }
    if (data.containsKey('rowOrder')) {
      final l$rowOrder = data['rowOrder'];
      result$data['rowOrder'] = (l$rowOrder as String?);
    }
    if (data.containsKey('profileColor')) {
      final l$profileColor = data['profileColor'];
      result$data['profileColor'] = (l$profileColor as String?);
    }
    if (data.containsKey('donatorBadge')) {
      final l$donatorBadge = data['donatorBadge'];
      result$data['donatorBadge'] = (l$donatorBadge as String?);
    }
    if (data.containsKey('notificationOptions')) {
      final l$notificationOptions = data['notificationOptions'];
      result$data['notificationOptions'] =
          (l$notificationOptions as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Input$NotificationOptionInput.fromJson(
                      (e as Map<String, dynamic>)))
              .toList();
    }
    if (data.containsKey('timezone')) {
      final l$timezone = data['timezone'];
      result$data['timezone'] = (l$timezone as String?);
    }
    if (data.containsKey('activityMergeTime')) {
      final l$activityMergeTime = data['activityMergeTime'];
      result$data['activityMergeTime'] = (l$activityMergeTime as int?);
    }
    if (data.containsKey('animeListOptions')) {
      final l$animeListOptions = data['animeListOptions'];
      result$data['animeListOptions'] = l$animeListOptions == null
          ? null
          : Input$MediaListOptionsInput.fromJson(
              (l$animeListOptions as Map<String, dynamic>));
    }
    if (data.containsKey('mangaListOptions')) {
      final l$mangaListOptions = data['mangaListOptions'];
      result$data['mangaListOptions'] = l$mangaListOptions == null
          ? null
          : Input$MediaListOptionsInput.fromJson(
              (l$mangaListOptions as Map<String, dynamic>));
    }
    if (data.containsKey('staffNameLanguage')) {
      final l$staffNameLanguage = data['staffNameLanguage'];
      result$data['staffNameLanguage'] = l$staffNameLanguage == null
          ? null
          : fromJson$Enum$UserStaffNameLanguage(
              (l$staffNameLanguage as String));
    }
    if (data.containsKey('restrictMessagesToFollowing')) {
      final l$restrictMessagesToFollowing = data['restrictMessagesToFollowing'];
      result$data['restrictMessagesToFollowing'] =
          (l$restrictMessagesToFollowing as bool?);
    }
    if (data.containsKey('disabledListActivity')) {
      final l$disabledListActivity = data['disabledListActivity'];
      result$data['disabledListActivity'] =
          (l$disabledListActivity as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Input$ListActivityOptionInput.fromJson(
                      (e as Map<String, dynamic>)))
              .toList();
    }
    return Variables$Mutation$UpdateUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get about => (_$data['about'] as String?);
  Enum$UserTitleLanguage? get titleLanguage =>
      (_$data['titleLanguage'] as Enum$UserTitleLanguage?);
  bool? get displayAdultContent => (_$data['displayAdultContent'] as bool?);
  bool? get airingNotifications => (_$data['airingNotifications'] as bool?);
  Enum$ScoreFormat? get scoreFormat =>
      (_$data['scoreFormat'] as Enum$ScoreFormat?);
  String? get rowOrder => (_$data['rowOrder'] as String?);
  String? get profileColor => (_$data['profileColor'] as String?);
  String? get donatorBadge => (_$data['donatorBadge'] as String?);
  List<Input$NotificationOptionInput?>? get notificationOptions =>
      (_$data['notificationOptions'] as List<Input$NotificationOptionInput?>?);
  String? get timezone => (_$data['timezone'] as String?);
  int? get activityMergeTime => (_$data['activityMergeTime'] as int?);
  Input$MediaListOptionsInput? get animeListOptions =>
      (_$data['animeListOptions'] as Input$MediaListOptionsInput?);
  Input$MediaListOptionsInput? get mangaListOptions =>
      (_$data['mangaListOptions'] as Input$MediaListOptionsInput?);
  Enum$UserStaffNameLanguage? get staffNameLanguage =>
      (_$data['staffNameLanguage'] as Enum$UserStaffNameLanguage?);
  bool? get restrictMessagesToFollowing =>
      (_$data['restrictMessagesToFollowing'] as bool?);
  List<Input$ListActivityOptionInput?>? get disabledListActivity =>
      (_$data['disabledListActivity'] as List<Input$ListActivityOptionInput?>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('about')) {
      final l$about = about;
      result$data['about'] = l$about;
    }
    if (_$data.containsKey('titleLanguage')) {
      final l$titleLanguage = titleLanguage;
      result$data['titleLanguage'] = l$titleLanguage == null
          ? null
          : toJson$Enum$UserTitleLanguage(l$titleLanguage);
    }
    if (_$data.containsKey('displayAdultContent')) {
      final l$displayAdultContent = displayAdultContent;
      result$data['displayAdultContent'] = l$displayAdultContent;
    }
    if (_$data.containsKey('airingNotifications')) {
      final l$airingNotifications = airingNotifications;
      result$data['airingNotifications'] = l$airingNotifications;
    }
    if (_$data.containsKey('scoreFormat')) {
      final l$scoreFormat = scoreFormat;
      result$data['scoreFormat'] =
          l$scoreFormat == null ? null : toJson$Enum$ScoreFormat(l$scoreFormat);
    }
    if (_$data.containsKey('rowOrder')) {
      final l$rowOrder = rowOrder;
      result$data['rowOrder'] = l$rowOrder;
    }
    if (_$data.containsKey('profileColor')) {
      final l$profileColor = profileColor;
      result$data['profileColor'] = l$profileColor;
    }
    if (_$data.containsKey('donatorBadge')) {
      final l$donatorBadge = donatorBadge;
      result$data['donatorBadge'] = l$donatorBadge;
    }
    if (_$data.containsKey('notificationOptions')) {
      final l$notificationOptions = notificationOptions;
      result$data['notificationOptions'] =
          l$notificationOptions?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('timezone')) {
      final l$timezone = timezone;
      result$data['timezone'] = l$timezone;
    }
    if (_$data.containsKey('activityMergeTime')) {
      final l$activityMergeTime = activityMergeTime;
      result$data['activityMergeTime'] = l$activityMergeTime;
    }
    if (_$data.containsKey('animeListOptions')) {
      final l$animeListOptions = animeListOptions;
      result$data['animeListOptions'] = l$animeListOptions?.toJson();
    }
    if (_$data.containsKey('mangaListOptions')) {
      final l$mangaListOptions = mangaListOptions;
      result$data['mangaListOptions'] = l$mangaListOptions?.toJson();
    }
    if (_$data.containsKey('staffNameLanguage')) {
      final l$staffNameLanguage = staffNameLanguage;
      result$data['staffNameLanguage'] = l$staffNameLanguage == null
          ? null
          : toJson$Enum$UserStaffNameLanguage(l$staffNameLanguage);
    }
    if (_$data.containsKey('restrictMessagesToFollowing')) {
      final l$restrictMessagesToFollowing = restrictMessagesToFollowing;
      result$data['restrictMessagesToFollowing'] =
          l$restrictMessagesToFollowing;
    }
    if (_$data.containsKey('disabledListActivity')) {
      final l$disabledListActivity = disabledListActivity;
      result$data['disabledListActivity'] =
          l$disabledListActivity?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateUser<Variables$Mutation$UpdateUser>
      get copyWith => CopyWith$Variables$Mutation$UpdateUser(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$about = about;
    final lOther$about = other.about;
    if (_$data.containsKey('about') != other._$data.containsKey('about')) {
      return false;
    }
    if (l$about != lOther$about) {
      return false;
    }
    final l$titleLanguage = titleLanguage;
    final lOther$titleLanguage = other.titleLanguage;
    if (_$data.containsKey('titleLanguage') !=
        other._$data.containsKey('titleLanguage')) {
      return false;
    }
    if (l$titleLanguage != lOther$titleLanguage) {
      return false;
    }
    final l$displayAdultContent = displayAdultContent;
    final lOther$displayAdultContent = other.displayAdultContent;
    if (_$data.containsKey('displayAdultContent') !=
        other._$data.containsKey('displayAdultContent')) {
      return false;
    }
    if (l$displayAdultContent != lOther$displayAdultContent) {
      return false;
    }
    final l$airingNotifications = airingNotifications;
    final lOther$airingNotifications = other.airingNotifications;
    if (_$data.containsKey('airingNotifications') !=
        other._$data.containsKey('airingNotifications')) {
      return false;
    }
    if (l$airingNotifications != lOther$airingNotifications) {
      return false;
    }
    final l$scoreFormat = scoreFormat;
    final lOther$scoreFormat = other.scoreFormat;
    if (_$data.containsKey('scoreFormat') !=
        other._$data.containsKey('scoreFormat')) {
      return false;
    }
    if (l$scoreFormat != lOther$scoreFormat) {
      return false;
    }
    final l$rowOrder = rowOrder;
    final lOther$rowOrder = other.rowOrder;
    if (_$data.containsKey('rowOrder') !=
        other._$data.containsKey('rowOrder')) {
      return false;
    }
    if (l$rowOrder != lOther$rowOrder) {
      return false;
    }
    final l$profileColor = profileColor;
    final lOther$profileColor = other.profileColor;
    if (_$data.containsKey('profileColor') !=
        other._$data.containsKey('profileColor')) {
      return false;
    }
    if (l$profileColor != lOther$profileColor) {
      return false;
    }
    final l$donatorBadge = donatorBadge;
    final lOther$donatorBadge = other.donatorBadge;
    if (_$data.containsKey('donatorBadge') !=
        other._$data.containsKey('donatorBadge')) {
      return false;
    }
    if (l$donatorBadge != lOther$donatorBadge) {
      return false;
    }
    final l$notificationOptions = notificationOptions;
    final lOther$notificationOptions = other.notificationOptions;
    if (_$data.containsKey('notificationOptions') !=
        other._$data.containsKey('notificationOptions')) {
      return false;
    }
    if (l$notificationOptions != null && lOther$notificationOptions != null) {
      if (l$notificationOptions.length != lOther$notificationOptions.length) {
        return false;
      }
      for (int i = 0; i < l$notificationOptions.length; i++) {
        final l$notificationOptions$entry = l$notificationOptions[i];
        final lOther$notificationOptions$entry = lOther$notificationOptions[i];
        if (l$notificationOptions$entry != lOther$notificationOptions$entry) {
          return false;
        }
      }
    } else if (l$notificationOptions != lOther$notificationOptions) {
      return false;
    }
    final l$timezone = timezone;
    final lOther$timezone = other.timezone;
    if (_$data.containsKey('timezone') !=
        other._$data.containsKey('timezone')) {
      return false;
    }
    if (l$timezone != lOther$timezone) {
      return false;
    }
    final l$activityMergeTime = activityMergeTime;
    final lOther$activityMergeTime = other.activityMergeTime;
    if (_$data.containsKey('activityMergeTime') !=
        other._$data.containsKey('activityMergeTime')) {
      return false;
    }
    if (l$activityMergeTime != lOther$activityMergeTime) {
      return false;
    }
    final l$animeListOptions = animeListOptions;
    final lOther$animeListOptions = other.animeListOptions;
    if (_$data.containsKey('animeListOptions') !=
        other._$data.containsKey('animeListOptions')) {
      return false;
    }
    if (l$animeListOptions != lOther$animeListOptions) {
      return false;
    }
    final l$mangaListOptions = mangaListOptions;
    final lOther$mangaListOptions = other.mangaListOptions;
    if (_$data.containsKey('mangaListOptions') !=
        other._$data.containsKey('mangaListOptions')) {
      return false;
    }
    if (l$mangaListOptions != lOther$mangaListOptions) {
      return false;
    }
    final l$staffNameLanguage = staffNameLanguage;
    final lOther$staffNameLanguage = other.staffNameLanguage;
    if (_$data.containsKey('staffNameLanguage') !=
        other._$data.containsKey('staffNameLanguage')) {
      return false;
    }
    if (l$staffNameLanguage != lOther$staffNameLanguage) {
      return false;
    }
    final l$restrictMessagesToFollowing = restrictMessagesToFollowing;
    final lOther$restrictMessagesToFollowing =
        other.restrictMessagesToFollowing;
    if (_$data.containsKey('restrictMessagesToFollowing') !=
        other._$data.containsKey('restrictMessagesToFollowing')) {
      return false;
    }
    if (l$restrictMessagesToFollowing != lOther$restrictMessagesToFollowing) {
      return false;
    }
    final l$disabledListActivity = disabledListActivity;
    final lOther$disabledListActivity = other.disabledListActivity;
    if (_$data.containsKey('disabledListActivity') !=
        other._$data.containsKey('disabledListActivity')) {
      return false;
    }
    if (l$disabledListActivity != null && lOther$disabledListActivity != null) {
      if (l$disabledListActivity.length != lOther$disabledListActivity.length) {
        return false;
      }
      for (int i = 0; i < l$disabledListActivity.length; i++) {
        final l$disabledListActivity$entry = l$disabledListActivity[i];
        final lOther$disabledListActivity$entry =
            lOther$disabledListActivity[i];
        if (l$disabledListActivity$entry != lOther$disabledListActivity$entry) {
          return false;
        }
      }
    } else if (l$disabledListActivity != lOther$disabledListActivity) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$about = about;
    final l$titleLanguage = titleLanguage;
    final l$displayAdultContent = displayAdultContent;
    final l$airingNotifications = airingNotifications;
    final l$scoreFormat = scoreFormat;
    final l$rowOrder = rowOrder;
    final l$profileColor = profileColor;
    final l$donatorBadge = donatorBadge;
    final l$notificationOptions = notificationOptions;
    final l$timezone = timezone;
    final l$activityMergeTime = activityMergeTime;
    final l$animeListOptions = animeListOptions;
    final l$mangaListOptions = mangaListOptions;
    final l$staffNameLanguage = staffNameLanguage;
    final l$restrictMessagesToFollowing = restrictMessagesToFollowing;
    final l$disabledListActivity = disabledListActivity;
    return Object.hashAll([
      _$data.containsKey('about') ? l$about : const {},
      _$data.containsKey('titleLanguage') ? l$titleLanguage : const {},
      _$data.containsKey('displayAdultContent')
          ? l$displayAdultContent
          : const {},
      _$data.containsKey('airingNotifications')
          ? l$airingNotifications
          : const {},
      _$data.containsKey('scoreFormat') ? l$scoreFormat : const {},
      _$data.containsKey('rowOrder') ? l$rowOrder : const {},
      _$data.containsKey('profileColor') ? l$profileColor : const {},
      _$data.containsKey('donatorBadge') ? l$donatorBadge : const {},
      _$data.containsKey('notificationOptions')
          ? l$notificationOptions == null
              ? null
              : Object.hashAll(l$notificationOptions.map((v) => v))
          : const {},
      _$data.containsKey('timezone') ? l$timezone : const {},
      _$data.containsKey('activityMergeTime') ? l$activityMergeTime : const {},
      _$data.containsKey('animeListOptions') ? l$animeListOptions : const {},
      _$data.containsKey('mangaListOptions') ? l$mangaListOptions : const {},
      _$data.containsKey('staffNameLanguage') ? l$staffNameLanguage : const {},
      _$data.containsKey('restrictMessagesToFollowing')
          ? l$restrictMessagesToFollowing
          : const {},
      _$data.containsKey('disabledListActivity')
          ? l$disabledListActivity == null
              ? null
              : Object.hashAll(l$disabledListActivity.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateUser<TRes> {
  factory CopyWith$Variables$Mutation$UpdateUser(
    Variables$Mutation$UpdateUser instance,
    TRes Function(Variables$Mutation$UpdateUser) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateUser;

  factory CopyWith$Variables$Mutation$UpdateUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateUser;

  TRes call({
    String? about,
    Enum$UserTitleLanguage? titleLanguage,
    bool? displayAdultContent,
    bool? airingNotifications,
    Enum$ScoreFormat? scoreFormat,
    String? rowOrder,
    String? profileColor,
    String? donatorBadge,
    List<Input$NotificationOptionInput?>? notificationOptions,
    String? timezone,
    int? activityMergeTime,
    Input$MediaListOptionsInput? animeListOptions,
    Input$MediaListOptionsInput? mangaListOptions,
    Enum$UserStaffNameLanguage? staffNameLanguage,
    bool? restrictMessagesToFollowing,
    List<Input$ListActivityOptionInput?>? disabledListActivity,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateUser<TRes>
    implements CopyWith$Variables$Mutation$UpdateUser<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateUser _instance;

  final TRes Function(Variables$Mutation$UpdateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? about = _undefined,
    Object? titleLanguage = _undefined,
    Object? displayAdultContent = _undefined,
    Object? airingNotifications = _undefined,
    Object? scoreFormat = _undefined,
    Object? rowOrder = _undefined,
    Object? profileColor = _undefined,
    Object? donatorBadge = _undefined,
    Object? notificationOptions = _undefined,
    Object? timezone = _undefined,
    Object? activityMergeTime = _undefined,
    Object? animeListOptions = _undefined,
    Object? mangaListOptions = _undefined,
    Object? staffNameLanguage = _undefined,
    Object? restrictMessagesToFollowing = _undefined,
    Object? disabledListActivity = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateUser._({
        ..._instance._$data,
        if (about != _undefined) 'about': (about as String?),
        if (titleLanguage != _undefined)
          'titleLanguage': (titleLanguage as Enum$UserTitleLanguage?),
        if (displayAdultContent != _undefined)
          'displayAdultContent': (displayAdultContent as bool?),
        if (airingNotifications != _undefined)
          'airingNotifications': (airingNotifications as bool?),
        if (scoreFormat != _undefined)
          'scoreFormat': (scoreFormat as Enum$ScoreFormat?),
        if (rowOrder != _undefined) 'rowOrder': (rowOrder as String?),
        if (profileColor != _undefined)
          'profileColor': (profileColor as String?),
        if (donatorBadge != _undefined)
          'donatorBadge': (donatorBadge as String?),
        if (notificationOptions != _undefined)
          'notificationOptions':
              (notificationOptions as List<Input$NotificationOptionInput?>?),
        if (timezone != _undefined) 'timezone': (timezone as String?),
        if (activityMergeTime != _undefined)
          'activityMergeTime': (activityMergeTime as int?),
        if (animeListOptions != _undefined)
          'animeListOptions':
              (animeListOptions as Input$MediaListOptionsInput?),
        if (mangaListOptions != _undefined)
          'mangaListOptions':
              (mangaListOptions as Input$MediaListOptionsInput?),
        if (staffNameLanguage != _undefined)
          'staffNameLanguage':
              (staffNameLanguage as Enum$UserStaffNameLanguage?),
        if (restrictMessagesToFollowing != _undefined)
          'restrictMessagesToFollowing': (restrictMessagesToFollowing as bool?),
        if (disabledListActivity != _undefined)
          'disabledListActivity':
              (disabledListActivity as List<Input$ListActivityOptionInput?>?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateUser<TRes>
    implements CopyWith$Variables$Mutation$UpdateUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateUser(this._res);

  TRes _res;

  call({
    String? about,
    Enum$UserTitleLanguage? titleLanguage,
    bool? displayAdultContent,
    bool? airingNotifications,
    Enum$ScoreFormat? scoreFormat,
    String? rowOrder,
    String? profileColor,
    String? donatorBadge,
    List<Input$NotificationOptionInput?>? notificationOptions,
    String? timezone,
    int? activityMergeTime,
    Input$MediaListOptionsInput? animeListOptions,
    Input$MediaListOptionsInput? mangaListOptions,
    Enum$UserStaffNameLanguage? staffNameLanguage,
    bool? restrictMessagesToFollowing,
    List<Input$ListActivityOptionInput?>? disabledListActivity,
  }) =>
      _res;
}

class Mutation$UpdateUser {
  Mutation$UpdateUser({
    this.UpdateUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateUser.fromJson(Map<String, dynamic> json) {
    final l$UpdateUser = json['UpdateUser'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser(
      UpdateUser: l$UpdateUser == null
          ? null
          : Fragment$ThisUser.fromJson((l$UpdateUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ThisUser? UpdateUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$UpdateUser = UpdateUser;
    _resultData['UpdateUser'] = l$UpdateUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$UpdateUser = UpdateUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$UpdateUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$UpdateUser = UpdateUser;
    final lOther$UpdateUser = other.UpdateUser;
    if (l$UpdateUser != lOther$UpdateUser) {
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

extension UtilityExtension$Mutation$UpdateUser on Mutation$UpdateUser {
  CopyWith$Mutation$UpdateUser<Mutation$UpdateUser> get copyWith =>
      CopyWith$Mutation$UpdateUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateUser<TRes> {
  factory CopyWith$Mutation$UpdateUser(
    Mutation$UpdateUser instance,
    TRes Function(Mutation$UpdateUser) then,
  ) = _CopyWithImpl$Mutation$UpdateUser;

  factory CopyWith$Mutation$UpdateUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUser;

  TRes call({
    Fragment$ThisUser? UpdateUser,
    String? $__typename,
  });
  CopyWith$Fragment$ThisUser<TRes> get UpdateUser;
}

class _CopyWithImpl$Mutation$UpdateUser<TRes>
    implements CopyWith$Mutation$UpdateUser<TRes> {
  _CopyWithImpl$Mutation$UpdateUser(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUser _instance;

  final TRes Function(Mutation$UpdateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? UpdateUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateUser(
        UpdateUser: UpdateUser == _undefined
            ? _instance.UpdateUser
            : (UpdateUser as Fragment$ThisUser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$ThisUser<TRes> get UpdateUser {
    final local$UpdateUser = _instance.UpdateUser;
    return local$UpdateUser == null
        ? CopyWith$Fragment$ThisUser.stub(_then(_instance))
        : CopyWith$Fragment$ThisUser(
            local$UpdateUser, (e) => call(UpdateUser: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateUser<TRes>
    implements CopyWith$Mutation$UpdateUser<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser(this._res);

  TRes _res;

  call({
    Fragment$ThisUser? UpdateUser,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$ThisUser<TRes> get UpdateUser =>
      CopyWith$Fragment$ThisUser.stub(_res);
}

const documentNodeMutationUpdateUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'about')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'titleLanguage')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserTitleLanguage'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'displayAdultContent')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'airingNotifications')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'scoreFormat')),
        type: NamedTypeNode(
          name: NameNode(value: 'ScoreFormat'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'rowOrder')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'profileColor')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'donatorBadge')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'notificationOptions')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'NotificationOptionInput'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'timezone')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'activityMergeTime')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'animeListOptions')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaListOptionsInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mangaListOptions')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaListOptionsInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'staffNameLanguage')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserStaffNameLanguage'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable:
            VariableNode(name: NameNode(value: 'restrictMessagesToFollowing')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'disabledListActivity')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ListActivityOptionInput'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'UpdateUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'about'),
            value: VariableNode(name: NameNode(value: 'about')),
          ),
          ArgumentNode(
            name: NameNode(value: 'titleLanguage'),
            value: VariableNode(name: NameNode(value: 'titleLanguage')),
          ),
          ArgumentNode(
            name: NameNode(value: 'displayAdultContent'),
            value: VariableNode(name: NameNode(value: 'displayAdultContent')),
          ),
          ArgumentNode(
            name: NameNode(value: 'airingNotifications'),
            value: VariableNode(name: NameNode(value: 'airingNotifications')),
          ),
          ArgumentNode(
            name: NameNode(value: 'scoreFormat'),
            value: VariableNode(name: NameNode(value: 'scoreFormat')),
          ),
          ArgumentNode(
            name: NameNode(value: 'rowOrder'),
            value: VariableNode(name: NameNode(value: 'rowOrder')),
          ),
          ArgumentNode(
            name: NameNode(value: 'profileColor'),
            value: VariableNode(name: NameNode(value: 'profileColor')),
          ),
          ArgumentNode(
            name: NameNode(value: 'donatorBadge'),
            value: VariableNode(name: NameNode(value: 'donatorBadge')),
          ),
          ArgumentNode(
            name: NameNode(value: 'notificationOptions'),
            value: VariableNode(name: NameNode(value: 'notificationOptions')),
          ),
          ArgumentNode(
            name: NameNode(value: 'timezone'),
            value: VariableNode(name: NameNode(value: 'timezone')),
          ),
          ArgumentNode(
            name: NameNode(value: 'activityMergeTime'),
            value: VariableNode(name: NameNode(value: 'activityMergeTime')),
          ),
          ArgumentNode(
            name: NameNode(value: 'animeListOptions'),
            value: VariableNode(name: NameNode(value: 'animeListOptions')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mangaListOptions'),
            value: VariableNode(name: NameNode(value: 'mangaListOptions')),
          ),
          ArgumentNode(
            name: NameNode(value: 'staffNameLanguage'),
            value: VariableNode(name: NameNode(value: 'staffNameLanguage')),
          ),
          ArgumentNode(
            name: NameNode(value: 'restrictMessagesToFollowing'),
            value: VariableNode(
                name: NameNode(value: 'restrictMessagesToFollowing')),
          ),
          ArgumentNode(
            name: NameNode(value: 'disabledListActivity'),
            value: VariableNode(name: NameNode(value: 'disabledListActivity')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ThisUser'),
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
  fragmentDefinitionThisUser,
]);
Mutation$UpdateUser _parserFn$Mutation$UpdateUser(Map<String, dynamic> data) =>
    Mutation$UpdateUser.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateUser?,
);

class Options$Mutation$UpdateUser
    extends graphql.MutationOptions<Mutation$UpdateUser> {
  Options$Mutation$UpdateUser({
    String? operationName,
    Variables$Mutation$UpdateUser? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateUser>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UpdateUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateUser,
          parserFn: _parserFn$Mutation$UpdateUser,
        );

  final OnMutationCompleted$Mutation$UpdateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateUser
    extends graphql.WatchQueryOptions<Mutation$UpdateUser> {
  WatchOptions$Mutation$UpdateUser({
    String? operationName,
    Variables$Mutation$UpdateUser? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUser? typedOptimisticResult,
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
          document: documentNodeMutationUpdateUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateUser,
        );
}

extension ClientExtension$Mutation$UpdateUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateUser>> mutate$UpdateUser(
          [Options$Mutation$UpdateUser? options]) async =>
      await this.mutate(options ?? Options$Mutation$UpdateUser());
  graphql.ObservableQuery<Mutation$UpdateUser> watchMutation$UpdateUser(
          [WatchOptions$Mutation$UpdateUser? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$UpdateUser());
}

class Mutation$UpdateUser$HookResult {
  Mutation$UpdateUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateUser runMutation;

  final graphql.QueryResult<Mutation$UpdateUser> result;
}

Mutation$UpdateUser$HookResult useMutation$UpdateUser(
    [WidgetOptions$Mutation$UpdateUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateUser());
  return Mutation$UpdateUser$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateUser> useWatchMutation$UpdateUser(
        [WatchOptions$Mutation$UpdateUser? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$UpdateUser());

class WidgetOptions$Mutation$UpdateUser
    extends graphql.MutationOptions<Mutation$UpdateUser> {
  WidgetOptions$Mutation$UpdateUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateUser>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UpdateUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateUser,
          parserFn: _parserFn$Mutation$UpdateUser,
        );

  final OnMutationCompleted$Mutation$UpdateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateUser
    = graphql.MultiSourceResult<Mutation$UpdateUser> Function({
  Variables$Mutation$UpdateUser? variables,
  Object? optimisticResult,
  Mutation$UpdateUser? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateUser = widgets.Widget Function(
  RunMutation$Mutation$UpdateUser,
  graphql.QueryResult<Mutation$UpdateUser>?,
);

class Mutation$UpdateUser$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateUser> {
  Mutation$UpdateUser$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateUser? options,
    required Builder$Mutation$UpdateUser builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateUser(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}
