import 'fragments/character.graphql.dart';
import 'fragments/media.graphql.dart';
import 'fragments/staff.graphql.dart';
import 'fragments/studio.graphql.dart';
import 'fragments/user.graphql.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Fragment$GenreStat {
  Fragment$GenreStat({
    this.genre,
    required this.count,
    this.$__typename = 'UserGenreStatistic',
  });

  factory Fragment$GenreStat.fromJson(Map<String, dynamic> json) {
    final l$genre = json['genre'];
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Fragment$GenreStat(
      genre: (l$genre as String?),
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String? genre;

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$genre = genre;
    _resultData['genre'] = l$genre;
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$genre = genre;
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$genre,
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$GenreStat || runtimeType != other.runtimeType) {
      return false;
    }
    final l$genre = genre;
    final lOther$genre = other.genre;
    if (l$genre != lOther$genre) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension$Fragment$GenreStat on Fragment$GenreStat {
  CopyWith$Fragment$GenreStat<Fragment$GenreStat> get copyWith =>
      CopyWith$Fragment$GenreStat(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$GenreStat<TRes> {
  factory CopyWith$Fragment$GenreStat(
    Fragment$GenreStat instance,
    TRes Function(Fragment$GenreStat) then,
  ) = _CopyWithImpl$Fragment$GenreStat;

  factory CopyWith$Fragment$GenreStat.stub(TRes res) =
      _CopyWithStubImpl$Fragment$GenreStat;

  TRes call({
    String? genre,
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$GenreStat<TRes>
    implements CopyWith$Fragment$GenreStat<TRes> {
  _CopyWithImpl$Fragment$GenreStat(
    this._instance,
    this._then,
  );

  final Fragment$GenreStat _instance;

  final TRes Function(Fragment$GenreStat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? genre = _undefined,
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$GenreStat(
        genre: genre == _undefined ? _instance.genre : (genre as String?),
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$GenreStat<TRes>
    implements CopyWith$Fragment$GenreStat<TRes> {
  _CopyWithStubImpl$Fragment$GenreStat(this._res);

  TRes _res;

  call({
    String? genre,
    int? count,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionGenreStat = FragmentDefinitionNode(
  name: NameNode(value: 'GenreStat'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'UserGenreStatistic'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'genre'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'count'),
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
);
const documentNodeFragmentGenreStat = DocumentNode(definitions: [
  fragmentDefinitionGenreStat,
]);

class Variables$Query$User {
  factory Variables$Query$User({String? name}) => Variables$Query$User._({
        if (name != null) r'name': name,
      });

  Variables$Query$User._(this._$data);

  factory Variables$Query$User.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Variables$Query$User._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith$Variables$Query$User<Variables$Query$User> get copyWith =>
      CopyWith$Variables$Query$User(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$User || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([_$data.containsKey('name') ? l$name : const {}]);
  }
}

abstract class CopyWith$Variables$Query$User<TRes> {
  factory CopyWith$Variables$Query$User(
    Variables$Query$User instance,
    TRes Function(Variables$Query$User) then,
  ) = _CopyWithImpl$Variables$Query$User;

  factory CopyWith$Variables$Query$User.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$User;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Query$User<TRes>
    implements CopyWith$Variables$Query$User<TRes> {
  _CopyWithImpl$Variables$Query$User(
    this._instance,
    this._then,
  );

  final Variables$Query$User _instance;

  final TRes Function(Variables$Query$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(Variables$Query$User._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$User<TRes>
    implements CopyWith$Variables$Query$User<TRes> {
  _CopyWithStubImpl$Variables$Query$User(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$User {
  Query$User({
    this.User,
    this.$__typename = 'Query',
  });

  factory Query$User.fromJson(Map<String, dynamic> json) {
    final l$User = json['User'];
    final l$$__typename = json['__typename'];
    return Query$User(
      User: l$User == null
          ? null
          : Query$User$User.fromJson((l$User as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$User$User? User;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$User = User;
    _resultData['User'] = l$User?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$User = User;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$User,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$User || runtimeType != other.runtimeType) {
      return false;
    }
    final l$User = User;
    final lOther$User = other.User;
    if (l$User != lOther$User) {
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

extension UtilityExtension$Query$User on Query$User {
  CopyWith$Query$User<Query$User> get copyWith => CopyWith$Query$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$User<TRes> {
  factory CopyWith$Query$User(
    Query$User instance,
    TRes Function(Query$User) then,
  ) = _CopyWithImpl$Query$User;

  factory CopyWith$Query$User.stub(TRes res) = _CopyWithStubImpl$Query$User;

  TRes call({
    Query$User$User? User,
    String? $__typename,
  });
  CopyWith$Query$User$User<TRes> get User;
}

class _CopyWithImpl$Query$User<TRes> implements CopyWith$Query$User<TRes> {
  _CopyWithImpl$Query$User(
    this._instance,
    this._then,
  );

  final Query$User _instance;

  final TRes Function(Query$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? User = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User(
        User: User == _undefined ? _instance.User : (User as Query$User$User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$User$User<TRes> get User {
    final local$User = _instance.User;
    return local$User == null
        ? CopyWith$Query$User$User.stub(_then(_instance))
        : CopyWith$Query$User$User(local$User, (e) => call(User: e));
  }
}

class _CopyWithStubImpl$Query$User<TRes> implements CopyWith$Query$User<TRes> {
  _CopyWithStubImpl$Query$User(this._res);

  TRes _res;

  call({
    Query$User$User? User,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$User$User<TRes> get User =>
      CopyWith$Query$User$User.stub(_res);
}

const documentNodeQueryUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'User'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'User'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFragment'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'bannerImage'),
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
                    name: NameNode(value: 'standardDeviation'),
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
                    name: NameNode(value: 'genres'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'limit'),
                        value: IntValueNode(value: '10'),
                      ),
                      ArgumentNode(
                        name: NameNode(value: 'sort'),
                        value:
                            EnumValueNode(name: NameNode(value: 'COUNT_DESC')),
                      ),
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'GenreStat'),
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
                    name: NameNode(value: 'standardDeviation'),
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
                    name: NameNode(value: 'genres'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'limit'),
                        value: IntValueNode(value: '10'),
                      ),
                      ArgumentNode(
                        name: NameNode(value: 'sort'),
                        value:
                            EnumValueNode(name: NameNode(value: 'COUNT_DESC')),
                      ),
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'GenreStat'),
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
          FieldNode(
            name: NameNode(value: 'favourites'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'anime'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'perPage'),
                    value: IntValueNode(value: '4'),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'nodes'),
                    alias: null,
                    arguments: [],
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
                name: NameNode(value: 'manga'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'perPage'),
                    value: IntValueNode(value: '4'),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'nodes'),
                    alias: null,
                    arguments: [],
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
                name: NameNode(value: 'characters'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'perPage'),
                    value: IntValueNode(value: '4'),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'nodes'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'CharacterFragment'),
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
                name: NameNode(value: 'staff'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'perPage'),
                    value: IntValueNode(value: '4'),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'nodes'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'StaffFragment'),
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
                name: NameNode(value: 'studios'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'perPage'),
                    value: IntValueNode(value: '4'),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'nodes'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'StudioFragment'),
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
  fragmentDefinitionUserFragment,
  fragmentDefinitionGenreStat,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionCharacterFragment,
  fragmentDefinitionStaffFragment,
  fragmentDefinitionStudioFragment,
]);

class Query$User$User implements Fragment$UserFragment {
  Query$User$User({
    required this.id,
    required this.name,
    this.donatorTier,
    this.donatorBadge,
    this.moderatorRoles,
    this.avatar,
    this.$__typename = 'User',
    this.bannerImage,
    this.about,
    this.mediaListOptions,
    this.statistics,
    this.favourites,
  });

  factory Query$User$User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$donatorTier = json['donatorTier'];
    final l$donatorBadge = json['donatorBadge'];
    final l$moderatorRoles = json['moderatorRoles'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    final l$bannerImage = json['bannerImage'];
    final l$about = json['about'];
    final l$mediaListOptions = json['mediaListOptions'];
    final l$statistics = json['statistics'];
    final l$favourites = json['favourites'];
    return Query$User$User(
      id: (l$id as int),
      name: (l$name as String),
      donatorTier: (l$donatorTier as int?),
      donatorBadge: (l$donatorBadge as String?),
      moderatorRoles: (l$moderatorRoles as List<dynamic>?)
          ?.map((e) => e == null ? null : fromJson$Enum$ModRole((e as String)))
          .toList(),
      avatar: l$avatar == null
          ? null
          : Query$User$User$avatar.fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      bannerImage: (l$bannerImage as String?),
      about: (l$about as String?),
      mediaListOptions: l$mediaListOptions == null
          ? null
          : Query$User$User$mediaListOptions.fromJson(
              (l$mediaListOptions as Map<String, dynamic>)),
      statistics: l$statistics == null
          ? null
          : Query$User$User$statistics.fromJson(
              (l$statistics as Map<String, dynamic>)),
      favourites: l$favourites == null
          ? null
          : Query$User$User$favourites.fromJson(
              (l$favourites as Map<String, dynamic>)),
    );
  }

  final int id;

  final String name;

  final int? donatorTier;

  final String? donatorBadge;

  final List<Enum$ModRole?>? moderatorRoles;

  final Query$User$User$avatar? avatar;

  final String $__typename;

  final String? bannerImage;

  final String? about;

  final Query$User$User$mediaListOptions? mediaListOptions;

  final Query$User$User$statistics? statistics;

  final Query$User$User$favourites? favourites;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$donatorTier = donatorTier;
    _resultData['donatorTier'] = l$donatorTier;
    final l$donatorBadge = donatorBadge;
    _resultData['donatorBadge'] = l$donatorBadge;
    final l$moderatorRoles = moderatorRoles;
    _resultData['moderatorRoles'] = l$moderatorRoles
        ?.map((e) => e == null ? null : toJson$Enum$ModRole(e))
        .toList();
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$about = about;
    _resultData['about'] = l$about;
    final l$mediaListOptions = mediaListOptions;
    _resultData['mediaListOptions'] = l$mediaListOptions?.toJson();
    final l$statistics = statistics;
    _resultData['statistics'] = l$statistics?.toJson();
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$donatorTier = donatorTier;
    final l$donatorBadge = donatorBadge;
    final l$moderatorRoles = moderatorRoles;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    final l$bannerImage = bannerImage;
    final l$about = about;
    final l$mediaListOptions = mediaListOptions;
    final l$statistics = statistics;
    final l$favourites = favourites;
    return Object.hashAll([
      l$id,
      l$name,
      l$donatorTier,
      l$donatorBadge,
      l$moderatorRoles == null
          ? null
          : Object.hashAll(l$moderatorRoles.map((v) => v)),
      l$avatar,
      l$$__typename,
      l$bannerImage,
      l$about,
      l$mediaListOptions,
      l$statistics,
      l$favourites,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$User$User || runtimeType != other.runtimeType) {
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
    final l$donatorTier = donatorTier;
    final lOther$donatorTier = other.donatorTier;
    if (l$donatorTier != lOther$donatorTier) {
      return false;
    }
    final l$donatorBadge = donatorBadge;
    final lOther$donatorBadge = other.donatorBadge;
    if (l$donatorBadge != lOther$donatorBadge) {
      return false;
    }
    final l$moderatorRoles = moderatorRoles;
    final lOther$moderatorRoles = other.moderatorRoles;
    if (l$moderatorRoles != null && lOther$moderatorRoles != null) {
      if (l$moderatorRoles.length != lOther$moderatorRoles.length) {
        return false;
      }
      for (int i = 0; i < l$moderatorRoles.length; i++) {
        final l$moderatorRoles$entry = l$moderatorRoles[i];
        final lOther$moderatorRoles$entry = lOther$moderatorRoles[i];
        if (l$moderatorRoles$entry != lOther$moderatorRoles$entry) {
          return false;
        }
      }
    } else if (l$moderatorRoles != lOther$moderatorRoles) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
      return false;
    }
    final l$about = about;
    final lOther$about = other.about;
    if (l$about != lOther$about) {
      return false;
    }
    final l$mediaListOptions = mediaListOptions;
    final lOther$mediaListOptions = other.mediaListOptions;
    if (l$mediaListOptions != lOther$mediaListOptions) {
      return false;
    }
    final l$statistics = statistics;
    final lOther$statistics = other.statistics;
    if (l$statistics != lOther$statistics) {
      return false;
    }
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$User$User on Query$User$User {
  CopyWith$Query$User$User<Query$User$User> get copyWith =>
      CopyWith$Query$User$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$User$User<TRes> {
  factory CopyWith$Query$User$User(
    Query$User$User instance,
    TRes Function(Query$User$User) then,
  ) = _CopyWithImpl$Query$User$User;

  factory CopyWith$Query$User$User.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User;

  TRes call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Query$User$User$avatar? avatar,
    String? $__typename,
    String? bannerImage,
    String? about,
    Query$User$User$mediaListOptions? mediaListOptions,
    Query$User$User$statistics? statistics,
    Query$User$User$favourites? favourites,
  });
  CopyWith$Query$User$User$avatar<TRes> get avatar;
  CopyWith$Query$User$User$mediaListOptions<TRes> get mediaListOptions;
  CopyWith$Query$User$User$statistics<TRes> get statistics;
  CopyWith$Query$User$User$favourites<TRes> get favourites;
}

class _CopyWithImpl$Query$User$User<TRes>
    implements CopyWith$Query$User$User<TRes> {
  _CopyWithImpl$Query$User$User(
    this._instance,
    this._then,
  );

  final Query$User$User _instance;

  final TRes Function(Query$User$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? donatorTier = _undefined,
    Object? donatorBadge = _undefined,
    Object? moderatorRoles = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
    Object? bannerImage = _undefined,
    Object? about = _undefined,
    Object? mediaListOptions = _undefined,
    Object? statistics = _undefined,
    Object? favourites = _undefined,
  }) =>
      _then(Query$User$User(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        donatorTier: donatorTier == _undefined
            ? _instance.donatorTier
            : (donatorTier as int?),
        donatorBadge: donatorBadge == _undefined
            ? _instance.donatorBadge
            : (donatorBadge as String?),
        moderatorRoles: moderatorRoles == _undefined
            ? _instance.moderatorRoles
            : (moderatorRoles as List<Enum$ModRole?>?),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Query$User$User$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        about: about == _undefined ? _instance.about : (about as String?),
        mediaListOptions: mediaListOptions == _undefined
            ? _instance.mediaListOptions
            : (mediaListOptions as Query$User$User$mediaListOptions?),
        statistics: statistics == _undefined
            ? _instance.statistics
            : (statistics as Query$User$User$statistics?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as Query$User$User$favourites?),
      ));

  CopyWith$Query$User$User$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$User$User$avatar.stub(_then(_instance))
        : CopyWith$Query$User$User$avatar(local$avatar, (e) => call(avatar: e));
  }

  CopyWith$Query$User$User$mediaListOptions<TRes> get mediaListOptions {
    final local$mediaListOptions = _instance.mediaListOptions;
    return local$mediaListOptions == null
        ? CopyWith$Query$User$User$mediaListOptions.stub(_then(_instance))
        : CopyWith$Query$User$User$mediaListOptions(
            local$mediaListOptions, (e) => call(mediaListOptions: e));
  }

  CopyWith$Query$User$User$statistics<TRes> get statistics {
    final local$statistics = _instance.statistics;
    return local$statistics == null
        ? CopyWith$Query$User$User$statistics.stub(_then(_instance))
        : CopyWith$Query$User$User$statistics(
            local$statistics, (e) => call(statistics: e));
  }

  CopyWith$Query$User$User$favourites<TRes> get favourites {
    final local$favourites = _instance.favourites;
    return local$favourites == null
        ? CopyWith$Query$User$User$favourites.stub(_then(_instance))
        : CopyWith$Query$User$User$favourites(
            local$favourites, (e) => call(favourites: e));
  }
}

class _CopyWithStubImpl$Query$User$User<TRes>
    implements CopyWith$Query$User$User<TRes> {
  _CopyWithStubImpl$Query$User$User(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Query$User$User$avatar? avatar,
    String? $__typename,
    String? bannerImage,
    String? about,
    Query$User$User$mediaListOptions? mediaListOptions,
    Query$User$User$statistics? statistics,
    Query$User$User$favourites? favourites,
  }) =>
      _res;

  CopyWith$Query$User$User$avatar<TRes> get avatar =>
      CopyWith$Query$User$User$avatar.stub(_res);

  CopyWith$Query$User$User$mediaListOptions<TRes> get mediaListOptions =>
      CopyWith$Query$User$User$mediaListOptions.stub(_res);

  CopyWith$Query$User$User$statistics<TRes> get statistics =>
      CopyWith$Query$User$User$statistics.stub(_res);

  CopyWith$Query$User$User$favourites<TRes> get favourites =>
      CopyWith$Query$User$User$favourites.stub(_res);
}

class Query$User$User$avatar implements Fragment$UserFragment$avatar {
  Query$User$User$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Query$User$User$avatar.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$User$User$avatar(
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
    if (other is! Query$User$User$avatar || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$User$User$avatar on Query$User$User$avatar {
  CopyWith$Query$User$User$avatar<Query$User$User$avatar> get copyWith =>
      CopyWith$Query$User$User$avatar(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$User$User$avatar<TRes> {
  factory CopyWith$Query$User$User$avatar(
    Query$User$User$avatar instance,
    TRes Function(Query$User$User$avatar) then,
  ) = _CopyWithImpl$Query$User$User$avatar;

  factory CopyWith$Query$User$User$avatar.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$User$User$avatar<TRes>
    implements CopyWith$Query$User$User$avatar<TRes> {
  _CopyWithImpl$Query$User$User$avatar(
    this._instance,
    this._then,
  );

  final Query$User$User$avatar _instance;

  final TRes Function(Query$User$User$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$User$User$avatar<TRes>
    implements CopyWith$Query$User$User$avatar<TRes> {
  _CopyWithStubImpl$Query$User$User$avatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$User$User$mediaListOptions {
  Query$User$User$mediaListOptions({
    this.scoreFormat,
    this.$__typename = 'MediaListOptions',
  });

  factory Query$User$User$mediaListOptions.fromJson(Map<String, dynamic> json) {
    final l$scoreFormat = json['scoreFormat'];
    final l$$__typename = json['__typename'];
    return Query$User$User$mediaListOptions(
      scoreFormat: l$scoreFormat == null
          ? null
          : fromJson$Enum$ScoreFormat((l$scoreFormat as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$ScoreFormat? scoreFormat;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$scoreFormat = scoreFormat;
    _resultData['scoreFormat'] =
        l$scoreFormat == null ? null : toJson$Enum$ScoreFormat(l$scoreFormat);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$scoreFormat = scoreFormat;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$scoreFormat,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$User$User$mediaListOptions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$scoreFormat = scoreFormat;
    final lOther$scoreFormat = other.scoreFormat;
    if (l$scoreFormat != lOther$scoreFormat) {
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

extension UtilityExtension$Query$User$User$mediaListOptions
    on Query$User$User$mediaListOptions {
  CopyWith$Query$User$User$mediaListOptions<Query$User$User$mediaListOptions>
      get copyWith => CopyWith$Query$User$User$mediaListOptions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$User$mediaListOptions<TRes> {
  factory CopyWith$Query$User$User$mediaListOptions(
    Query$User$User$mediaListOptions instance,
    TRes Function(Query$User$User$mediaListOptions) then,
  ) = _CopyWithImpl$Query$User$User$mediaListOptions;

  factory CopyWith$Query$User$User$mediaListOptions.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$mediaListOptions;

  TRes call({
    Enum$ScoreFormat? scoreFormat,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$User$User$mediaListOptions<TRes>
    implements CopyWith$Query$User$User$mediaListOptions<TRes> {
  _CopyWithImpl$Query$User$User$mediaListOptions(
    this._instance,
    this._then,
  );

  final Query$User$User$mediaListOptions _instance;

  final TRes Function(Query$User$User$mediaListOptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scoreFormat = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$mediaListOptions(
        scoreFormat: scoreFormat == _undefined
            ? _instance.scoreFormat
            : (scoreFormat as Enum$ScoreFormat?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$User$User$mediaListOptions<TRes>
    implements CopyWith$Query$User$User$mediaListOptions<TRes> {
  _CopyWithStubImpl$Query$User$User$mediaListOptions(this._res);

  TRes _res;

  call({
    Enum$ScoreFormat? scoreFormat,
    String? $__typename,
  }) =>
      _res;
}

class Query$User$User$statistics {
  Query$User$User$statistics({
    this.anime,
    this.manga,
    this.$__typename = 'UserStatisticTypes',
  });

  factory Query$User$User$statistics.fromJson(Map<String, dynamic> json) {
    final l$anime = json['anime'];
    final l$manga = json['manga'];
    final l$$__typename = json['__typename'];
    return Query$User$User$statistics(
      anime: l$anime == null
          ? null
          : Query$User$User$statistics$anime.fromJson(
              (l$anime as Map<String, dynamic>)),
      manga: l$manga == null
          ? null
          : Query$User$User$statistics$manga.fromJson(
              (l$manga as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$User$User$statistics$anime? anime;

  final Query$User$User$statistics$manga? manga;

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
    if (other is! Query$User$User$statistics ||
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

extension UtilityExtension$Query$User$User$statistics
    on Query$User$User$statistics {
  CopyWith$Query$User$User$statistics<Query$User$User$statistics>
      get copyWith => CopyWith$Query$User$User$statistics(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$User$statistics<TRes> {
  factory CopyWith$Query$User$User$statistics(
    Query$User$User$statistics instance,
    TRes Function(Query$User$User$statistics) then,
  ) = _CopyWithImpl$Query$User$User$statistics;

  factory CopyWith$Query$User$User$statistics.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$statistics;

  TRes call({
    Query$User$User$statistics$anime? anime,
    Query$User$User$statistics$manga? manga,
    String? $__typename,
  });
  CopyWith$Query$User$User$statistics$anime<TRes> get anime;
  CopyWith$Query$User$User$statistics$manga<TRes> get manga;
}

class _CopyWithImpl$Query$User$User$statistics<TRes>
    implements CopyWith$Query$User$User$statistics<TRes> {
  _CopyWithImpl$Query$User$User$statistics(
    this._instance,
    this._then,
  );

  final Query$User$User$statistics _instance;

  final TRes Function(Query$User$User$statistics) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? anime = _undefined,
    Object? manga = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$statistics(
        anime: anime == _undefined
            ? _instance.anime
            : (anime as Query$User$User$statistics$anime?),
        manga: manga == _undefined
            ? _instance.manga
            : (manga as Query$User$User$statistics$manga?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$User$User$statistics$anime<TRes> get anime {
    final local$anime = _instance.anime;
    return local$anime == null
        ? CopyWith$Query$User$User$statistics$anime.stub(_then(_instance))
        : CopyWith$Query$User$User$statistics$anime(
            local$anime, (e) => call(anime: e));
  }

  CopyWith$Query$User$User$statistics$manga<TRes> get manga {
    final local$manga = _instance.manga;
    return local$manga == null
        ? CopyWith$Query$User$User$statistics$manga.stub(_then(_instance))
        : CopyWith$Query$User$User$statistics$manga(
            local$manga, (e) => call(manga: e));
  }
}

class _CopyWithStubImpl$Query$User$User$statistics<TRes>
    implements CopyWith$Query$User$User$statistics<TRes> {
  _CopyWithStubImpl$Query$User$User$statistics(this._res);

  TRes _res;

  call({
    Query$User$User$statistics$anime? anime,
    Query$User$User$statistics$manga? manga,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$User$User$statistics$anime<TRes> get anime =>
      CopyWith$Query$User$User$statistics$anime.stub(_res);

  CopyWith$Query$User$User$statistics$manga<TRes> get manga =>
      CopyWith$Query$User$User$statistics$manga.stub(_res);
}

class Query$User$User$statistics$anime {
  Query$User$User$statistics$anime({
    required this.count,
    required this.episodesWatched,
    required this.minutesWatched,
    required this.standardDeviation,
    required this.meanScore,
    this.genres,
    this.$__typename = 'UserStatistics',
  });

  factory Query$User$User$statistics$anime.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$episodesWatched = json['episodesWatched'];
    final l$minutesWatched = json['minutesWatched'];
    final l$standardDeviation = json['standardDeviation'];
    final l$meanScore = json['meanScore'];
    final l$genres = json['genres'];
    final l$$__typename = json['__typename'];
    return Query$User$User$statistics$anime(
      count: (l$count as int),
      episodesWatched: (l$episodesWatched as int),
      minutesWatched: (l$minutesWatched as int),
      standardDeviation: (l$standardDeviation as num).toDouble(),
      meanScore: (l$meanScore as num).toDouble(),
      genres: (l$genres as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$GenreStat.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final int episodesWatched;

  final int minutesWatched;

  final double standardDeviation;

  final double meanScore;

  final List<Fragment$GenreStat?>? genres;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$episodesWatched = episodesWatched;
    _resultData['episodesWatched'] = l$episodesWatched;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$standardDeviation = standardDeviation;
    _resultData['standardDeviation'] = l$standardDeviation;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$episodesWatched = episodesWatched;
    final l$minutesWatched = minutesWatched;
    final l$standardDeviation = standardDeviation;
    final l$meanScore = meanScore;
    final l$genres = genres;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$episodesWatched,
      l$minutesWatched,
      l$standardDeviation,
      l$meanScore,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$User$User$statistics$anime ||
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
    final l$standardDeviation = standardDeviation;
    final lOther$standardDeviation = other.standardDeviation;
    if (l$standardDeviation != lOther$standardDeviation) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$User$User$statistics$anime
    on Query$User$User$statistics$anime {
  CopyWith$Query$User$User$statistics$anime<Query$User$User$statistics$anime>
      get copyWith => CopyWith$Query$User$User$statistics$anime(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$User$statistics$anime<TRes> {
  factory CopyWith$Query$User$User$statistics$anime(
    Query$User$User$statistics$anime instance,
    TRes Function(Query$User$User$statistics$anime) then,
  ) = _CopyWithImpl$Query$User$User$statistics$anime;

  factory CopyWith$Query$User$User$statistics$anime.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$statistics$anime;

  TRes call({
    int? count,
    int? episodesWatched,
    int? minutesWatched,
    double? standardDeviation,
    double? meanScore,
    List<Fragment$GenreStat?>? genres,
    String? $__typename,
  });
  TRes genres(
      Iterable<Fragment$GenreStat?>? Function(
              Iterable<CopyWith$Fragment$GenreStat<Fragment$GenreStat>?>?)
          _fn);
}

class _CopyWithImpl$Query$User$User$statistics$anime<TRes>
    implements CopyWith$Query$User$User$statistics$anime<TRes> {
  _CopyWithImpl$Query$User$User$statistics$anime(
    this._instance,
    this._then,
  );

  final Query$User$User$statistics$anime _instance;

  final TRes Function(Query$User$User$statistics$anime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? episodesWatched = _undefined,
    Object? minutesWatched = _undefined,
    Object? standardDeviation = _undefined,
    Object? meanScore = _undefined,
    Object? genres = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$statistics$anime(
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
        standardDeviation:
            standardDeviation == _undefined || standardDeviation == null
                ? _instance.standardDeviation
                : (standardDeviation as double),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<Fragment$GenreStat?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes genres(
          Iterable<Fragment$GenreStat?>? Function(
                  Iterable<CopyWith$Fragment$GenreStat<Fragment$GenreStat>?>?)
              _fn) =>
      call(
          genres: _fn(_instance.genres?.map((e) => e == null
              ? null
              : CopyWith$Fragment$GenreStat(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$User$User$statistics$anime<TRes>
    implements CopyWith$Query$User$User$statistics$anime<TRes> {
  _CopyWithStubImpl$Query$User$User$statistics$anime(this._res);

  TRes _res;

  call({
    int? count,
    int? episodesWatched,
    int? minutesWatched,
    double? standardDeviation,
    double? meanScore,
    List<Fragment$GenreStat?>? genres,
    String? $__typename,
  }) =>
      _res;

  genres(_fn) => _res;
}

class Query$User$User$statistics$manga {
  Query$User$User$statistics$manga({
    required this.count,
    required this.chaptersRead,
    required this.volumesRead,
    required this.standardDeviation,
    required this.meanScore,
    this.genres,
    this.$__typename = 'UserStatistics',
  });

  factory Query$User$User$statistics$manga.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$chaptersRead = json['chaptersRead'];
    final l$volumesRead = json['volumesRead'];
    final l$standardDeviation = json['standardDeviation'];
    final l$meanScore = json['meanScore'];
    final l$genres = json['genres'];
    final l$$__typename = json['__typename'];
    return Query$User$User$statistics$manga(
      count: (l$count as int),
      chaptersRead: (l$chaptersRead as int),
      volumesRead: (l$volumesRead as int),
      standardDeviation: (l$standardDeviation as num).toDouble(),
      meanScore: (l$meanScore as num).toDouble(),
      genres: (l$genres as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$GenreStat.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final int chaptersRead;

  final int volumesRead;

  final double standardDeviation;

  final double meanScore;

  final List<Fragment$GenreStat?>? genres;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$volumesRead = volumesRead;
    _resultData['volumesRead'] = l$volumesRead;
    final l$standardDeviation = standardDeviation;
    _resultData['standardDeviation'] = l$standardDeviation;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$chaptersRead = chaptersRead;
    final l$volumesRead = volumesRead;
    final l$standardDeviation = standardDeviation;
    final l$meanScore = meanScore;
    final l$genres = genres;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$chaptersRead,
      l$volumesRead,
      l$standardDeviation,
      l$meanScore,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$User$User$statistics$manga ||
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
    final l$standardDeviation = standardDeviation;
    final lOther$standardDeviation = other.standardDeviation;
    if (l$standardDeviation != lOther$standardDeviation) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$User$User$statistics$manga
    on Query$User$User$statistics$manga {
  CopyWith$Query$User$User$statistics$manga<Query$User$User$statistics$manga>
      get copyWith => CopyWith$Query$User$User$statistics$manga(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$User$statistics$manga<TRes> {
  factory CopyWith$Query$User$User$statistics$manga(
    Query$User$User$statistics$manga instance,
    TRes Function(Query$User$User$statistics$manga) then,
  ) = _CopyWithImpl$Query$User$User$statistics$manga;

  factory CopyWith$Query$User$User$statistics$manga.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$statistics$manga;

  TRes call({
    int? count,
    int? chaptersRead,
    int? volumesRead,
    double? standardDeviation,
    double? meanScore,
    List<Fragment$GenreStat?>? genres,
    String? $__typename,
  });
  TRes genres(
      Iterable<Fragment$GenreStat?>? Function(
              Iterable<CopyWith$Fragment$GenreStat<Fragment$GenreStat>?>?)
          _fn);
}

class _CopyWithImpl$Query$User$User$statistics$manga<TRes>
    implements CopyWith$Query$User$User$statistics$manga<TRes> {
  _CopyWithImpl$Query$User$User$statistics$manga(
    this._instance,
    this._then,
  );

  final Query$User$User$statistics$manga _instance;

  final TRes Function(Query$User$User$statistics$manga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? chaptersRead = _undefined,
    Object? volumesRead = _undefined,
    Object? standardDeviation = _undefined,
    Object? meanScore = _undefined,
    Object? genres = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$statistics$manga(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        volumesRead: volumesRead == _undefined || volumesRead == null
            ? _instance.volumesRead
            : (volumesRead as int),
        standardDeviation:
            standardDeviation == _undefined || standardDeviation == null
                ? _instance.standardDeviation
                : (standardDeviation as double),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<Fragment$GenreStat?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes genres(
          Iterable<Fragment$GenreStat?>? Function(
                  Iterable<CopyWith$Fragment$GenreStat<Fragment$GenreStat>?>?)
              _fn) =>
      call(
          genres: _fn(_instance.genres?.map((e) => e == null
              ? null
              : CopyWith$Fragment$GenreStat(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$User$User$statistics$manga<TRes>
    implements CopyWith$Query$User$User$statistics$manga<TRes> {
  _CopyWithStubImpl$Query$User$User$statistics$manga(this._res);

  TRes _res;

  call({
    int? count,
    int? chaptersRead,
    int? volumesRead,
    double? standardDeviation,
    double? meanScore,
    List<Fragment$GenreStat?>? genres,
    String? $__typename,
  }) =>
      _res;

  genres(_fn) => _res;
}

class Query$User$User$favourites {
  Query$User$User$favourites({
    this.anime,
    this.manga,
    this.characters,
    this.staff,
    this.studios,
    this.$__typename = 'Favourites',
  });

  factory Query$User$User$favourites.fromJson(Map<String, dynamic> json) {
    final l$anime = json['anime'];
    final l$manga = json['manga'];
    final l$characters = json['characters'];
    final l$staff = json['staff'];
    final l$studios = json['studios'];
    final l$$__typename = json['__typename'];
    return Query$User$User$favourites(
      anime: l$anime == null
          ? null
          : Query$User$User$favourites$anime.fromJson(
              (l$anime as Map<String, dynamic>)),
      manga: l$manga == null
          ? null
          : Query$User$User$favourites$manga.fromJson(
              (l$manga as Map<String, dynamic>)),
      characters: l$characters == null
          ? null
          : Query$User$User$favourites$characters.fromJson(
              (l$characters as Map<String, dynamic>)),
      staff: l$staff == null
          ? null
          : Query$User$User$favourites$staff.fromJson(
              (l$staff as Map<String, dynamic>)),
      studios: l$studios == null
          ? null
          : Query$User$User$favourites$studios.fromJson(
              (l$studios as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$User$User$favourites$anime? anime;

  final Query$User$User$favourites$manga? manga;

  final Query$User$User$favourites$characters? characters;

  final Query$User$User$favourites$staff? staff;

  final Query$User$User$favourites$studios? studios;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$anime = anime;
    _resultData['anime'] = l$anime?.toJson();
    final l$manga = manga;
    _resultData['manga'] = l$manga?.toJson();
    final l$characters = characters;
    _resultData['characters'] = l$characters?.toJson();
    final l$staff = staff;
    _resultData['staff'] = l$staff?.toJson();
    final l$studios = studios;
    _resultData['studios'] = l$studios?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$anime = anime;
    final l$manga = manga;
    final l$characters = characters;
    final l$staff = staff;
    final l$studios = studios;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$anime,
      l$manga,
      l$characters,
      l$staff,
      l$studios,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$User$User$favourites ||
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
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
      return false;
    }
    final l$staff = staff;
    final lOther$staff = other.staff;
    if (l$staff != lOther$staff) {
      return false;
    }
    final l$studios = studios;
    final lOther$studios = other.studios;
    if (l$studios != lOther$studios) {
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

extension UtilityExtension$Query$User$User$favourites
    on Query$User$User$favourites {
  CopyWith$Query$User$User$favourites<Query$User$User$favourites>
      get copyWith => CopyWith$Query$User$User$favourites(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$User$favourites<TRes> {
  factory CopyWith$Query$User$User$favourites(
    Query$User$User$favourites instance,
    TRes Function(Query$User$User$favourites) then,
  ) = _CopyWithImpl$Query$User$User$favourites;

  factory CopyWith$Query$User$User$favourites.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$favourites;

  TRes call({
    Query$User$User$favourites$anime? anime,
    Query$User$User$favourites$manga? manga,
    Query$User$User$favourites$characters? characters,
    Query$User$User$favourites$staff? staff,
    Query$User$User$favourites$studios? studios,
    String? $__typename,
  });
  CopyWith$Query$User$User$favourites$anime<TRes> get anime;
  CopyWith$Query$User$User$favourites$manga<TRes> get manga;
  CopyWith$Query$User$User$favourites$characters<TRes> get characters;
  CopyWith$Query$User$User$favourites$staff<TRes> get staff;
  CopyWith$Query$User$User$favourites$studios<TRes> get studios;
}

class _CopyWithImpl$Query$User$User$favourites<TRes>
    implements CopyWith$Query$User$User$favourites<TRes> {
  _CopyWithImpl$Query$User$User$favourites(
    this._instance,
    this._then,
  );

  final Query$User$User$favourites _instance;

  final TRes Function(Query$User$User$favourites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? anime = _undefined,
    Object? manga = _undefined,
    Object? characters = _undefined,
    Object? staff = _undefined,
    Object? studios = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$favourites(
        anime: anime == _undefined
            ? _instance.anime
            : (anime as Query$User$User$favourites$anime?),
        manga: manga == _undefined
            ? _instance.manga
            : (manga as Query$User$User$favourites$manga?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters as Query$User$User$favourites$characters?),
        staff: staff == _undefined
            ? _instance.staff
            : (staff as Query$User$User$favourites$staff?),
        studios: studios == _undefined
            ? _instance.studios
            : (studios as Query$User$User$favourites$studios?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$User$User$favourites$anime<TRes> get anime {
    final local$anime = _instance.anime;
    return local$anime == null
        ? CopyWith$Query$User$User$favourites$anime.stub(_then(_instance))
        : CopyWith$Query$User$User$favourites$anime(
            local$anime, (e) => call(anime: e));
  }

  CopyWith$Query$User$User$favourites$manga<TRes> get manga {
    final local$manga = _instance.manga;
    return local$manga == null
        ? CopyWith$Query$User$User$favourites$manga.stub(_then(_instance))
        : CopyWith$Query$User$User$favourites$manga(
            local$manga, (e) => call(manga: e));
  }

  CopyWith$Query$User$User$favourites$characters<TRes> get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWith$Query$User$User$favourites$characters.stub(_then(_instance))
        : CopyWith$Query$User$User$favourites$characters(
            local$characters, (e) => call(characters: e));
  }

  CopyWith$Query$User$User$favourites$staff<TRes> get staff {
    final local$staff = _instance.staff;
    return local$staff == null
        ? CopyWith$Query$User$User$favourites$staff.stub(_then(_instance))
        : CopyWith$Query$User$User$favourites$staff(
            local$staff, (e) => call(staff: e));
  }

  CopyWith$Query$User$User$favourites$studios<TRes> get studios {
    final local$studios = _instance.studios;
    return local$studios == null
        ? CopyWith$Query$User$User$favourites$studios.stub(_then(_instance))
        : CopyWith$Query$User$User$favourites$studios(
            local$studios, (e) => call(studios: e));
  }
}

class _CopyWithStubImpl$Query$User$User$favourites<TRes>
    implements CopyWith$Query$User$User$favourites<TRes> {
  _CopyWithStubImpl$Query$User$User$favourites(this._res);

  TRes _res;

  call({
    Query$User$User$favourites$anime? anime,
    Query$User$User$favourites$manga? manga,
    Query$User$User$favourites$characters? characters,
    Query$User$User$favourites$staff? staff,
    Query$User$User$favourites$studios? studios,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$User$User$favourites$anime<TRes> get anime =>
      CopyWith$Query$User$User$favourites$anime.stub(_res);

  CopyWith$Query$User$User$favourites$manga<TRes> get manga =>
      CopyWith$Query$User$User$favourites$manga.stub(_res);

  CopyWith$Query$User$User$favourites$characters<TRes> get characters =>
      CopyWith$Query$User$User$favourites$characters.stub(_res);

  CopyWith$Query$User$User$favourites$staff<TRes> get staff =>
      CopyWith$Query$User$User$favourites$staff.stub(_res);

  CopyWith$Query$User$User$favourites$studios<TRes> get studios =>
      CopyWith$Query$User$User$favourites$studios.stub(_res);
}

class Query$User$User$favourites$anime {
  Query$User$User$favourites$anime({
    this.nodes,
    this.$__typename = 'MediaConnection',
  });

  factory Query$User$User$favourites$anime.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$User$User$favourites$anime(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaFragment?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$User$User$favourites$anime ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$User$User$favourites$anime
    on Query$User$User$favourites$anime {
  CopyWith$Query$User$User$favourites$anime<Query$User$User$favourites$anime>
      get copyWith => CopyWith$Query$User$User$favourites$anime(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$User$favourites$anime<TRes> {
  factory CopyWith$Query$User$User$favourites$anime(
    Query$User$User$favourites$anime instance,
    TRes Function(Query$User$User$favourites$anime) then,
  ) = _CopyWithImpl$Query$User$User$favourites$anime;

  factory CopyWith$Query$User$User$favourites$anime.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$favourites$anime;

  TRes call({
    List<Fragment$MediaFragment?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$MediaFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$User$User$favourites$anime<TRes>
    implements CopyWith$Query$User$User$favourites$anime<TRes> {
  _CopyWithImpl$Query$User$User$favourites$anime(
    this._instance,
    this._then,
  );

  final Query$User$User$favourites$anime _instance;

  final TRes Function(Query$User$User$favourites$anime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$favourites$anime(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$MediaFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Fragment$MediaFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFragment<
                          Fragment$MediaFragment>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$User$User$favourites$anime<TRes>
    implements CopyWith$Query$User$User$favourites$anime<TRes> {
  _CopyWithStubImpl$Query$User$User$favourites$anime(this._res);

  TRes _res;

  call({
    List<Fragment$MediaFragment?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$User$User$favourites$manga {
  Query$User$User$favourites$manga({
    this.nodes,
    this.$__typename = 'MediaConnection',
  });

  factory Query$User$User$favourites$manga.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$User$User$favourites$manga(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaFragment?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$User$User$favourites$manga ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$User$User$favourites$manga
    on Query$User$User$favourites$manga {
  CopyWith$Query$User$User$favourites$manga<Query$User$User$favourites$manga>
      get copyWith => CopyWith$Query$User$User$favourites$manga(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$User$favourites$manga<TRes> {
  factory CopyWith$Query$User$User$favourites$manga(
    Query$User$User$favourites$manga instance,
    TRes Function(Query$User$User$favourites$manga) then,
  ) = _CopyWithImpl$Query$User$User$favourites$manga;

  factory CopyWith$Query$User$User$favourites$manga.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$favourites$manga;

  TRes call({
    List<Fragment$MediaFragment?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$MediaFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$User$User$favourites$manga<TRes>
    implements CopyWith$Query$User$User$favourites$manga<TRes> {
  _CopyWithImpl$Query$User$User$favourites$manga(
    this._instance,
    this._then,
  );

  final Query$User$User$favourites$manga _instance;

  final TRes Function(Query$User$User$favourites$manga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$favourites$manga(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$MediaFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Fragment$MediaFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFragment<
                          Fragment$MediaFragment>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$User$User$favourites$manga<TRes>
    implements CopyWith$Query$User$User$favourites$manga<TRes> {
  _CopyWithStubImpl$Query$User$User$favourites$manga(this._res);

  TRes _res;

  call({
    List<Fragment$MediaFragment?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$User$User$favourites$characters {
  Query$User$User$favourites$characters({
    this.nodes,
    this.$__typename = 'CharacterConnection',
  });

  factory Query$User$User$favourites$characters.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$User$User$favourites$characters(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$CharacterFragment.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$CharacterFragment?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$User$User$favourites$characters ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$User$User$favourites$characters
    on Query$User$User$favourites$characters {
  CopyWith$Query$User$User$favourites$characters<
          Query$User$User$favourites$characters>
      get copyWith => CopyWith$Query$User$User$favourites$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$User$favourites$characters<TRes> {
  factory CopyWith$Query$User$User$favourites$characters(
    Query$User$User$favourites$characters instance,
    TRes Function(Query$User$User$favourites$characters) then,
  ) = _CopyWithImpl$Query$User$User$favourites$characters;

  factory CopyWith$Query$User$User$favourites$characters.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$favourites$characters;

  TRes call({
    List<Fragment$CharacterFragment?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$CharacterFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$CharacterFragment<
                      Fragment$CharacterFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$User$User$favourites$characters<TRes>
    implements CopyWith$Query$User$User$favourites$characters<TRes> {
  _CopyWithImpl$Query$User$User$favourites$characters(
    this._instance,
    this._then,
  );

  final Query$User$User$favourites$characters _instance;

  final TRes Function(Query$User$User$favourites$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$favourites$characters(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$CharacterFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Fragment$CharacterFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$CharacterFragment<
                          Fragment$CharacterFragment>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$CharacterFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$User$User$favourites$characters<TRes>
    implements CopyWith$Query$User$User$favourites$characters<TRes> {
  _CopyWithStubImpl$Query$User$User$favourites$characters(this._res);

  TRes _res;

  call({
    List<Fragment$CharacterFragment?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$User$User$favourites$staff {
  Query$User$User$favourites$staff({
    this.nodes,
    this.$__typename = 'StaffConnection',
  });

  factory Query$User$User$favourites$staff.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$User$User$favourites$staff(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$StaffFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$StaffFragment?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$User$User$favourites$staff ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$User$User$favourites$staff
    on Query$User$User$favourites$staff {
  CopyWith$Query$User$User$favourites$staff<Query$User$User$favourites$staff>
      get copyWith => CopyWith$Query$User$User$favourites$staff(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$User$favourites$staff<TRes> {
  factory CopyWith$Query$User$User$favourites$staff(
    Query$User$User$favourites$staff instance,
    TRes Function(Query$User$User$favourites$staff) then,
  ) = _CopyWithImpl$Query$User$User$favourites$staff;

  factory CopyWith$Query$User$User$favourites$staff.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$favourites$staff;

  TRes call({
    List<Fragment$StaffFragment?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$StaffFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$StaffFragment<Fragment$StaffFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$User$User$favourites$staff<TRes>
    implements CopyWith$Query$User$User$favourites$staff<TRes> {
  _CopyWithImpl$Query$User$User$favourites$staff(
    this._instance,
    this._then,
  );

  final Query$User$User$favourites$staff _instance;

  final TRes Function(Query$User$User$favourites$staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$favourites$staff(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$StaffFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Fragment$StaffFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$StaffFragment<
                          Fragment$StaffFragment>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$StaffFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$User$User$favourites$staff<TRes>
    implements CopyWith$Query$User$User$favourites$staff<TRes> {
  _CopyWithStubImpl$Query$User$User$favourites$staff(this._res);

  TRes _res;

  call({
    List<Fragment$StaffFragment?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$User$User$favourites$studios {
  Query$User$User$favourites$studios({
    this.nodes,
    this.$__typename = 'StudioConnection',
  });

  factory Query$User$User$favourites$studios.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$User$User$favourites$studios(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$StudioFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$StudioFragment?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$User$User$favourites$studios ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$User$User$favourites$studios
    on Query$User$User$favourites$studios {
  CopyWith$Query$User$User$favourites$studios<
          Query$User$User$favourites$studios>
      get copyWith => CopyWith$Query$User$User$favourites$studios(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$User$favourites$studios<TRes> {
  factory CopyWith$Query$User$User$favourites$studios(
    Query$User$User$favourites$studios instance,
    TRes Function(Query$User$User$favourites$studios) then,
  ) = _CopyWithImpl$Query$User$User$favourites$studios;

  factory CopyWith$Query$User$User$favourites$studios.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$favourites$studios;

  TRes call({
    List<Fragment$StudioFragment?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$StudioFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$StudioFragment<Fragment$StudioFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$User$User$favourites$studios<TRes>
    implements CopyWith$Query$User$User$favourites$studios<TRes> {
  _CopyWithImpl$Query$User$User$favourites$studios(
    this._instance,
    this._then,
  );

  final Query$User$User$favourites$studios _instance;

  final TRes Function(Query$User$User$favourites$studios) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$favourites$studios(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$StudioFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Fragment$StudioFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$StudioFragment<
                          Fragment$StudioFragment>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$StudioFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$User$User$favourites$studios<TRes>
    implements CopyWith$Query$User$User$favourites$studios<TRes> {
  _CopyWithStubImpl$Query$User$User$favourites$studios(this._res);

  TRes _res;

  call({
    List<Fragment$StudioFragment?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}
