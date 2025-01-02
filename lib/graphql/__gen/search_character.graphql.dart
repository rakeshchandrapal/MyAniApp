import 'fragments/character.graphql.dart';
import 'fragments/page_info.graphql.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Variables$Query$CharacterSearch {
  factory Variables$Query$CharacterSearch({
    int? page,
    String? search,
    bool? isBirthday,
    List<Enum$CharacterSort?>? sort,
  }) =>
      Variables$Query$CharacterSearch._({
        if (page != null) r'page': page,
        if (search != null) r'search': search,
        if (isBirthday != null) r'isBirthday': isBirthday,
        if (sort != null) r'sort': sort,
      });

  Variables$Query$CharacterSearch._(this._$data);

  factory Variables$Query$CharacterSearch.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    if (data.containsKey('isBirthday')) {
      final l$isBirthday = data['isBirthday'];
      result$data['isBirthday'] = (l$isBirthday as bool?);
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJson$Enum$CharacterSort((e as String)))
          .toList();
    }
    return Variables$Query$CharacterSearch._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  String? get search => (_$data['search'] as String?);

  bool? get isBirthday => (_$data['isBirthday'] as bool?);

  List<Enum$CharacterSort?>? get sort =>
      (_$data['sort'] as List<Enum$CharacterSort?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    if (_$data.containsKey('isBirthday')) {
      final l$isBirthday = isBirthday;
      result$data['isBirthday'] = l$isBirthday;
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJson$Enum$CharacterSort(e))
          .toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$CharacterSearch<Variables$Query$CharacterSearch>
      get copyWith => CopyWith$Variables$Query$CharacterSearch(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$CharacterSearch ||
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
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
      return false;
    }
    final l$isBirthday = isBirthday;
    final lOther$isBirthday = other.isBirthday;
    if (_$data.containsKey('isBirthday') !=
        other._$data.containsKey('isBirthday')) {
      return false;
    }
    if (l$isBirthday != lOther$isBirthday) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != null && lOther$sort != null) {
      if (l$sort.length != lOther$sort.length) {
        return false;
      }
      for (int i = 0; i < l$sort.length; i++) {
        final l$sort$entry = l$sort[i];
        final lOther$sort$entry = lOther$sort[i];
        if (l$sort$entry != lOther$sort$entry) {
          return false;
        }
      }
    } else if (l$sort != lOther$sort) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$search = search;
    final l$isBirthday = isBirthday;
    final l$sort = sort;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('search') ? l$search : const {},
      _$data.containsKey('isBirthday') ? l$isBirthday : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$CharacterSearch<TRes> {
  factory CopyWith$Variables$Query$CharacterSearch(
    Variables$Query$CharacterSearch instance,
    TRes Function(Variables$Query$CharacterSearch) then,
  ) = _CopyWithImpl$Variables$Query$CharacterSearch;

  factory CopyWith$Variables$Query$CharacterSearch.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CharacterSearch;

  TRes call({
    int? page,
    String? search,
    bool? isBirthday,
    List<Enum$CharacterSort?>? sort,
  });
}

