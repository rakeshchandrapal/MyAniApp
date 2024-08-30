import '../../graphql/fragments/media.graphql.dart';
import '../../graphql/fragments/page_info.graphql.dart';
import '../../graphql/fragments/thread.graphql.dart';
import '../../graphql/fragments/user.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$MediaThreads {
  factory Variables$Query$MediaThreads({
    int? mediaId,
    int? page,
    int? perPage,
  }) =>
      Variables$Query$MediaThreads._({
        if (mediaId != null) r'mediaId': mediaId,
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
      });

  Variables$Query$MediaThreads._(this._$data);

  factory Variables$Query$MediaThreads.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    return Variables$Query$MediaThreads._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get mediaId => (_$data['mediaId'] as int?);

  int? get page => (_$data['page'] as int?);

  int? get perPage => (_$data['perPage'] as int?);

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
    if (_$data.containsKey('perPage')) {
      final l$perPage = perPage;
      result$data['perPage'] = l$perPage;
    }
    return result$data;
  }

  CopyWith$Variables$Query$MediaThreads<Variables$Query$MediaThreads>
      get copyWith => CopyWith$Variables$Query$MediaThreads(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$MediaThreads) ||
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
    final l$mediaId = mediaId;
    final l$page = page;
    final l$perPage = perPage;
    return Object.hashAll([
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$MediaThreads<TRes> {
  factory CopyWith$Variables$Query$MediaThreads(
    Variables$Query$MediaThreads instance,
    TRes Function(Variables$Query$MediaThreads) then,
  ) = _CopyWithImpl$Variables$Query$MediaThreads;

  factory CopyWith$Variables$Query$MediaThreads.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MediaThreads;

  TRes call({
    int? mediaId,
    int? page,
    int? perPage,
  });
}

class _CopyWithImpl$Variables$Query$MediaThreads<TRes>
    implements CopyWith$Variables$Query$MediaThreads<TRes> {
  _CopyWithImpl$Variables$Query$MediaThreads(
    this._instance,
    this._then,
  );

  final Variables$Query$MediaThreads _instance;

  final TRes Function(Variables$Query$MediaThreads) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? page = _undefined,
    Object? perPage = _undefined,
  }) =>
      _then(Variables$Query$MediaThreads._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$MediaThreads<TRes>
    implements CopyWith$Variables$Query$MediaThreads<TRes> {
  _CopyWithStubImpl$Variables$Query$MediaThreads(this._res);

  TRes _res;

  call({
    int? mediaId,
    int? page,
    int? perPage,
  }) =>
      _res;
}

class Query$MediaThreads {
  Query$MediaThreads({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$MediaThreads.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$MediaThreads(
      Page: l$Page == null
          ? null
          : Query$MediaThreads$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MediaThreads$Page? Page;

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
    if (!(other is Query$MediaThreads) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$MediaThreads on Query$MediaThreads {
  CopyWith$Query$MediaThreads<Query$MediaThreads> get copyWith =>
      CopyWith$Query$MediaThreads(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaThreads<TRes> {
  factory CopyWith$Query$MediaThreads(
    Query$MediaThreads instance,
    TRes Function(Query$MediaThreads) then,
  ) = _CopyWithImpl$Query$MediaThreads;

  factory CopyWith$Query$MediaThreads.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaThreads;

  TRes call({
    Query$MediaThreads$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$MediaThreads$Page<TRes> get Page;
}

class _CopyWithImpl$Query$MediaThreads<TRes>
    implements CopyWith$Query$MediaThreads<TRes> {
  _CopyWithImpl$Query$MediaThreads(
    this._instance,
    this._then,
  );

  final Query$MediaThreads _instance;

  final TRes Function(Query$MediaThreads) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaThreads(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$MediaThreads$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaThreads$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$MediaThreads$Page.stub(_then(_instance))
        : CopyWith$Query$MediaThreads$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$MediaThreads<TRes>
    implements CopyWith$Query$MediaThreads<TRes> {
  _CopyWithStubImpl$Query$MediaThreads(this._res);

  TRes _res;

  call({
    Query$MediaThreads$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaThreads$Page<TRes> get Page =>
      CopyWith$Query$MediaThreads$Page.stub(_res);
}

const documentNodeQueryMediaThreads = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaThreads'),
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
                name: NameNode(value: 'mediaCategoryId'),
                value: VariableNode(name: NameNode(value: 'mediaId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'ID_DESC')),
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

class Query$MediaThreads$Page {
  Query$MediaThreads$Page({
    this.pageInfo,
    this.threads,
    this.$__typename = 'Page',
  });

  factory Query$MediaThreads$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$threads = json['threads'];
    final l$$__typename = json['__typename'];
    return Query$MediaThreads$Page(
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
    if (!(other is Query$MediaThreads$Page) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$MediaThreads$Page on Query$MediaThreads$Page {
  CopyWith$Query$MediaThreads$Page<Query$MediaThreads$Page> get copyWith =>
      CopyWith$Query$MediaThreads$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaThreads$Page<TRes> {
  factory CopyWith$Query$MediaThreads$Page(
    Query$MediaThreads$Page instance,
    TRes Function(Query$MediaThreads$Page) then,
  ) = _CopyWithImpl$Query$MediaThreads$Page;

  factory CopyWith$Query$MediaThreads$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaThreads$Page;

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

class _CopyWithImpl$Query$MediaThreads$Page<TRes>
    implements CopyWith$Query$MediaThreads$Page<TRes> {
  _CopyWithImpl$Query$MediaThreads$Page(
    this._instance,
    this._then,
  );

  final Query$MediaThreads$Page _instance;

  final TRes Function(Query$MediaThreads$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? threads = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaThreads$Page(
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

class _CopyWithStubImpl$Query$MediaThreads$Page<TRes>
    implements CopyWith$Query$MediaThreads$Page<TRes> {
  _CopyWithStubImpl$Query$MediaThreads$Page(this._res);

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
