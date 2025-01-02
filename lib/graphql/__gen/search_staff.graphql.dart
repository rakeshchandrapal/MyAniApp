import 'fragments/page_info.graphql.dart';
import 'fragments/staff.graphql.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Variables$Query$StaffSearch {
  factory Variables$Query$StaffSearch({
    int? page,
    String? search,
    bool? isBirthday,
    List<Enum$StaffSort?>? sort,
  }) =>
      Variables$Query$StaffSearch._({
        if (page != null) r'page': page,
        if (search != null) r'search': search,
        if (isBirthday != null) r'isBirthday': isBirthday,
        if (sort != null) r'sort': sort,
      });

  Variables$Query$StaffSearch._(this._$data);

  factory Variables$Query$StaffSearch.fromJson(Map<String, dynamic> data) {
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
          ?.map(
              (e) => e == null ? null : fromJson$Enum$StaffSort((e as String)))
          .toList();
    }
    return Variables$Query$StaffSearch._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  String? get search => (_$data['search'] as String?);

  bool? get isBirthday => (_$data['isBirthday'] as bool?);

  List<Enum$StaffSort?>? get sort => (_$data['sort'] as List<Enum$StaffSort?>?);

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
          ?.map((e) => e == null ? null : toJson$Enum$StaffSort(e))
          .toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$StaffSearch<Variables$Query$StaffSearch>
      get copyWith => CopyWith$Variables$Query$StaffSearch(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$StaffSearch ||
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

abstract class CopyWith$Variables$Query$StaffSearch<TRes> {
  factory CopyWith$Variables$Query$StaffSearch(
    Variables$Query$StaffSearch instance,
    TRes Function(Variables$Query$StaffSearch) then,
  ) = _CopyWithImpl$Variables$Query$StaffSearch;

  factory CopyWith$Variables$Query$StaffSearch.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$StaffSearch;

  TRes call({
    int? page,
    String? search,
    bool? isBirthday,
    List<Enum$StaffSort?>? sort,
  });
}

class _CopyWithImpl$Variables$Query$StaffSearch<TRes>
    implements CopyWith$Variables$Query$StaffSearch<TRes> {
  _CopyWithImpl$Variables$Query$StaffSearch(
    this._instance,
    this._then,
  );

  final Variables$Query$StaffSearch _instance;

  final TRes Function(Variables$Query$StaffSearch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? search = _undefined,
    Object? isBirthday = _undefined,
    Object? sort = _undefined,
  }) =>
      _then(Variables$Query$StaffSearch._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (search != _undefined) 'search': (search as String?),
        if (isBirthday != _undefined) 'isBirthday': (isBirthday as bool?),
        if (sort != _undefined) 'sort': (sort as List<Enum$StaffSort?>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$StaffSearch<TRes>
    implements CopyWith$Variables$Query$StaffSearch<TRes> {
  _CopyWithStubImpl$Variables$Query$StaffSearch(this._res);

  TRes _res;

  call({
    int? page,
    String? search,
    bool? isBirthday,
    List<Enum$StaffSort?>? sort,
  }) =>
      _res;
}

class Query$StaffSearch {
  Query$StaffSearch({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$StaffSearch.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$StaffSearch(
      Page: l$Page == null
          ? null
          : Query$StaffSearch$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$StaffSearch$Page? Page;

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
    if (other is! Query$StaffSearch || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$StaffSearch on Query$StaffSearch {
  CopyWith$Query$StaffSearch<Query$StaffSearch> get copyWith =>
      CopyWith$Query$StaffSearch(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffSearch<TRes> {
  factory CopyWith$Query$StaffSearch(
    Query$StaffSearch instance,
    TRes Function(Query$StaffSearch) then,
  ) = _CopyWithImpl$Query$StaffSearch;

  factory CopyWith$Query$StaffSearch.stub(TRes res) =
      _CopyWithStubImpl$Query$StaffSearch;

  TRes call({
    Query$StaffSearch$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$StaffSearch$Page<TRes> get Page;
}

class _CopyWithImpl$Query$StaffSearch<TRes>
    implements CopyWith$Query$StaffSearch<TRes> {
  _CopyWithImpl$Query$StaffSearch(
    this._instance,
    this._then,
  );

  final Query$StaffSearch _instance;

  final TRes Function(Query$StaffSearch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StaffSearch(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$StaffSearch$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$StaffSearch$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$StaffSearch$Page.stub(_then(_instance))
        : CopyWith$Query$StaffSearch$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$StaffSearch<TRes>
    implements CopyWith$Query$StaffSearch<TRes> {
  _CopyWithStubImpl$Query$StaffSearch(this._res);

  TRes _res;

  call({
    Query$StaffSearch$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$StaffSearch$Page<TRes> get Page =>
      CopyWith$Query$StaffSearch$Page.stub(_res);
}

const documentNodeQueryStaffSearch = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'StaffSearch'),
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
            name: NameNode(value: 'StaffSort'),
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
            name: NameNode(value: 'staff'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionPageInfo,
  fragmentDefinitionStaffFragment,
]);

class Query$StaffSearch$Page {
  Query$StaffSearch$Page({
    this.pageInfo,
    this.staff,
    this.$__typename = 'Page',
  });

  factory Query$StaffSearch$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$staff = json['staff'];
    final l$$__typename = json['__typename'];
    return Query$StaffSearch$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      staff: (l$staff as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$StaffFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Fragment$StaffFragment?>? staff;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$staff = staff;
    _resultData['staff'] = l$staff?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$staff = staff;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$staff == null ? null : Object.hashAll(l$staff.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$StaffSearch$Page || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$staff = staff;
    final lOther$staff = other.staff;
    if (l$staff != null && lOther$staff != null) {
      if (l$staff.length != lOther$staff.length) {
        return false;
      }
      for (int i = 0; i < l$staff.length; i++) {
        final l$staff$entry = l$staff[i];
        final lOther$staff$entry = lOther$staff[i];
        if (l$staff$entry != lOther$staff$entry) {
          return false;
        }
      }
    } else if (l$staff != lOther$staff) {
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

extension UtilityExtension$Query$StaffSearch$Page on Query$StaffSearch$Page {
  CopyWith$Query$StaffSearch$Page<Query$StaffSearch$Page> get copyWith =>
      CopyWith$Query$StaffSearch$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffSearch$Page<TRes> {
  factory CopyWith$Query$StaffSearch$Page(
    Query$StaffSearch$Page instance,
    TRes Function(Query$StaffSearch$Page) then,
  ) = _CopyWithImpl$Query$StaffSearch$Page;

  factory CopyWith$Query$StaffSearch$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$StaffSearch$Page;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$StaffFragment?>? staff,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes staff(
      Iterable<Fragment$StaffFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$StaffFragment<Fragment$StaffFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$StaffSearch$Page<TRes>
    implements CopyWith$Query$StaffSearch$Page<TRes> {
  _CopyWithImpl$Query$StaffSearch$Page(
    this._instance,
    this._then,
  );

  final Query$StaffSearch$Page _instance;

  final TRes Function(Query$StaffSearch$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? staff = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StaffSearch$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        staff: staff == _undefined
            ? _instance.staff
            : (staff as List<Fragment$StaffFragment?>?),
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

  TRes staff(
          Iterable<Fragment$StaffFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$StaffFragment<
                          Fragment$StaffFragment>?>?)
              _fn) =>
      call(
          staff: _fn(_instance.staff?.map((e) => e == null
              ? null
              : CopyWith$Fragment$StaffFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$StaffSearch$Page<TRes>
    implements CopyWith$Query$StaffSearch$Page<TRes> {
  _CopyWithStubImpl$Query$StaffSearch$Page(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$StaffFragment?>? staff,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  staff(_fn) => _res;
}