class _CopyWithImpl$Variables$Query$CharacterSearch<TRes>
    implements CopyWith$Variables$Query$CharacterSearch<TRes> {
  _CopyWithImpl$Variables$Query$CharacterSearch(
    this._instance,
    this._then,
  );

  final Variables$Query$CharacterSearch _instance;

  final TRes Function(Variables$Query$CharacterSearch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? search = _undefined,
    Object? isBirthday = _undefined,
    Object? sort = _undefined,
  }) =>
      _then(Variables$Query$CharacterSearch._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (search != _undefined) 'search': (search as String?),
        if (isBirthday != _undefined) 'isBirthday': (isBirthday as bool?),
        if (sort != _undefined) 'sort': (sort as List<Enum$CharacterSort?>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$CharacterSearch<TRes>
    implements CopyWith$Variables$Query$CharacterSearch<TRes> {
  _CopyWithStubImpl$Variables$Query$CharacterSearch(this._res);

  TRes _res;

  call({
    int? page,
    String? search,
    bool? isBirthday,
    List<Enum$CharacterSort?>? sort,
  }) =>
      _res;
}

class Query$CharacterSearch {
  Query$CharacterSearch({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$CharacterSearch.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$CharacterSearch(
      Page: l$Page == null
          ? null
          : Query$CharacterSearch$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CharacterSearch$Page? Page;

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
    if (other is! Query$CharacterSearch || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$CharacterSearch on Query$CharacterSearch {
  CopyWith$Query$CharacterSearch<Query$CharacterSearch> get copyWith =>
      CopyWith$Query$CharacterSearch(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CharacterSearch<TRes> {
  factory CopyWith$Query$CharacterSearch(
    Query$CharacterSearch instance,
    TRes Function(Query$CharacterSearch) then,
  ) = _CopyWithImpl$Query$CharacterSearch;

  factory CopyWith$Query$CharacterSearch.stub(TRes res) =
      _CopyWithStubImpl$Query$CharacterSearch;

  TRes call({
    Query$CharacterSearch$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$CharacterSearch$Page<TRes> get Page;
}

class _CopyWithImpl$Query$CharacterSearch<TRes>
    implements CopyWith$Query$CharacterSearch<TRes> {
  _CopyWithImpl$Query$CharacterSearch(
    this._instance,
    this._then,
  );

  final Query$CharacterSearch _instance;

  final TRes Function(Query$CharacterSearch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CharacterSearch(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$CharacterSearch$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$CharacterSearch$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$CharacterSearch$Page.stub(_then(_instance))
        : CopyWith$Query$CharacterSearch$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$CharacterSearch<TRes>
    implements CopyWith$Query$CharacterSearch<TRes> {
  _CopyWithStubImpl$Query$CharacterSearch(this._res);

  TRes _res;

  call({
    Query$CharacterSearch$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$CharacterSearch$Page<TRes> get Page =>
      CopyWith$Query$CharacterSearch$Page.stub(_res);
}

const documentNodeQueryCharacterSearch = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'CharacterSearch'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '1')),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isBirthday')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'sort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'CharacterSort'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: ListValueNode(values: [
          EnumValueNode(name: NameNode(value: 'FAVOURITES_DESC')),
          EnumValueNode(name: NameNode(value: 'ID_DESC')),
        ])),
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
            value: IntValueNode(value: '30'),
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
            name: NameNode(value: 'characters'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'isBirthday'),
                value: VariableNode(name: NameNode(value: 'isBirthday')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'search'),
                value: VariableNode(name: NameNode(value: 'search')),
              ),
            ],
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
]);

class Query$CharacterSearch$Page {
  Query$CharacterSearch$Page({
    this.pageInfo,
    this.characters,
    this.$__typename = 'Page',
  });

  factory Query$CharacterSearch$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$CharacterSearch$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      characters: (l$characters as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$CharacterFragment.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Fragment$CharacterFragment?>? characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$characters = characters;
    _resultData['characters'] = l$characters?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$characters == null ? null : Object.hashAll(l$characters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CharacterSearch$Page ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != null && lOther$characters != null) {
      if (l$characters.length != lOther$characters.length) {
        return false;
      }
      for (int i = 0; i < l$characters.length; i++) {
        final l$characters$entry = l$characters[i];
        final lOther$characters$entry = lOther$characters[i];
        if (l$characters$entry != lOther$characters$entry) {
          return false;
        }
      }
    } else if (l$characters != lOther$characters) {
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

extension UtilityExtension$Query$CharacterSearch$Page
    on Query$CharacterSearch$Page {
  CopyWith$Query$CharacterSearch$Page<Query$CharacterSearch$Page>
      get copyWith => CopyWith$Query$CharacterSearch$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CharacterSearch$Page<TRes> {
  factory CopyWith$Query$CharacterSearch$Page(
    Query$CharacterSearch$Page instance,
    TRes Function(Query$CharacterSearch$Page) then,
  ) = _CopyWithImpl$Query$CharacterSearch$Page;

  factory CopyWith$Query$CharacterSearch$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$CharacterSearch$Page;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$CharacterFragment?>? characters,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes characters(
      Iterable<Fragment$CharacterFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$CharacterFragment<
                      Fragment$CharacterFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$CharacterSearch$Page<TRes>
    implements CopyWith$Query$CharacterSearch$Page<TRes> {
  _CopyWithImpl$Query$CharacterSearch$Page(
    this._instance,
    this._then,
  );

  final Query$CharacterSearch$Page _instance;

  final TRes Function(Query$CharacterSearch$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CharacterSearch$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters as List<Fragment$CharacterFragment?>?),
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

  TRes characters(
          Iterable<Fragment$CharacterFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$CharacterFragment<
                          Fragment$CharacterFragment>?>?)
              _fn) =>
      call(
          characters: _fn(_instance.characters?.map((e) => e == null
              ? null
              : CopyWith$Fragment$CharacterFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$CharacterSearch$Page<TRes>
    implements CopyWith$Query$CharacterSearch$Page<TRes> {
  _CopyWithStubImpl$Query$CharacterSearch$Page(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$CharacterFragment?>? characters,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  characters(_fn) => _res;
}
