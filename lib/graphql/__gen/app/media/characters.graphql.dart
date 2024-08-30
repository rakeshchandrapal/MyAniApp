import '../../graphql/fragments/character.graphql.dart';
import '../../graphql/fragments/page_info.graphql.dart';
import '../../graphql/fragments/staff.graphql.dart';
import '../../graphql/schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$MediaCharacters {
  factory Variables$Query$MediaCharacters({
    int? mediaId,
    int? page,
  }) =>
      Variables$Query$MediaCharacters._({
        if (mediaId != null) r'mediaId': mediaId,
        if (page != null) r'page': page,
      });

  Variables$Query$MediaCharacters._(this._$data);

  factory Variables$Query$MediaCharacters.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$MediaCharacters._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get mediaId => (_$data['mediaId'] as int?);

  int? get page => (_$data['page'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$MediaCharacters<Variables$Query$MediaCharacters>
      get copyWith => CopyWith$Variables$Query$MediaCharacters(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$MediaCharacters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (_$data.containsKey('mediaId') != other._$data.containsKey('mediaId')) {
      return false;
    }
    if (l$mediaId != lOther$mediaId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$mediaId = mediaId;
    final l$page = page;
    return Object.hashAll([
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('page') ? l$page : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$MediaCharacters<TRes> {
  factory CopyWith$Variables$Query$MediaCharacters(
    Variables$Query$MediaCharacters instance,
    TRes Function(Variables$Query$MediaCharacters) then,
  ) = _CopyWithImpl$Variables$Query$MediaCharacters;

  factory CopyWith$Variables$Query$MediaCharacters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MediaCharacters;

  TRes call({
    int? mediaId,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$MediaCharacters<TRes>
    implements CopyWith$Variables$Query$MediaCharacters<TRes> {
  _CopyWithImpl$Variables$Query$MediaCharacters(
    this._instance,
    this._then,
  );

  final Variables$Query$MediaCharacters _instance;

  final TRes Function(Variables$Query$MediaCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$MediaCharacters._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$MediaCharacters<TRes>
    implements CopyWith$Variables$Query$MediaCharacters<TRes> {
  _CopyWithStubImpl$Variables$Query$MediaCharacters(this._res);

  TRes _res;

  call({
    int? mediaId,
    int? page,
  }) =>
      _res;
}

class Query$MediaCharacters {
  Query$MediaCharacters({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$MediaCharacters.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$MediaCharacters(
      Media: l$Media == null
          ? null
          : Query$MediaCharacters$Media.fromJson(
              (l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MediaCharacters$Media? Media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Media = Media;
    _resultData['Media'] = l$Media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Media = Media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MediaCharacters) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Media = Media;
    final lOther$Media = other.Media;
    if (l$Media != lOther$Media) {
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

extension UtilityExtension$Query$MediaCharacters on Query$MediaCharacters {
  CopyWith$Query$MediaCharacters<Query$MediaCharacters> get copyWith =>
      CopyWith$Query$MediaCharacters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaCharacters<TRes> {
  factory CopyWith$Query$MediaCharacters(
    Query$MediaCharacters instance,
    TRes Function(Query$MediaCharacters) then,
  ) = _CopyWithImpl$Query$MediaCharacters;

  factory CopyWith$Query$MediaCharacters.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaCharacters;

  TRes call({
    Query$MediaCharacters$Media? Media,
    String? $__typename,
  });
  CopyWith$Query$MediaCharacters$Media<TRes> get Media;
}

class _CopyWithImpl$Query$MediaCharacters<TRes>
    implements CopyWith$Query$MediaCharacters<TRes> {
  _CopyWithImpl$Query$MediaCharacters(
    this._instance,
    this._then,
  );

  final Query$MediaCharacters _instance;

  final TRes Function(Query$MediaCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaCharacters(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Query$MediaCharacters$Media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaCharacters$Media<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Query$MediaCharacters$Media.stub(_then(_instance))
        : CopyWith$Query$MediaCharacters$Media(
            local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$MediaCharacters<TRes>
    implements CopyWith$Query$MediaCharacters<TRes> {
  _CopyWithStubImpl$Query$MediaCharacters(this._res);

  TRes _res;

  call({
    Query$MediaCharacters$Media? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaCharacters$Media<TRes> get Media =>
      CopyWith$Query$MediaCharacters$Media.stub(_res);
}

const documentNodeQueryMediaCharacters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaCharacters'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
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
        name: NameNode(value: 'Media'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'mediaId')),
          )
        ],
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
            name: NameNode(value: 'countryOfOrigin'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'characters'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'ROLE')),
                  EnumValueNode(name: NameNode(value: 'RELEVANCE')),
                  EnumValueNode(name: NameNode(value: 'ID')),
                ]),
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
                  FragmentSpreadNode(
                    name: NameNode(value: 'PageInfo'),
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
                name: NameNode(value: 'edges'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'role'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'node'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'CharacterFragment'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'first'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'full'),
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
                    name: NameNode(value: 'voiceActorRoles'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'sort'),
                        value: ListValueNode(values: [
                          EnumValueNode(name: NameNode(value: 'RELEVANCE')),
                          EnumValueNode(name: NameNode(value: 'ID')),
                        ]),
                      )
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'roleNotes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'dubGroup'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'voiceActor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                            name: NameNode(value: 'StaffFragment'),
                            directives: [],
                          ),
                          FieldNode(
                            name: NameNode(value: 'languageV2'),
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
  fragmentDefinitionPageInfo,
  fragmentDefinitionCharacterFragment,
  fragmentDefinitionStaffFragment,
]);

class Query$MediaCharacters$Media {
  Query$MediaCharacters$Media({
    required this.id,
    this.countryOfOrigin,
    this.characters,
    this.$__typename = 'Media',
  });

  factory Query$MediaCharacters$Media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$countryOfOrigin = json['countryOfOrigin'];
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$MediaCharacters$Media(
      id: (l$id as int),
      countryOfOrigin: (l$countryOfOrigin as String?),
      characters: l$characters == null
          ? null
          : Query$MediaCharacters$Media$characters.fromJson(
              (l$characters as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? countryOfOrigin;

  final Query$MediaCharacters$Media$characters? characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$countryOfOrigin = countryOfOrigin;
    _resultData['countryOfOrigin'] = l$countryOfOrigin;
    final l$characters = characters;
    _resultData['characters'] = l$characters?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$countryOfOrigin = countryOfOrigin;
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$countryOfOrigin,
      l$characters,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MediaCharacters$Media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$countryOfOrigin = countryOfOrigin;
    final lOther$countryOfOrigin = other.countryOfOrigin;
    if (l$countryOfOrigin != lOther$countryOfOrigin) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
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

extension UtilityExtension$Query$MediaCharacters$Media
    on Query$MediaCharacters$Media {
  CopyWith$Query$MediaCharacters$Media<Query$MediaCharacters$Media>
      get copyWith => CopyWith$Query$MediaCharacters$Media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaCharacters$Media<TRes> {
  factory CopyWith$Query$MediaCharacters$Media(
    Query$MediaCharacters$Media instance,
    TRes Function(Query$MediaCharacters$Media) then,
  ) = _CopyWithImpl$Query$MediaCharacters$Media;

  factory CopyWith$Query$MediaCharacters$Media.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaCharacters$Media;

  TRes call({
    int? id,
    String? countryOfOrigin,
    Query$MediaCharacters$Media$characters? characters,
    String? $__typename,
  });
  CopyWith$Query$MediaCharacters$Media$characters<TRes> get characters;
}

class _CopyWithImpl$Query$MediaCharacters$Media<TRes>
    implements CopyWith$Query$MediaCharacters$Media<TRes> {
  _CopyWithImpl$Query$MediaCharacters$Media(
    this._instance,
    this._then,
  );

  final Query$MediaCharacters$Media _instance;

  final TRes Function(Query$MediaCharacters$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? countryOfOrigin = _undefined,
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaCharacters$Media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        countryOfOrigin: countryOfOrigin == _undefined
            ? _instance.countryOfOrigin
            : (countryOfOrigin as String?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters as Query$MediaCharacters$Media$characters?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaCharacters$Media$characters<TRes> get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWith$Query$MediaCharacters$Media$characters.stub(_then(_instance))
        : CopyWith$Query$MediaCharacters$Media$characters(
            local$characters, (e) => call(characters: e));
  }
}

class _CopyWithStubImpl$Query$MediaCharacters$Media<TRes>
    implements CopyWith$Query$MediaCharacters$Media<TRes> {
  _CopyWithStubImpl$Query$MediaCharacters$Media(this._res);

  TRes _res;

  call({
    int? id,
    String? countryOfOrigin,
    Query$MediaCharacters$Media$characters? characters,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaCharacters$Media$characters<TRes> get characters =>
      CopyWith$Query$MediaCharacters$Media$characters.stub(_res);
}

class Query$MediaCharacters$Media$characters {
  Query$MediaCharacters$Media$characters({
    this.pageInfo,
    this.edges,
    this.$__typename = 'CharacterConnection',
  });

  factory Query$MediaCharacters$Media$characters.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$MediaCharacters$Media$characters(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$MediaCharacters$Media$characters$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$MediaCharacters$Media$characters$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MediaCharacters$Media$characters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$MediaCharacters$Media$characters
    on Query$MediaCharacters$Media$characters {
  CopyWith$Query$MediaCharacters$Media$characters<
          Query$MediaCharacters$Media$characters>
      get copyWith => CopyWith$Query$MediaCharacters$Media$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaCharacters$Media$characters<TRes> {
  factory CopyWith$Query$MediaCharacters$Media$characters(
    Query$MediaCharacters$Media$characters instance,
    TRes Function(Query$MediaCharacters$Media$characters) then,
  ) = _CopyWithImpl$Query$MediaCharacters$Media$characters;

  factory CopyWith$Query$MediaCharacters$Media$characters.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaCharacters$Media$characters;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$MediaCharacters$Media$characters$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$MediaCharacters$Media$characters$edges?>? Function(
              Iterable<
                  CopyWith$Query$MediaCharacters$Media$characters$edges<
                      Query$MediaCharacters$Media$characters$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$MediaCharacters$Media$characters<TRes>
    implements CopyWith$Query$MediaCharacters$Media$characters<TRes> {
  _CopyWithImpl$Query$MediaCharacters$Media$characters(
    this._instance,
    this._then,
  );

  final Query$MediaCharacters$Media$characters _instance;

  final TRes Function(Query$MediaCharacters$Media$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaCharacters$Media$characters(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$MediaCharacters$Media$characters$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Fragment$PageInfo.stub(_then(_instance))
        : CopyWith$Fragment$PageInfo(local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes edges(
          Iterable<Query$MediaCharacters$Media$characters$edges?>? Function(
                  Iterable<
                      CopyWith$Query$MediaCharacters$Media$characters$edges<
                          Query$MediaCharacters$Media$characters$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$MediaCharacters$Media$characters$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$MediaCharacters$Media$characters<TRes>
    implements CopyWith$Query$MediaCharacters$Media$characters<TRes> {
  _CopyWithStubImpl$Query$MediaCharacters$Media$characters(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$MediaCharacters$Media$characters$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  edges(_fn) => _res;
}

class Query$MediaCharacters$Media$characters$edges {
  Query$MediaCharacters$Media$characters$edges({
    this.name,
    this.role,
    this.node,
    this.voiceActorRoles,
    this.$__typename = 'CharacterEdge',
  });

  factory Query$MediaCharacters$Media$characters$edges.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$role = json['role'];
    final l$node = json['node'];
    final l$voiceActorRoles = json['voiceActorRoles'];
    final l$$__typename = json['__typename'];
    return Query$MediaCharacters$Media$characters$edges(
      name: (l$name as String?),
      role: l$role == null
          ? null
          : fromJson$Enum$CharacterRole((l$role as String)),
      node: l$node == null
          ? null
          : Query$MediaCharacters$Media$characters$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      voiceActorRoles: (l$voiceActorRoles as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$MediaCharacters$Media$characters$edges$voiceActorRoles
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final Enum$CharacterRole? role;

  final Query$MediaCharacters$Media$characters$edges$node? node;

  final List<Query$MediaCharacters$Media$characters$edges$voiceActorRoles?>?
      voiceActorRoles;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$role = role;
    _resultData['role'] =
        l$role == null ? null : toJson$Enum$CharacterRole(l$role);
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$voiceActorRoles = voiceActorRoles;
    _resultData['voiceActorRoles'] =
        l$voiceActorRoles?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$role = role;
    final l$node = node;
    final l$voiceActorRoles = voiceActorRoles;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$role,
      l$node,
      l$voiceActorRoles == null
          ? null
          : Object.hashAll(l$voiceActorRoles.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MediaCharacters$Media$characters$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$voiceActorRoles = voiceActorRoles;
    final lOther$voiceActorRoles = other.voiceActorRoles;
    if (l$voiceActorRoles != null && lOther$voiceActorRoles != null) {
      if (l$voiceActorRoles.length != lOther$voiceActorRoles.length) {
        return false;
      }
      for (int i = 0; i < l$voiceActorRoles.length; i++) {
        final l$voiceActorRoles$entry = l$voiceActorRoles[i];
        final lOther$voiceActorRoles$entry = lOther$voiceActorRoles[i];
        if (l$voiceActorRoles$entry != lOther$voiceActorRoles$entry) {
          return false;
        }
      }
    } else if (l$voiceActorRoles != lOther$voiceActorRoles) {
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

extension UtilityExtension$Query$MediaCharacters$Media$characters$edges
    on Query$MediaCharacters$Media$characters$edges {
  CopyWith$Query$MediaCharacters$Media$characters$edges<
          Query$MediaCharacters$Media$characters$edges>
      get copyWith => CopyWith$Query$MediaCharacters$Media$characters$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaCharacters$Media$characters$edges<TRes> {
  factory CopyWith$Query$MediaCharacters$Media$characters$edges(
    Query$MediaCharacters$Media$characters$edges instance,
    TRes Function(Query$MediaCharacters$Media$characters$edges) then,
  ) = _CopyWithImpl$Query$MediaCharacters$Media$characters$edges;

  factory CopyWith$Query$MediaCharacters$Media$characters$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges;

  TRes call({
    String? name,
    Enum$CharacterRole? role,
    Query$MediaCharacters$Media$characters$edges$node? node,
    List<Query$MediaCharacters$Media$characters$edges$voiceActorRoles?>?
        voiceActorRoles,
    String? $__typename,
  });
  CopyWith$Query$MediaCharacters$Media$characters$edges$node<TRes> get node;
  TRes voiceActorRoles(
      Iterable<Query$MediaCharacters$Media$characters$edges$voiceActorRoles?>? Function(
              Iterable<
                  CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles<
                      Query$MediaCharacters$Media$characters$edges$voiceActorRoles>?>?)
          _fn);
}

class _CopyWithImpl$Query$MediaCharacters$Media$characters$edges<TRes>
    implements CopyWith$Query$MediaCharacters$Media$characters$edges<TRes> {
  _CopyWithImpl$Query$MediaCharacters$Media$characters$edges(
    this._instance,
    this._then,
  );

  final Query$MediaCharacters$Media$characters$edges _instance;

  final TRes Function(Query$MediaCharacters$Media$characters$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? role = _undefined,
    Object? node = _undefined,
    Object? voiceActorRoles = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaCharacters$Media$characters$edges(
        name: name == _undefined ? _instance.name : (name as String?),
        role:
            role == _undefined ? _instance.role : (role as Enum$CharacterRole?),
        node: node == _undefined
            ? _instance.node
            : (node as Query$MediaCharacters$Media$characters$edges$node?),
        voiceActorRoles: voiceActorRoles == _undefined
            ? _instance.voiceActorRoles
            : (voiceActorRoles as List<
                Query$MediaCharacters$Media$characters$edges$voiceActorRoles?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaCharacters$Media$characters$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$MediaCharacters$Media$characters$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$MediaCharacters$Media$characters$edges$node(
            local$node, (e) => call(node: e));
  }

  TRes voiceActorRoles(
          Iterable<Query$MediaCharacters$Media$characters$edges$voiceActorRoles?>? Function(
                  Iterable<
                      CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles<
                          Query$MediaCharacters$Media$characters$edges$voiceActorRoles>?>?)
              _fn) =>
      call(
          voiceActorRoles: _fn(_instance.voiceActorRoles?.map((e) => e == null
              ? null
              : CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges<TRes>
    implements CopyWith$Query$MediaCharacters$Media$characters$edges<TRes> {
  _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges(this._res);

  TRes _res;

  call({
    String? name,
    Enum$CharacterRole? role,
    Query$MediaCharacters$Media$characters$edges$node? node,
    List<Query$MediaCharacters$Media$characters$edges$voiceActorRoles?>?
        voiceActorRoles,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaCharacters$Media$characters$edges$node<TRes> get node =>
      CopyWith$Query$MediaCharacters$Media$characters$edges$node.stub(_res);

  voiceActorRoles(_fn) => _res;
}

class Query$MediaCharacters$Media$characters$edges$node
    implements Fragment$CharacterFragment {
  Query$MediaCharacters$Media$characters$edges$node({
    required this.id,
    this.name,
    this.image,
    this.$__typename = 'Character',
  });

  factory Query$MediaCharacters$Media$characters$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$MediaCharacters$Media$characters$edges$node(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Query$MediaCharacters$Media$characters$edges$node$name.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Query$MediaCharacters$Media$characters$edges$node$image.fromJson(
              (l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$MediaCharacters$Media$characters$edges$node$name? name;

  final Query$MediaCharacters$Media$characters$edges$node$image? image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MediaCharacters$Media$characters$edges$node) ||
        runtimeType != other.runtimeType) {
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
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
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

extension UtilityExtension$Query$MediaCharacters$Media$characters$edges$node
    on Query$MediaCharacters$Media$characters$edges$node {
  CopyWith$Query$MediaCharacters$Media$characters$edges$node<
          Query$MediaCharacters$Media$characters$edges$node>
      get copyWith =>
          CopyWith$Query$MediaCharacters$Media$characters$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaCharacters$Media$characters$edges$node<
    TRes> {
  factory CopyWith$Query$MediaCharacters$Media$characters$edges$node(
    Query$MediaCharacters$Media$characters$edges$node instance,
    TRes Function(Query$MediaCharacters$Media$characters$edges$node) then,
  ) = _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$node;

  factory CopyWith$Query$MediaCharacters$Media$characters$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$node;

  TRes call({
    int? id,
    Query$MediaCharacters$Media$characters$edges$node$name? name,
    Query$MediaCharacters$Media$characters$edges$node$image? image,
    String? $__typename,
  });
  CopyWith$Query$MediaCharacters$Media$characters$edges$node$name<TRes>
      get name;
  CopyWith$Query$MediaCharacters$Media$characters$edges$node$image<TRes>
      get image;
}

class _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$node<TRes>
    implements
        CopyWith$Query$MediaCharacters$Media$characters$edges$node<TRes> {
  _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$node(
    this._instance,
    this._then,
  );

  final Query$MediaCharacters$Media$characters$edges$node _instance;

  final TRes Function(Query$MediaCharacters$Media$characters$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaCharacters$Media$characters$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as Query$MediaCharacters$Media$characters$edges$node$name?),
        image: image == _undefined
            ? _instance.image
            : (image
                as Query$MediaCharacters$Media$characters$edges$node$image?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaCharacters$Media$characters$edges$node$name<TRes>
      get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$MediaCharacters$Media$characters$edges$node$name.stub(
            _then(_instance))
        : CopyWith$Query$MediaCharacters$Media$characters$edges$node$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Query$MediaCharacters$Media$characters$edges$node$image<TRes>
      get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$MediaCharacters$Media$characters$edges$node$image.stub(
            _then(_instance))
        : CopyWith$Query$MediaCharacters$Media$characters$edges$node$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$node<TRes>
    implements
        CopyWith$Query$MediaCharacters$Media$characters$edges$node<TRes> {
  _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$node(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$MediaCharacters$Media$characters$edges$node$name? name,
    Query$MediaCharacters$Media$characters$edges$node$image? image,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaCharacters$Media$characters$edges$node$name<TRes>
      get name =>
          CopyWith$Query$MediaCharacters$Media$characters$edges$node$name.stub(
              _res);

  CopyWith$Query$MediaCharacters$Media$characters$edges$node$image<TRes>
      get image =>
          CopyWith$Query$MediaCharacters$Media$characters$edges$node$image.stub(
              _res);
}

class Query$MediaCharacters$Media$characters$edges$node$name
    implements Fragment$CharacterFragment$name {
  Query$MediaCharacters$Media$characters$edges$node$name({
    this.userPreferred,
    this.$__typename = 'CharacterName',
    this.first,
    this.full,
  });

  factory Query$MediaCharacters$Media$characters$edges$node$name.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    final l$first = json['first'];
    final l$full = json['full'];
    return Query$MediaCharacters$Media$characters$edges$node$name(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
      first: (l$first as String?),
      full: (l$full as String?),
    );
  }

  final String? userPreferred;

  final String $__typename;

  final String? first;

  final String? full;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$first = first;
    _resultData['first'] = l$first;
    final l$full = full;
    _resultData['full'] = l$full;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    final l$first = first;
    final l$full = full;
    return Object.hashAll([
      l$userPreferred,
      l$$__typename,
      l$first,
      l$full,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MediaCharacters$Media$characters$edges$node$name) ||
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
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) {
      return false;
    }
    final l$full = full;
    final lOther$full = other.full;
    if (l$full != lOther$full) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MediaCharacters$Media$characters$edges$node$name
    on Query$MediaCharacters$Media$characters$edges$node$name {
  CopyWith$Query$MediaCharacters$Media$characters$edges$node$name<
          Query$MediaCharacters$Media$characters$edges$node$name>
      get copyWith =>
          CopyWith$Query$MediaCharacters$Media$characters$edges$node$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaCharacters$Media$characters$edges$node$name<
    TRes> {
  factory CopyWith$Query$MediaCharacters$Media$characters$edges$node$name(
    Query$MediaCharacters$Media$characters$edges$node$name instance,
    TRes Function(Query$MediaCharacters$Media$characters$edges$node$name) then,
  ) = _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$node$name;

  factory CopyWith$Query$MediaCharacters$Media$characters$edges$node$name.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$node$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
    String? first,
    String? full,
  });
}

class _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$node$name<TRes>
    implements
        CopyWith$Query$MediaCharacters$Media$characters$edges$node$name<TRes> {
  _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$node$name(
    this._instance,
    this._then,
  );

  final Query$MediaCharacters$Media$characters$edges$node$name _instance;

  final TRes Function(Query$MediaCharacters$Media$characters$edges$node$name)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
    Object? first = _undefined,
    Object? full = _undefined,
  }) =>
      _then(Query$MediaCharacters$Media$characters$edges$node$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        first: first == _undefined ? _instance.first : (first as String?),
        full: full == _undefined ? _instance.full : (full as String?),
      ));
}

class _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$node$name<
        TRes>
    implements
        CopyWith$Query$MediaCharacters$Media$characters$edges$node$name<TRes> {
  _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$node$name(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
    String? first,
    String? full,
  }) =>
      _res;
}

class Query$MediaCharacters$Media$characters$edges$node$image
    implements Fragment$CharacterFragment$image {
  Query$MediaCharacters$Media$characters$edges$node$image({
    this.large,
    this.$__typename = 'CharacterImage',
  });

  factory Query$MediaCharacters$Media$characters$edges$node$image.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$MediaCharacters$Media$characters$edges$node$image(
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
    if (!(other is Query$MediaCharacters$Media$characters$edges$node$image) ||
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

extension UtilityExtension$Query$MediaCharacters$Media$characters$edges$node$image
    on Query$MediaCharacters$Media$characters$edges$node$image {
  CopyWith$Query$MediaCharacters$Media$characters$edges$node$image<
          Query$MediaCharacters$Media$characters$edges$node$image>
      get copyWith =>
          CopyWith$Query$MediaCharacters$Media$characters$edges$node$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaCharacters$Media$characters$edges$node$image<
    TRes> {
  factory CopyWith$Query$MediaCharacters$Media$characters$edges$node$image(
    Query$MediaCharacters$Media$characters$edges$node$image instance,
    TRes Function(Query$MediaCharacters$Media$characters$edges$node$image) then,
  ) = _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$node$image;

  factory CopyWith$Query$MediaCharacters$Media$characters$edges$node$image.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$node$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$node$image<
        TRes>
    implements
        CopyWith$Query$MediaCharacters$Media$characters$edges$node$image<TRes> {
  _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$node$image(
    this._instance,
    this._then,
  );

  final Query$MediaCharacters$Media$characters$edges$node$image _instance;

  final TRes Function(Query$MediaCharacters$Media$characters$edges$node$image)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaCharacters$Media$characters$edges$node$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$node$image<
        TRes>
    implements
        CopyWith$Query$MediaCharacters$Media$characters$edges$node$image<TRes> {
  _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$node$image(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$MediaCharacters$Media$characters$edges$voiceActorRoles {
  Query$MediaCharacters$Media$characters$edges$voiceActorRoles({
    this.roleNotes,
    this.dubGroup,
    this.voiceActor,
    this.$__typename = 'StaffRoleType',
  });

  factory Query$MediaCharacters$Media$characters$edges$voiceActorRoles.fromJson(
      Map<String, dynamic> json) {
    final l$roleNotes = json['roleNotes'];
    final l$dubGroup = json['dubGroup'];
    final l$voiceActor = json['voiceActor'];
    final l$$__typename = json['__typename'];
    return Query$MediaCharacters$Media$characters$edges$voiceActorRoles(
      roleNotes: (l$roleNotes as String?),
      dubGroup: (l$dubGroup as String?),
      voiceActor: l$voiceActor == null
          ? null
          : Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor
              .fromJson((l$voiceActor as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? roleNotes;

  final String? dubGroup;

  final Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor?
      voiceActor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$roleNotes = roleNotes;
    _resultData['roleNotes'] = l$roleNotes;
    final l$dubGroup = dubGroup;
    _resultData['dubGroup'] = l$dubGroup;
    final l$voiceActor = voiceActor;
    _resultData['voiceActor'] = l$voiceActor?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$roleNotes = roleNotes;
    final l$dubGroup = dubGroup;
    final l$voiceActor = voiceActor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$roleNotes,
      l$dubGroup,
      l$voiceActor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MediaCharacters$Media$characters$edges$voiceActorRoles) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$roleNotes = roleNotes;
    final lOther$roleNotes = other.roleNotes;
    if (l$roleNotes != lOther$roleNotes) {
      return false;
    }
    final l$dubGroup = dubGroup;
    final lOther$dubGroup = other.dubGroup;
    if (l$dubGroup != lOther$dubGroup) {
      return false;
    }
    final l$voiceActor = voiceActor;
    final lOther$voiceActor = other.voiceActor;
    if (l$voiceActor != lOther$voiceActor) {
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

extension UtilityExtension$Query$MediaCharacters$Media$characters$edges$voiceActorRoles
    on Query$MediaCharacters$Media$characters$edges$voiceActorRoles {
  CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles<
          Query$MediaCharacters$Media$characters$edges$voiceActorRoles>
      get copyWith =>
          CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles<
    TRes> {
  factory CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles(
    Query$MediaCharacters$Media$characters$edges$voiceActorRoles instance,
    TRes Function(Query$MediaCharacters$Media$characters$edges$voiceActorRoles)
        then,
  ) = _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles;

  factory CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles;

  TRes call({
    String? roleNotes,
    String? dubGroup,
    Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor?
        voiceActor,
    String? $__typename,
  });
  CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor<
      TRes> get voiceActor;
}

class _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles<
        TRes>
    implements
        CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles<
            TRes> {
  _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles(
    this._instance,
    this._then,
  );

  final Query$MediaCharacters$Media$characters$edges$voiceActorRoles _instance;

  final TRes Function(
      Query$MediaCharacters$Media$characters$edges$voiceActorRoles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? roleNotes = _undefined,
    Object? dubGroup = _undefined,
    Object? voiceActor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaCharacters$Media$characters$edges$voiceActorRoles(
        roleNotes: roleNotes == _undefined
            ? _instance.roleNotes
            : (roleNotes as String?),
        dubGroup:
            dubGroup == _undefined ? _instance.dubGroup : (dubGroup as String?),
        voiceActor: voiceActor == _undefined
            ? _instance.voiceActor
            : (voiceActor
                as Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor<
      TRes> get voiceActor {
    final local$voiceActor = _instance.voiceActor;
    return local$voiceActor == null
        ? CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor
            .stub(_then(_instance))
        : CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor(
            local$voiceActor, (e) => call(voiceActor: e));
  }
}

class _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles<
        TRes>
    implements
        CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles<
            TRes> {
  _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles(
      this._res);

  TRes _res;

  call({
    String? roleNotes,
    String? dubGroup,
    Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor?
        voiceActor,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor<
          TRes>
      get voiceActor =>
          CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor
              .stub(_res);
}

class Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor
    implements Fragment$StaffFragment {
  Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor({
    required this.id,
    this.name,
    this.image,
    this.$__typename = 'Staff',
    this.languageV2,
  });

  factory Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    final l$languageV2 = json['languageV2'];
    return Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name
              .fromJson((l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image
              .fromJson((l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      languageV2: (l$languageV2 as String?),
    );
  }

  final int id;

  final Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name?
      name;

  final Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image?
      image;

  final String $__typename;

  final String? languageV2;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$languageV2 = languageV2;
    _resultData['languageV2'] = l$languageV2;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$$__typename = $__typename;
    final l$languageV2 = languageV2;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$$__typename,
      l$languageV2,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor) ||
        runtimeType != other.runtimeType) {
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
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$languageV2 = languageV2;
    final lOther$languageV2 = other.languageV2;
    if (l$languageV2 != lOther$languageV2) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor
    on Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor {
  CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor<
          Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor>
      get copyWith =>
          CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor<
    TRes> {
  factory CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor(
    Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor
        instance,
    TRes Function(
            Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor)
        then,
  ) = _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor;

  factory CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor;

  TRes call({
    int? id,
    Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name?
        name,
    Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image?
        image,
    String? $__typename,
    String? languageV2,
  });
  CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name<
      TRes> get name;
  CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image<
      TRes> get image;
}

class _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor<
        TRes>
    implements
        CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor<
            TRes> {
  _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor(
    this._instance,
    this._then,
  );

  final Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor
      _instance;

  final TRes Function(
          Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
    Object? languageV2 = _undefined,
  }) =>
      _then(
          Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name
                as Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name?),
        image: image == _undefined
            ? _instance.image
            : (image
                as Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        languageV2: languageV2 == _undefined
            ? _instance.languageV2
            : (languageV2 as String?),
      ));

  CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name<
      TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name
            .stub(_then(_instance))
        : CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image<
      TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image
            .stub(_then(_instance))
        : CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor<
        TRes>
    implements
        CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor<
            TRes> {
  _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name?
        name,
    Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image?
        image,
    String? $__typename,
    String? languageV2,
  }) =>
      _res;

  CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name<
          TRes>
      get name =>
          CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name
              .stub(_res);

  CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image<
          TRes>
      get image =>
          CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image
              .stub(_res);
}

class Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name
    implements Fragment$StaffFragment$name {
  Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name({
    this.userPreferred,
    this.$__typename = 'StaffName',
  });

  factory Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name(
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
    if (!(other
            is Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name) ||
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

extension UtilityExtension$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name
    on Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name {
  CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name<
          Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name>
      get copyWith =>
          CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name<
    TRes> {
  factory CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name(
    Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name
        instance,
    TRes Function(
            Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name)
        then,
  ) = _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name;

  factory CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name<
        TRes>
    implements
        CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name<
            TRes> {
  _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name(
    this._instance,
    this._then,
  );

  final Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name
      _instance;

  final TRes Function(
          Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name<
        TRes>
    implements
        CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name<
            TRes> {
  _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$name(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image
    implements Fragment$StaffFragment$image {
  Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image({
    this.large,
    this.$__typename = 'StaffImage',
  });

  factory Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image(
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
    if (!(other
            is Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image) ||
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

extension UtilityExtension$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image
    on Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image {
  CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image<
          Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image>
      get copyWith =>
          CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image<
    TRes> {
  factory CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image(
    Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image
        instance,
    TRes Function(
            Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image)
        then,
  ) = _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image;

  factory CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image<
        TRes>
    implements
        CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image<
            TRes> {
  _CopyWithImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image(
    this._instance,
    this._then,
  );

  final Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image
      _instance;

  final TRes Function(
          Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image<
        TRes>
    implements
        CopyWith$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image<
            TRes> {
  _CopyWithStubImpl$Query$MediaCharacters$Media$characters$edges$voiceActorRoles$voiceActor$image(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}
