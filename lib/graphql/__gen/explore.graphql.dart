import 'fragments/media.graphql.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Variables$Query$Explore {
  factory Variables$Query$Explore({
    Enum$MediaSeason? season,
    int? seasonYear,
    Enum$MediaSeason? nextSeason,
    int? nextYear,
  }) =>
      Variables$Query$Explore._({
        if (season != null) r'season': season,
        if (seasonYear != null) r'seasonYear': seasonYear,
        if (nextSeason != null) r'nextSeason': nextSeason,
        if (nextYear != null) r'nextYear': nextYear,
      });

  Variables$Query$Explore._(this._$data);

  factory Variables$Query$Explore.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('season')) {
      final l$season = data['season'];
      result$data['season'] = l$season == null
          ? null
          : fromJson$Enum$MediaSeason((l$season as String));
    }
    if (data.containsKey('seasonYear')) {
      final l$seasonYear = data['seasonYear'];
      result$data['seasonYear'] = (l$seasonYear as int?);
    }
    if (data.containsKey('nextSeason')) {
      final l$nextSeason = data['nextSeason'];
      result$data['nextSeason'] = l$nextSeason == null
          ? null
          : fromJson$Enum$MediaSeason((l$nextSeason as String));
    }
    if (data.containsKey('nextYear')) {
      final l$nextYear = data['nextYear'];
      result$data['nextYear'] = (l$nextYear as int?);
    }
    return Variables$Query$Explore._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$MediaSeason? get season => (_$data['season'] as Enum$MediaSeason?);

  int? get seasonYear => (_$data['seasonYear'] as int?);

  Enum$MediaSeason? get nextSeason =>
      (_$data['nextSeason'] as Enum$MediaSeason?);

  int? get nextYear => (_$data['nextYear'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('season')) {
      final l$season = season;
      result$data['season'] =
          l$season == null ? null : toJson$Enum$MediaSeason(l$season);
    }
    if (_$data.containsKey('seasonYear')) {
      final l$seasonYear = seasonYear;
      result$data['seasonYear'] = l$seasonYear;
    }
    if (_$data.containsKey('nextSeason')) {
      final l$nextSeason = nextSeason;
      result$data['nextSeason'] =
          l$nextSeason == null ? null : toJson$Enum$MediaSeason(l$nextSeason);
    }
    if (_$data.containsKey('nextYear')) {
      final l$nextYear = nextYear;
      result$data['nextYear'] = l$nextYear;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Explore<Variables$Query$Explore> get copyWith =>
      CopyWith$Variables$Query$Explore(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Explore || runtimeType != other.runtimeType) {
      return false;
    }
    final l$season = season;
    final lOther$season = other.season;
    if (_$data.containsKey('season') != other._$data.containsKey('season')) {
      return false;
    }
    if (l$season != lOther$season) {
      return false;
    }
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (_$data.containsKey('seasonYear') !=
        other._$data.containsKey('seasonYear')) {
      return false;
    }
    if (l$seasonYear != lOther$seasonYear) {
      return false;
    }
    final l$nextSeason = nextSeason;
    final lOther$nextSeason = other.nextSeason;
    if (_$data.containsKey('nextSeason') !=
        other._$data.containsKey('nextSeason')) {
      return false;
    }
    if (l$nextSeason != lOther$nextSeason) {
      return false;
    }
    final l$nextYear = nextYear;
    final lOther$nextYear = other.nextYear;
    if (_$data.containsKey('nextYear') !=
        other._$data.containsKey('nextYear')) {
      return false;
    }
    if (l$nextYear != lOther$nextYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$season = season;
    final l$seasonYear = seasonYear;
    final l$nextSeason = nextSeason;
    final l$nextYear = nextYear;
    return Object.hashAll([
      _$data.containsKey('season') ? l$season : const {},
      _$data.containsKey('seasonYear') ? l$seasonYear : const {},
      _$data.containsKey('nextSeason') ? l$nextSeason : const {},
      _$data.containsKey('nextYear') ? l$nextYear : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Explore<TRes> {
  factory CopyWith$Variables$Query$Explore(
    Variables$Query$Explore instance,
    TRes Function(Variables$Query$Explore) then,
  ) = _CopyWithImpl$Variables$Query$Explore;

  factory CopyWith$Variables$Query$Explore.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Explore;

  TRes call({
    Enum$MediaSeason? season,
    int? seasonYear,
    Enum$MediaSeason? nextSeason,
    int? nextYear,
  });
}

class _CopyWithImpl$Variables$Query$Explore<TRes>
    implements CopyWith$Variables$Query$Explore<TRes> {
  _CopyWithImpl$Variables$Query$Explore(
    this._instance,
    this._then,
  );

  final Variables$Query$Explore _instance;

  final TRes Function(Variables$Query$Explore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? season = _undefined,
    Object? seasonYear = _undefined,
    Object? nextSeason = _undefined,
    Object? nextYear = _undefined,
  }) =>
      _then(Variables$Query$Explore._({
        ..._instance._$data,
        if (season != _undefined) 'season': (season as Enum$MediaSeason?),
        if (seasonYear != _undefined) 'seasonYear': (seasonYear as int?),
        if (nextSeason != _undefined)
          'nextSeason': (nextSeason as Enum$MediaSeason?),
        if (nextYear != _undefined) 'nextYear': (nextYear as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Explore<TRes>
    implements CopyWith$Variables$Query$Explore<TRes> {
  _CopyWithStubImpl$Variables$Query$Explore(this._res);

  TRes _res;

  call({
    Enum$MediaSeason? season,
    int? seasonYear,
    Enum$MediaSeason? nextSeason,
    int? nextYear,
  }) =>
      _res;
}

class Query$Explore {
  Query$Explore({
    this.trending,
    this.season,
    this.nextSeason,
    this.popular,
    this.recent,
    this.$__typename = 'Query',
  });

  factory Query$Explore.fromJson(Map<String, dynamic> json) {
    final l$trending = json['trending'];
    final l$season = json['season'];
    final l$nextSeason = json['nextSeason'];
    final l$popular = json['popular'];
    final l$recent = json['recent'];
    final l$$__typename = json['__typename'];
    return Query$Explore(
      trending: l$trending == null
          ? null
          : Query$Explore$trending.fromJson(
              (l$trending as Map<String, dynamic>)),
      season: l$season == null
          ? null
          : Query$Explore$season.fromJson((l$season as Map<String, dynamic>)),
      nextSeason: l$nextSeason == null
          ? null
          : Query$Explore$nextSeason.fromJson(
              (l$nextSeason as Map<String, dynamic>)),
      popular: l$popular == null
          ? null
          : Query$Explore$popular.fromJson((l$popular as Map<String, dynamic>)),
      recent: l$recent == null
          ? null
          : Query$Explore$recent.fromJson((l$recent as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Explore$trending? trending;

  final Query$Explore$season? season;

  final Query$Explore$nextSeason? nextSeason;

  final Query$Explore$popular? popular;

  final Query$Explore$recent? recent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$trending = trending;
    _resultData['trending'] = l$trending?.toJson();
    final l$season = season;
    _resultData['season'] = l$season?.toJson();
    final l$nextSeason = nextSeason;
    _resultData['nextSeason'] = l$nextSeason?.toJson();
    final l$popular = popular;
    _resultData['popular'] = l$popular?.toJson();
    final l$recent = recent;
    _resultData['recent'] = l$recent?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$trending = trending;
    final l$season = season;
    final l$nextSeason = nextSeason;
    final l$popular = popular;
    final l$recent = recent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$trending,
      l$season,
      l$nextSeason,
      l$popular,
      l$recent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Explore || runtimeType != other.runtimeType) {
      return false;
    }
    final l$trending = trending;
    final lOther$trending = other.trending;
    if (l$trending != lOther$trending) {
      return false;
    }
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) {
      return false;
    }
    final l$nextSeason = nextSeason;
    final lOther$nextSeason = other.nextSeason;
    if (l$nextSeason != lOther$nextSeason) {
      return false;
    }
    final l$popular = popular;
    final lOther$popular = other.popular;
    if (l$popular != lOther$popular) {
      return false;
    }
    final l$recent = recent;
    final lOther$recent = other.recent;
    if (l$recent != lOther$recent) {
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

extension UtilityExtension$Query$Explore on Query$Explore {
  CopyWith$Query$Explore<Query$Explore> get copyWith => CopyWith$Query$Explore(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Explore<TRes> {
  factory CopyWith$Query$Explore(
    Query$Explore instance,
    TRes Function(Query$Explore) then,
  ) = _CopyWithImpl$Query$Explore;

  factory CopyWith$Query$Explore.stub(TRes res) =
      _CopyWithStubImpl$Query$Explore;

  TRes call({
    Query$Explore$trending? trending,
    Query$Explore$season? season,
    Query$Explore$nextSeason? nextSeason,
    Query$Explore$popular? popular,
    Query$Explore$recent? recent,
    String? $__typename,
  });
  CopyWith$Query$Explore$trending<TRes> get trending;
  CopyWith$Query$Explore$season<TRes> get season;
  CopyWith$Query$Explore$nextSeason<TRes> get nextSeason;
  CopyWith$Query$Explore$popular<TRes> get popular;
  CopyWith$Query$Explore$recent<TRes> get recent;
}

class _CopyWithImpl$Query$Explore<TRes>
    implements CopyWith$Query$Explore<TRes> {
  _CopyWithImpl$Query$Explore(
    this._instance,
    this._then,
  );

  final Query$Explore _instance;

  final TRes Function(Query$Explore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? trending = _undefined,
    Object? season = _undefined,
    Object? nextSeason = _undefined,
    Object? popular = _undefined,
    Object? recent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Explore(
        trending: trending == _undefined
            ? _instance.trending
            : (trending as Query$Explore$trending?),
        season: season == _undefined
            ? _instance.season
            : (season as Query$Explore$season?),
        nextSeason: nextSeason == _undefined
            ? _instance.nextSeason
            : (nextSeason as Query$Explore$nextSeason?),
        popular: popular == _undefined
            ? _instance.popular
            : (popular as Query$Explore$popular?),
        recent: recent == _undefined
            ? _instance.recent
            : (recent as Query$Explore$recent?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Explore$trending<TRes> get trending {
    final local$trending = _instance.trending;
    return local$trending == null
        ? CopyWith$Query$Explore$trending.stub(_then(_instance))
        : CopyWith$Query$Explore$trending(
            local$trending, (e) => call(trending: e));
  }

  CopyWith$Query$Explore$season<TRes> get season {
    final local$season = _instance.season;
    return local$season == null
        ? CopyWith$Query$Explore$season.stub(_then(_instance))
        : CopyWith$Query$Explore$season(local$season, (e) => call(season: e));
  }

  CopyWith$Query$Explore$nextSeason<TRes> get nextSeason {
    final local$nextSeason = _instance.nextSeason;
    return local$nextSeason == null
        ? CopyWith$Query$Explore$nextSeason.stub(_then(_instance))
        : CopyWith$Query$Explore$nextSeason(
            local$nextSeason, (e) => call(nextSeason: e));
  }

  CopyWith$Query$Explore$popular<TRes> get popular {
    final local$popular = _instance.popular;
    return local$popular == null
        ? CopyWith$Query$Explore$popular.stub(_then(_instance))
        : CopyWith$Query$Explore$popular(
            local$popular, (e) => call(popular: e));
  }

  CopyWith$Query$Explore$recent<TRes> get recent {
    final local$recent = _instance.recent;
    return local$recent == null
        ? CopyWith$Query$Explore$recent.stub(_then(_instance))
        : CopyWith$Query$Explore$recent(local$recent, (e) => call(recent: e));
  }
}

class _CopyWithStubImpl$Query$Explore<TRes>
    implements CopyWith$Query$Explore<TRes> {
  _CopyWithStubImpl$Query$Explore(this._res);

  TRes _res;

  call({
    Query$Explore$trending? trending,
    Query$Explore$season? season,
    Query$Explore$nextSeason? nextSeason,
    Query$Explore$popular? popular,
    Query$Explore$recent? recent,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Explore$trending<TRes> get trending =>
      CopyWith$Query$Explore$trending.stub(_res);

  CopyWith$Query$Explore$season<TRes> get season =>
      CopyWith$Query$Explore$season.stub(_res);

  CopyWith$Query$Explore$nextSeason<TRes> get nextSeason =>
      CopyWith$Query$Explore$nextSeason.stub(_res);

  CopyWith$Query$Explore$popular<TRes> get popular =>
      CopyWith$Query$Explore$popular.stub(_res);

  CopyWith$Query$Explore$recent<TRes> get recent =>
      CopyWith$Query$Explore$recent.stub(_res);
}

const documentNodeQueryExplore = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Explore'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'season')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaSeason'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'seasonYear')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nextSeason')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaSeason'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nextYear')),
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
        alias: NameNode(value: 'trending'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '10'),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'TRENDING_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'MediaFragment'),
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'season'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '13'),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'season'),
                value: VariableNode(name: NameNode(value: 'season')),
              ),
              ArgumentNode(
                name: NameNode(value: 'seasonYear'),
                value: VariableNode(name: NameNode(value: 'seasonYear')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'POPULARITY_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'MediaFragment'),
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'nextSeason'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '14'),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'season'),
                value: VariableNode(name: NameNode(value: 'nextSeason')),
              ),
              ArgumentNode(
                name: NameNode(value: 'seasonYear'),
                value: VariableNode(name: NameNode(value: 'nextYear')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'POPULARITY_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'MediaFragment'),
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'popular'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '11'),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'POPULARITY_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'MediaFragment'),
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'recent'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '12'),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'ID_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'MediaFragment'),
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
  fragmentDefinitionMediaFragment,
]);

class Query$Explore$trending {
  Query$Explore$trending({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Explore$trending.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Explore$trending(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaFragment?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Explore$trending || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Explore$trending on Query$Explore$trending {
  CopyWith$Query$Explore$trending<Query$Explore$trending> get copyWith =>
      CopyWith$Query$Explore$trending(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Explore$trending<TRes> {
  factory CopyWith$Query$Explore$trending(
    Query$Explore$trending instance,
    TRes Function(Query$Explore$trending) then,
  ) = _CopyWithImpl$Query$Explore$trending;

  factory CopyWith$Query$Explore$trending.stub(TRes res) =
      _CopyWithStubImpl$Query$Explore$trending;

  TRes call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$MediaFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Explore$trending<TRes>
    implements CopyWith$Query$Explore$trending<TRes> {
  _CopyWithImpl$Query$Explore$trending(
    this._instance,
    this._then,
  );

  final Query$Explore$trending _instance;

  final TRes Function(Query$Explore$trending) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Explore$trending(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes media(
          Iterable<Fragment$MediaFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFragment<
                          Fragment$MediaFragment>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Explore$trending<TRes>
    implements CopyWith$Query$Explore$trending<TRes> {
  _CopyWithStubImpl$Query$Explore$trending(this._res);

  TRes _res;

  call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  }) =>
      _res;

  media(_fn) => _res;
}

class Query$Explore$season {
  Query$Explore$season({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Explore$season.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Explore$season(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaFragment?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Explore$season || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Explore$season on Query$Explore$season {
  CopyWith$Query$Explore$season<Query$Explore$season> get copyWith =>
      CopyWith$Query$Explore$season(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Explore$season<TRes> {
  factory CopyWith$Query$Explore$season(
    Query$Explore$season instance,
    TRes Function(Query$Explore$season) then,
  ) = _CopyWithImpl$Query$Explore$season;

  factory CopyWith$Query$Explore$season.stub(TRes res) =
      _CopyWithStubImpl$Query$Explore$season;

  TRes call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$MediaFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Explore$season<TRes>
    implements CopyWith$Query$Explore$season<TRes> {
  _CopyWithImpl$Query$Explore$season(
    this._instance,
    this._then,
  );

  final Query$Explore$season _instance;

  final TRes Function(Query$Explore$season) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Explore$season(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes media(
          Iterable<Fragment$MediaFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFragment<
                          Fragment$MediaFragment>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Explore$season<TRes>
    implements CopyWith$Query$Explore$season<TRes> {
  _CopyWithStubImpl$Query$Explore$season(this._res);

  TRes _res;

  call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  }) =>
      _res;

  media(_fn) => _res;
}

class Query$Explore$nextSeason {
  Query$Explore$nextSeason({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Explore$nextSeason.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Explore$nextSeason(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaFragment?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Explore$nextSeason ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Explore$nextSeason
    on Query$Explore$nextSeason {
  CopyWith$Query$Explore$nextSeason<Query$Explore$nextSeason> get copyWith =>
      CopyWith$Query$Explore$nextSeason(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Explore$nextSeason<TRes> {
  factory CopyWith$Query$Explore$nextSeason(
    Query$Explore$nextSeason instance,
    TRes Function(Query$Explore$nextSeason) then,
  ) = _CopyWithImpl$Query$Explore$nextSeason;

  factory CopyWith$Query$Explore$nextSeason.stub(TRes res) =
      _CopyWithStubImpl$Query$Explore$nextSeason;

  TRes call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$MediaFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Explore$nextSeason<TRes>
    implements CopyWith$Query$Explore$nextSeason<TRes> {
  _CopyWithImpl$Query$Explore$nextSeason(
    this._instance,
    this._then,
  );

  final Query$Explore$nextSeason _instance;

  final TRes Function(Query$Explore$nextSeason) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Explore$nextSeason(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes media(
          Iterable<Fragment$MediaFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFragment<
                          Fragment$MediaFragment>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Explore$nextSeason<TRes>
    implements CopyWith$Query$Explore$nextSeason<TRes> {
  _CopyWithStubImpl$Query$Explore$nextSeason(this._res);

  TRes _res;

  call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  }) =>
      _res;

  media(_fn) => _res;
}

class Query$Explore$popular {
  Query$Explore$popular({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Explore$popular.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Explore$popular(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaFragment?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Explore$popular || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Explore$popular on Query$Explore$popular {
  CopyWith$Query$Explore$popular<Query$Explore$popular> get copyWith =>
      CopyWith$Query$Explore$popular(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Explore$popular<TRes> {
  factory CopyWith$Query$Explore$popular(
    Query$Explore$popular instance,
    TRes Function(Query$Explore$popular) then,
  ) = _CopyWithImpl$Query$Explore$popular;

  factory CopyWith$Query$Explore$popular.stub(TRes res) =
      _CopyWithStubImpl$Query$Explore$popular;

  TRes call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$MediaFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Explore$popular<TRes>
    implements CopyWith$Query$Explore$popular<TRes> {
  _CopyWithImpl$Query$Explore$popular(
    this._instance,
    this._then,
  );

  final Query$Explore$popular _instance;

  final TRes Function(Query$Explore$popular) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Explore$popular(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes media(
          Iterable<Fragment$MediaFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFragment<
                          Fragment$MediaFragment>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Explore$popular<TRes>
    implements CopyWith$Query$Explore$popular<TRes> {
  _CopyWithStubImpl$Query$Explore$popular(this._res);

  TRes _res;

  call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  }) =>
      _res;

  media(_fn) => _res;
}

class Query$Explore$recent {
  Query$Explore$recent({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Explore$recent.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Explore$recent(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaFragment?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Explore$recent || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Explore$recent on Query$Explore$recent {
  CopyWith$Query$Explore$recent<Query$Explore$recent> get copyWith =>
      CopyWith$Query$Explore$recent(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Explore$recent<TRes> {
  factory CopyWith$Query$Explore$recent(
    Query$Explore$recent instance,
    TRes Function(Query$Explore$recent) then,
  ) = _CopyWithImpl$Query$Explore$recent;

  factory CopyWith$Query$Explore$recent.stub(TRes res) =
      _CopyWithStubImpl$Query$Explore$recent;

  TRes call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$MediaFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Explore$recent<TRes>
    implements CopyWith$Query$Explore$recent<TRes> {
  _CopyWithImpl$Query$Explore$recent(
    this._instance,
    this._then,
  );

  final Query$Explore$recent _instance;

  final TRes Function(Query$Explore$recent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Explore$recent(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes media(
          Iterable<Fragment$MediaFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFragment<
                          Fragment$MediaFragment>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Explore$recent<TRes>
    implements CopyWith$Query$Explore$recent<TRes> {
  _CopyWithStubImpl$Query$Explore$recent(this._res);

  TRes _res;

  call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  }) =>
      _res;

  media(_fn) => _res;
}
