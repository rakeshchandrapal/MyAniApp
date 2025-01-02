import 'fragments/media.graphql.dart';
import 'fragments/page_info.graphql.dart';
import 'fragments/thread.graphql.dart';
import 'fragments/user.graphql.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Variables$Query$Forums {
  factory Variables$Query$Forums({
    int? page,
    List<Enum$ThreadSort?>? sort,
    int? id,
    bool? subscribed,
    String? search,
  }) =>
      Variables$Query$Forums._({
        if (page != null) r'page': page,
        if (sort != null) r'sort': sort,
        if (id != null) r'id': id,
        if (subscribed != null) r'subscribed': subscribed,
        if (search != null) r'search': search,
      });

  Variables$Query$Forums._(this._$data);

  factory Variables$Query$Forums.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
              (e) => e == null ? null : fromJson$Enum$ThreadSort((e as String)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('subscribed')) {
      final l$subscribed = data['subscribed'];
      result$data['subscribed'] = (l$subscribed as bool?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    return Variables$Query$Forums._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  List<Enum$ThreadSort?>? get sort =>
      (_$data['sort'] as List<Enum$ThreadSort?>?);

  int? get id => (_$data['id'] as int?);

  bool? get subscribed => (_$data['subscribed'] as bool?);

  String? get search => (_$data['search'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJson$Enum$ThreadSort(e))
          .toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('subscribed')) {
      final l$subscribed = subscribed;
      result$data['subscribed'] = l$subscribed;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Forums<Variables$Query$Forums> get copyWith =>
      CopyWith$Variables$Query$Forums(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Forums || runtimeType != other.runtimeType) {
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
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$subscribed = subscribed;
    final lOther$subscribed = other.subscribed;
    if (_$data.containsKey('subscribed') !=
        other._$data.containsKey('subscribed')) {
      return false;
    }
    if (l$subscribed != lOther$subscribed) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$sort = sort;
    final l$id = id;
    final l$subscribed = subscribed;
    final l$search = search;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('subscribed') ? l$subscribed : const {},
      _$data.containsKey('search') ? l$search : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Forums<TRes> {
  factory CopyWith$Variables$Query$Forums(
    Variables$Query$Forums instance,
    TRes Function(Variables$Query$Forums) then,
  ) = _CopyWithImpl$Variables$Query$Forums;

  factory CopyWith$Variables$Query$Forums.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Forums;

  TRes call({
    int? page,
    List<Enum$ThreadSort?>? sort,
    int? id,
    bool? subscribed,
    String? search,
  });
}

class _CopyWithImpl$Variables$Query$Forums<TRes>
    implements CopyWith$Variables$Query$Forums<TRes> {
  _CopyWithImpl$Variables$Query$Forums(
    this._instance,
    this._then,
  );

  final Variables$Query$Forums _instance;

  final TRes Function(Variables$Query$Forums) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? sort = _undefined,
    Object? id = _undefined,
    Object? subscribed = _undefined,
    Object? search = _undefined,
  }) =>
      _then(Variables$Query$Forums._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (sort != _undefined) 'sort': (sort as List<Enum$ThreadSort?>?),
        if (id != _undefined) 'id': (id as int?),
        if (subscribed != _undefined) 'subscribed': (subscribed as bool?),
        if (search != _undefined) 'search': (search as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Forums<TRes>
    implements CopyWith$Variables$Query$Forums<TRes> {
  _CopyWithStubImpl$Variables$Query$Forums(this._res);

  TRes _res;

  call({
    int? page,
    List<Enum$ThreadSort?>? sort,
    int? id,
    bool? subscribed,
    String? search,
  }) =>
      _res;
}

class Query$Forums {
  Query$Forums({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$Forums.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$Forums(
      Page: l$Page == null
          ? null
          : Query$Forums$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Forums$Page? Page;

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
    if (other is! Query$Forums || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Forums on Query$Forums {
  CopyWith$Query$Forums<Query$Forums> get copyWith => CopyWith$Query$Forums(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Forums<TRes> {
  factory CopyWith$Query$Forums(
    Query$Forums instance,
    TRes Function(Query$Forums) then,
  ) = _CopyWithImpl$Query$Forums;

  factory CopyWith$Query$Forums.stub(TRes res) = _CopyWithStubImpl$Query$Forums;

  TRes call({
    Query$Forums$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$Forums$Page<TRes> get Page;
}

class _CopyWithImpl$Query$Forums<TRes> implements CopyWith$Query$Forums<TRes> {
  _CopyWithImpl$Query$Forums(
    this._instance,
    this._then,
  );

  final Query$Forums _instance;

  final TRes Function(Query$Forums) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Forums(
        Page:
            Page == _undefined ? _instance.Page : (Page as Query$Forums$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Forums$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$Forums$Page.stub(_then(_instance))
        : CopyWith$Query$Forums$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$Forums<TRes>
    implements CopyWith$Query$Forums<TRes> {
  _CopyWithStubImpl$Query$Forums(this._res);

  TRes _res;

  call({
    Query$Forums$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Forums$Page<TRes> get Page =>
      CopyWith$Query$Forums$Page.stub(_res);
}

const documentNodeQueryForums = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Forums'),
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
        variable: VariableNode(name: NameNode(value: 'sort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ThreadSort'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'subscribed')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
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
          )
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
            name: NameNode(value: 'threads'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'categoryId'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ArgumentNode(
                name: NameNode(value: 'subscribed'),
                value: VariableNode(name: NameNode(value: 'subscribed')),
              ),
              ArgumentNode(
                name: NameNode(value: 'search'),
                value: VariableNode(name: NameNode(value: 'search')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ThreadFragment'),
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
  fragmentDefinitionThreadFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionUserFragment,
]);

class Query$Forums$Page {
  Query$Forums$Page({
    this.pageInfo,
    this.threads,
    this.$__typename = 'Page',
  });

  factory Query$Forums$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$threads = json['threads'];
    final l$$__typename = json['__typename'];
    return Query$Forums$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      threads: (l$threads as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ThreadFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Fragment$ThreadFragment?>? threads;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$threads = threads;
    _resultData['threads'] = l$threads?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$threads = threads;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$threads == null ? null : Object.hashAll(l$threads.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Forums$Page || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$threads = threads;
    final lOther$threads = other.threads;
    if (l$threads != null && lOther$threads != null) {
      if (l$threads.length != lOther$threads.length) {
        return false;
      }
      for (int i = 0; i < l$threads.length; i++) {
        final l$threads$entry = l$threads[i];
        final lOther$threads$entry = lOther$threads[i];
        if (l$threads$entry != lOther$threads$entry) {
          return false;
        }
      }
    } else if (l$threads != lOther$threads) {
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

extension UtilityExtension$Query$Forums$Page on Query$Forums$Page {
  CopyWith$Query$Forums$Page<Query$Forums$Page> get copyWith =>
      CopyWith$Query$Forums$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Forums$Page<TRes> {
  factory CopyWith$Query$Forums$Page(
    Query$Forums$Page instance,
    TRes Function(Query$Forums$Page) then,
  ) = _CopyWithImpl$Query$Forums$Page;

  factory CopyWith$Query$Forums$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$Forums$Page;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$ThreadFragment?>? threads,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes threads(
      Iterable<Fragment$ThreadFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$ThreadFragment<Fragment$ThreadFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Forums$Page<TRes>
    implements CopyWith$Query$Forums$Page<TRes> {
  _CopyWithImpl$Query$Forums$Page(
    this._instance,
    this._then,
  );

  final Query$Forums$Page _instance;

  final TRes Function(Query$Forums$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? threads = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Forums$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        threads: threads == _undefined
            ? _instance.threads
            : (threads as List<Fragment$ThreadFragment?>?),
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

  TRes threads(
          Iterable<Fragment$ThreadFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$ThreadFragment<
                          Fragment$ThreadFragment>?>?)
              _fn) =>
      call(
          threads: _fn(_instance.threads?.map((e) => e == null
              ? null
              : CopyWith$Fragment$ThreadFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Forums$Page<TRes>
    implements CopyWith$Query$Forums$Page<TRes> {
  _CopyWithStubImpl$Query$Forums$Page(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$ThreadFragment?>? threads,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  threads(_fn) => _res;
}
