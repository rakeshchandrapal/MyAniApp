import '../../graphql/fragments/media.graphql.dart';
import '../../graphql/fragments/page_info.graphql.dart';
import '../../graphql/fragments/studio.graphql.dart';
import '../../graphql/schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$Studio {
  factory Variables$Query$Studio({
    required int id,
    int? page,
    List<Enum$MediaSort?>? sort,
    bool? onList,
  }) =>
      Variables$Query$Studio._({
        r'id': id,
        if (page != null) r'page': page,
        if (sort != null) r'sort': sort,
        if (onList != null) r'onList': onList,
      });

  Variables$Query$Studio._(this._$data);

  factory Variables$Query$Studio.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
              (e) => e == null ? null : fromJson$Enum$MediaSort((e as String)))
          .toList();
    }
    if (data.containsKey('onList')) {
      final l$onList = data['onList'];
      result$data['onList'] = (l$onList as bool?);
    }
    return Variables$Query$Studio._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  int? get page => (_$data['page'] as int?);

  List<Enum$MediaSort?>? get sort => (_$data['sort'] as List<Enum$MediaSort?>?);

  bool? get onList => (_$data['onList'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJson$Enum$MediaSort(e))
          .toList();
    }
    if (_$data.containsKey('onList')) {
      final l$onList = onList;
      result$data['onList'] = l$onList;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Studio<Variables$Query$Studio> get copyWith =>
      CopyWith$Variables$Query$Studio(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Studio ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$onList = onList;
    final lOther$onList = other.onList;
    if (_$data.containsKey('onList') != other._$data.containsKey('onList')) {
      return false;
    }
    if (l$onList != lOther$onList) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$page = page;
    final l$sort = sort;
    final l$onList = onList;
    return Object.hashAll([
      l$id,
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('onList') ? l$onList : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Studio<TRes> {
  factory CopyWith$Variables$Query$Studio(
    Variables$Query$Studio instance,
    TRes Function(Variables$Query$Studio) then,
  ) = _CopyWithImpl$Variables$Query$Studio;

  factory CopyWith$Variables$Query$Studio.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Studio;

  TRes call({
    int? id,
    int? page,
    List<Enum$MediaSort?>? sort,
    bool? onList,
  });
}

class _CopyWithImpl$Variables$Query$Studio<TRes>
    implements CopyWith$Variables$Query$Studio<TRes> {
  _CopyWithImpl$Variables$Query$Studio(
    this._instance,
    this._then,
  );

  final Variables$Query$Studio _instance;

  final TRes Function(Variables$Query$Studio) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? page = _undefined,
    Object? sort = _undefined,
    Object? onList = _undefined,
  }) =>
      _then(Variables$Query$Studio._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (page != _undefined) 'page': (page as int?),
        if (sort != _undefined) 'sort': (sort as List<Enum$MediaSort?>?),
        if (onList != _undefined) 'onList': (onList as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Studio<TRes>
    implements CopyWith$Variables$Query$Studio<TRes> {
  _CopyWithStubImpl$Variables$Query$Studio(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    int? page,
    List<Enum$MediaSort?>? sort,
    bool? onList,
  }) =>
      _res;
}

class Query$Studio {
  Query$Studio({
    this.Studio,
    this.$__typename = 'Query',
  });

  factory Query$Studio.fromJson(Map<String, dynamic> json) {
    final l$Studio = json['Studio'];
    final l$$__typename = json['__typename'];
    return Query$Studio(
      Studio: l$Studio == null
          ? null
          : Query$Studio$Studio.fromJson((l$Studio as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Studio$Studio? Studio;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$Studio = Studio;
    resultData['Studio'] = l$Studio?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$Studio = Studio;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Studio,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Studio || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Studio = Studio;
    final lOther$Studio = other.Studio;
    if (l$Studio != lOther$Studio) {
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

extension UtilityExtension$Query$Studio on Query$Studio {
  CopyWith$Query$Studio<Query$Studio> get copyWith => CopyWith$Query$Studio(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Studio<TRes> {
  factory CopyWith$Query$Studio(
    Query$Studio instance,
    TRes Function(Query$Studio) then,
  ) = _CopyWithImpl$Query$Studio;

  factory CopyWith$Query$Studio.stub(TRes res) = _CopyWithStubImpl$Query$Studio;

  TRes call({
    Query$Studio$Studio? Studio,
    String? $__typename,
  });
  CopyWith$Query$Studio$Studio<TRes> get Studio;
}

class _CopyWithImpl$Query$Studio<TRes> implements CopyWith$Query$Studio<TRes> {
  _CopyWithImpl$Query$Studio(
    this._instance,
    this._then,
  );

  final Query$Studio _instance;

  final TRes Function(Query$Studio) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? Studio = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Studio(
        Studio: Studio == _undefined
            ? _instance.Studio
            : (Studio as Query$Studio$Studio?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$Studio$Studio<TRes> get Studio {
    final local$Studio = _instance.Studio;
    return local$Studio == null
        ? CopyWith$Query$Studio$Studio.stub(_then(_instance))
        : CopyWith$Query$Studio$Studio(local$Studio, (e) => call(Studio: e));
  }
}

class _CopyWithStubImpl$Query$Studio<TRes>
    implements CopyWith$Query$Studio<TRes> {
  _CopyWithStubImpl$Query$Studio(this._res);

  final TRes _res;

  @override
  call({
    Query$Studio$Studio? Studio,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$Studio$Studio<TRes> get Studio =>
      CopyWith$Query$Studio$Studio.stub(_res);
}

const documentNodeQueryStudio = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Studio'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
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
        variable: VariableNode(name: NameNode(value: 'sort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'MediaSort'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'onList')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Studio'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'StudioFragment'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'onList'),
                value: VariableNode(name: NameNode(value: 'onList')),
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
  fragmentDefinitionStudioFragment,
  fragmentDefinitionPageInfo,
  fragmentDefinitionMediaFragment,
]);

class Query$Studio$Studio implements Fragment$StudioFragment {
  Query$Studio$Studio({
    required this.id,
    required this.name,
    this.$__typename = 'Studio',
    this.media,
  });

  factory Query$Studio$Studio.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    final l$media = json['media'];
    return Query$Studio$Studio(
      id: (l$id as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
      media: l$media == null
          ? null
          : Query$Studio$Studio$media.fromJson(
              (l$media as Map<String, dynamic>)),
    );
  }

  @override
  final int id;

  @override
  final String name;

  @override
  final String $__typename;

  final Query$Studio$Studio$media? media;

  @override
  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    final l$media = media;
    resultData['media'] = l$media?.toJson();
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    final l$media = media;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
      l$media,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Studio$Studio || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Studio$Studio on Query$Studio$Studio {
  CopyWith$Query$Studio$Studio<Query$Studio$Studio> get copyWith =>
      CopyWith$Query$Studio$Studio(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Studio$Studio<TRes> {
  factory CopyWith$Query$Studio$Studio(
    Query$Studio$Studio instance,
    TRes Function(Query$Studio$Studio) then,
  ) = _CopyWithImpl$Query$Studio$Studio;

  factory CopyWith$Query$Studio$Studio.stub(TRes res) =
      _CopyWithStubImpl$Query$Studio$Studio;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
    Query$Studio$Studio$media? media,
  });
  CopyWith$Query$Studio$Studio$media<TRes> get media;
}

class _CopyWithImpl$Query$Studio$Studio<TRes>
    implements CopyWith$Query$Studio$Studio<TRes> {
  _CopyWithImpl$Query$Studio$Studio(
    this._instance,
    this._then,
  );

  final Query$Studio$Studio _instance;

  final TRes Function(Query$Studio$Studio) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
    Object? media = _undefined,
  }) =>
      _then(Query$Studio$Studio(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        media: media == _undefined
            ? _instance.media
            : (media as Query$Studio$Studio$media?),
      ));

  @override
  CopyWith$Query$Studio$Studio$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$Studio$Studio$media.stub(_then(_instance))
        : CopyWith$Query$Studio$Studio$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$Studio$Studio<TRes>
    implements CopyWith$Query$Studio$Studio<TRes> {
  _CopyWithStubImpl$Query$Studio$Studio(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    String? name,
    String? $__typename,
    Query$Studio$Studio$media? media,
  }) =>
      _res;

  @override
  CopyWith$Query$Studio$Studio$media<TRes> get media =>
      CopyWith$Query$Studio$Studio$media.stub(_res);
}

class Query$Studio$Studio$media {
  Query$Studio$Studio$media({
    this.pageInfo,
    this.nodes,
    this.$__typename = 'MediaConnection',
  });

  factory Query$Studio$Studio$media.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$Studio$Studio$media(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Fragment$MediaFragment?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$nodes = nodes;
    resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Studio$Studio$media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$Studio$Studio$media
    on Query$Studio$Studio$media {
  CopyWith$Query$Studio$Studio$media<Query$Studio$Studio$media> get copyWith =>
      CopyWith$Query$Studio$Studio$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Studio$Studio$media<TRes> {
  factory CopyWith$Query$Studio$Studio$media(
    Query$Studio$Studio$media instance,
    TRes Function(Query$Studio$Studio$media) then,
  ) = _CopyWithImpl$Query$Studio$Studio$media;

  factory CopyWith$Query$Studio$Studio$media.stub(TRes res) =
      _CopyWithStubImpl$Query$Studio$Studio$media;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$MediaFragment?>? nodes,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Fragment$MediaFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>?>?)
          fn);
}

class _CopyWithImpl$Query$Studio$Studio$media<TRes>
    implements CopyWith$Query$Studio$Studio$media<TRes> {
  _CopyWithImpl$Query$Studio$Studio$media(
    this._instance,
    this._then,
  );

  final Query$Studio$Studio$media _instance;

  final TRes Function(Query$Studio$Studio$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Studio$Studio$media(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$MediaFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Fragment$PageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Fragment$PageInfo.stub(_then(_instance))
        : CopyWith$Fragment$PageInfo(local$pageInfo, (e) => call(pageInfo: e));
  }

  @override
  TRes nodes(
          Iterable<Fragment$MediaFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFragment<
                          Fragment$MediaFragment>?>?)
              fn) =>
      call(
          nodes: fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Studio$Studio$media<TRes>
    implements CopyWith$Query$Studio$Studio$media<TRes> {
  _CopyWithStubImpl$Query$Studio$Studio$media(this._res);

  final TRes _res;

  @override
  call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$MediaFragment?>? nodes,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  @override
  nodes(fn) => _res;
}
