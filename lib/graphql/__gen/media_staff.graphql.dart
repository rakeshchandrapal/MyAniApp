import 'fragments/page_info.graphql.dart';
import 'fragments/staff.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$MediaStaff {
  factory Variables$Query$MediaStaff({
    int? mediaId,
    int? page,
  }) =>
      Variables$Query$MediaStaff._({
        if (mediaId != null) r'mediaId': mediaId,
        if (page != null) r'page': page,
      });

  Variables$Query$MediaStaff._(this._$data);

  factory Variables$Query$MediaStaff.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$MediaStaff._(result$data);
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

  CopyWith$Variables$Query$MediaStaff<Variables$Query$MediaStaff>
      get copyWith => CopyWith$Variables$Query$MediaStaff(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$MediaStaff ||
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

abstract class CopyWith$Variables$Query$MediaStaff<TRes> {
  factory CopyWith$Variables$Query$MediaStaff(
    Variables$Query$MediaStaff instance,
    TRes Function(Variables$Query$MediaStaff) then,
  ) = _CopyWithImpl$Variables$Query$MediaStaff;

  factory CopyWith$Variables$Query$MediaStaff.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MediaStaff;

  TRes call({
    int? mediaId,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$MediaStaff<TRes>
    implements CopyWith$Variables$Query$MediaStaff<TRes> {
  _CopyWithImpl$Variables$Query$MediaStaff(
    this._instance,
    this._then,
  );

  final Variables$Query$MediaStaff _instance;

  final TRes Function(Variables$Query$MediaStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$MediaStaff._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$MediaStaff<TRes>
    implements CopyWith$Variables$Query$MediaStaff<TRes> {
  _CopyWithStubImpl$Variables$Query$MediaStaff(this._res);

  TRes _res;

  call({
    int? mediaId,
    int? page,
  }) =>
      _res;
}

class Query$MediaStaff {
  Query$MediaStaff({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$MediaStaff.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$MediaStaff(
      Media: l$Media == null
          ? null
          : Query$MediaStaff$Media.fromJson((l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MediaStaff$Media? Media;

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
    if (other is! Query$MediaStaff || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$MediaStaff on Query$MediaStaff {
  CopyWith$Query$MediaStaff<Query$MediaStaff> get copyWith =>
      CopyWith$Query$MediaStaff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaStaff<TRes> {
  factory CopyWith$Query$MediaStaff(
    Query$MediaStaff instance,
    TRes Function(Query$MediaStaff) then,
  ) = _CopyWithImpl$Query$MediaStaff;

  factory CopyWith$Query$MediaStaff.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaStaff;

  TRes call({
    Query$MediaStaff$Media? Media,
    String? $__typename,
  });
  CopyWith$Query$MediaStaff$Media<TRes> get Media;
}

class _CopyWithImpl$Query$MediaStaff<TRes>
    implements CopyWith$Query$MediaStaff<TRes> {
  _CopyWithImpl$Query$MediaStaff(
    this._instance,
    this._then,
  );

  final Query$MediaStaff _instance;

  final TRes Function(Query$MediaStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaStaff(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Query$MediaStaff$Media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaStaff$Media<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Query$MediaStaff$Media.stub(_then(_instance))
        : CopyWith$Query$MediaStaff$Media(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$MediaStaff<TRes>
    implements CopyWith$Query$MediaStaff<TRes> {
  _CopyWithStubImpl$Query$MediaStaff(this._res);

  TRes _res;

  call({
    Query$MediaStaff$Media? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaStaff$Media<TRes> get Media =>
      CopyWith$Query$MediaStaff$Media.stub(_res);
}

const documentNodeQueryMediaStaff = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaStaff'),
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
            name: NameNode(value: 'staff'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
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

class Query$MediaStaff$Media {
  Query$MediaStaff$Media({
    required this.id,
    this.staff,
    this.$__typename = 'Media',
  });

  factory Query$MediaStaff$Media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$staff = json['staff'];
    final l$$__typename = json['__typename'];
    return Query$MediaStaff$Media(
      id: (l$id as int),
      staff: l$staff == null
          ? null
          : Query$MediaStaff$Media$staff.fromJson(
              (l$staff as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$MediaStaff$Media$staff? staff;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$staff = staff;
    _resultData['staff'] = l$staff?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$staff = staff;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$staff,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaStaff$Media || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$staff = staff;
    final lOther$staff = other.staff;
    if (l$staff != lOther$staff) {
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

extension UtilityExtension$Query$MediaStaff$Media on Query$MediaStaff$Media {
  CopyWith$Query$MediaStaff$Media<Query$MediaStaff$Media> get copyWith =>
      CopyWith$Query$MediaStaff$Media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaStaff$Media<TRes> {
  factory CopyWith$Query$MediaStaff$Media(
    Query$MediaStaff$Media instance,
    TRes Function(Query$MediaStaff$Media) then,
  ) = _CopyWithImpl$Query$MediaStaff$Media;

  factory CopyWith$Query$MediaStaff$Media.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaStaff$Media;

  TRes call({
    int? id,
    Query$MediaStaff$Media$staff? staff,
    String? $__typename,
  });
  CopyWith$Query$MediaStaff$Media$staff<TRes> get staff;
}

class _CopyWithImpl$Query$MediaStaff$Media<TRes>
    implements CopyWith$Query$MediaStaff$Media<TRes> {
  _CopyWithImpl$Query$MediaStaff$Media(
    this._instance,
    this._then,
  );

  final Query$MediaStaff$Media _instance;

  final TRes Function(Query$MediaStaff$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? staff = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaStaff$Media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        staff: staff == _undefined
            ? _instance.staff
            : (staff as Query$MediaStaff$Media$staff?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaStaff$Media$staff<TRes> get staff {
    final local$staff = _instance.staff;
    return local$staff == null
        ? CopyWith$Query$MediaStaff$Media$staff.stub(_then(_instance))
        : CopyWith$Query$MediaStaff$Media$staff(
            local$staff, (e) => call(staff: e));
  }
}

class _CopyWithStubImpl$Query$MediaStaff$Media<TRes>
    implements CopyWith$Query$MediaStaff$Media<TRes> {
  _CopyWithStubImpl$Query$MediaStaff$Media(this._res);

  TRes _res;

  call({
    int? id,
    Query$MediaStaff$Media$staff? staff,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaStaff$Media$staff<TRes> get staff =>
      CopyWith$Query$MediaStaff$Media$staff.stub(_res);
}

class Query$MediaStaff$Media$staff {
  Query$MediaStaff$Media$staff({
    this.pageInfo,
    this.edges,
    this.$__typename = 'StaffConnection',
  });

  factory Query$MediaStaff$Media$staff.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$MediaStaff$Media$staff(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$MediaStaff$Media$staff$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$MediaStaff$Media$staff$edges?>? edges;

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
    if (other is! Query$MediaStaff$Media$staff ||
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

extension UtilityExtension$Query$MediaStaff$Media$staff
    on Query$MediaStaff$Media$staff {
  CopyWith$Query$MediaStaff$Media$staff<Query$MediaStaff$Media$staff>
      get copyWith => CopyWith$Query$MediaStaff$Media$staff(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaStaff$Media$staff<TRes> {
  factory CopyWith$Query$MediaStaff$Media$staff(
    Query$MediaStaff$Media$staff instance,
    TRes Function(Query$MediaStaff$Media$staff) then,
  ) = _CopyWithImpl$Query$MediaStaff$Media$staff;

  factory CopyWith$Query$MediaStaff$Media$staff.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaStaff$Media$staff;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$MediaStaff$Media$staff$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$MediaStaff$Media$staff$edges?>? Function(
              Iterable<
                  CopyWith$Query$MediaStaff$Media$staff$edges<
                      Query$MediaStaff$Media$staff$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$MediaStaff$Media$staff<TRes>
    implements CopyWith$Query$MediaStaff$Media$staff<TRes> {
  _CopyWithImpl$Query$MediaStaff$Media$staff(
    this._instance,
    this._then,
  );

  final Query$MediaStaff$Media$staff _instance;

  final TRes Function(Query$MediaStaff$Media$staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaStaff$Media$staff(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$MediaStaff$Media$staff$edges?>?),
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
          Iterable<Query$MediaStaff$Media$staff$edges?>? Function(
                  Iterable<
                      CopyWith$Query$MediaStaff$Media$staff$edges<
                          Query$MediaStaff$Media$staff$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$MediaStaff$Media$staff$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$MediaStaff$Media$staff<TRes>
    implements CopyWith$Query$MediaStaff$Media$staff<TRes> {
  _CopyWithStubImpl$Query$MediaStaff$Media$staff(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$MediaStaff$Media$staff$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  edges(_fn) => _res;
}

class Query$MediaStaff$Media$staff$edges {
  Query$MediaStaff$Media$staff$edges({
    this.role,
    this.node,
    this.$__typename = 'StaffEdge',
  });

  factory Query$MediaStaff$Media$staff$edges.fromJson(
      Map<String, dynamic> json) {
    final l$role = json['role'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$MediaStaff$Media$staff$edges(
      role: (l$role as String?),
      node: l$node == null
          ? null
          : Fragment$StaffFragment.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? role;

  final Fragment$StaffFragment? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$role = role;
    _resultData['role'] = l$role;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$role = role;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$role,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaStaff$Media$staff$edges ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MediaStaff$Media$staff$edges
    on Query$MediaStaff$Media$staff$edges {
  CopyWith$Query$MediaStaff$Media$staff$edges<
          Query$MediaStaff$Media$staff$edges>
      get copyWith => CopyWith$Query$MediaStaff$Media$staff$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaStaff$Media$staff$edges<TRes> {
  factory CopyWith$Query$MediaStaff$Media$staff$edges(
    Query$MediaStaff$Media$staff$edges instance,
    TRes Function(Query$MediaStaff$Media$staff$edges) then,
  ) = _CopyWithImpl$Query$MediaStaff$Media$staff$edges;

  factory CopyWith$Query$MediaStaff$Media$staff$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaStaff$Media$staff$edges;

  TRes call({
    String? role,
    Fragment$StaffFragment? node,
    String? $__typename,
  });
  CopyWith$Fragment$StaffFragment<TRes> get node;
}

class _CopyWithImpl$Query$MediaStaff$Media$staff$edges<TRes>
    implements CopyWith$Query$MediaStaff$Media$staff$edges<TRes> {
  _CopyWithImpl$Query$MediaStaff$Media$staff$edges(
    this._instance,
    this._then,
  );

  final Query$MediaStaff$Media$staff$edges _instance;

  final TRes Function(Query$MediaStaff$Media$staff$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? role = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaStaff$Media$staff$edges(
        role: role == _undefined ? _instance.role : (role as String?),
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$StaffFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$StaffFragment<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$StaffFragment.stub(_then(_instance))
        : CopyWith$Fragment$StaffFragment(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$MediaStaff$Media$staff$edges<TRes>
    implements CopyWith$Query$MediaStaff$Media$staff$edges<TRes> {
  _CopyWithStubImpl$Query$MediaStaff$Media$staff$edges(this._res);

  TRes _res;

  call({
    String? role,
    Fragment$StaffFragment? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$StaffFragment<TRes> get node =>
      CopyWith$Fragment$StaffFragment.stub(_res);
}
