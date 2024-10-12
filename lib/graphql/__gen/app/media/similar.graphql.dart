import '../../graphql/fragments/media.graphql.dart';
import '../../graphql/fragments/page_info.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$MediaSimilar {
  factory Variables$Query$MediaSimilar({
    int? mediaId,
    int? page,
  }) =>
      Variables$Query$MediaSimilar._({
        if (mediaId != null) r'mediaId': mediaId,
        if (page != null) r'page': page,
      });

  Variables$Query$MediaSimilar._(this._$data);

  factory Variables$Query$MediaSimilar.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$MediaSimilar._(result$data);
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

  CopyWith$Variables$Query$MediaSimilar<Variables$Query$MediaSimilar>
      get copyWith => CopyWith$Variables$Query$MediaSimilar(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$MediaSimilar ||
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

abstract class CopyWith$Variables$Query$MediaSimilar<TRes> {
  factory CopyWith$Variables$Query$MediaSimilar(
    Variables$Query$MediaSimilar instance,
    TRes Function(Variables$Query$MediaSimilar) then,
  ) = _CopyWithImpl$Variables$Query$MediaSimilar;

  factory CopyWith$Variables$Query$MediaSimilar.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MediaSimilar;

  TRes call({
    int? mediaId,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$MediaSimilar<TRes>
    implements CopyWith$Variables$Query$MediaSimilar<TRes> {
  _CopyWithImpl$Variables$Query$MediaSimilar(
    this._instance,
    this._then,
  );

  final Variables$Query$MediaSimilar _instance;

  final TRes Function(Variables$Query$MediaSimilar) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? mediaId = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$MediaSimilar._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$MediaSimilar<TRes>
    implements CopyWith$Variables$Query$MediaSimilar<TRes> {
  _CopyWithStubImpl$Variables$Query$MediaSimilar(this._res);

  final TRes _res;

  @override
  call({
    int? mediaId,
    int? page,
  }) =>
      _res;
}

class Query$MediaSimilar {
  Query$MediaSimilar({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$MediaSimilar.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$MediaSimilar(
      Media: l$Media == null
          ? null
          : Query$MediaSimilar$Media.fromJson(
              (l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MediaSimilar$Media? Media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$Media = Media;
    resultData['Media'] = l$Media?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Query$MediaSimilar || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$MediaSimilar on Query$MediaSimilar {
  CopyWith$Query$MediaSimilar<Query$MediaSimilar> get copyWith =>
      CopyWith$Query$MediaSimilar(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaSimilar<TRes> {
  factory CopyWith$Query$MediaSimilar(
    Query$MediaSimilar instance,
    TRes Function(Query$MediaSimilar) then,
  ) = _CopyWithImpl$Query$MediaSimilar;

  factory CopyWith$Query$MediaSimilar.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaSimilar;

  TRes call({
    Query$MediaSimilar$Media? Media,
    String? $__typename,
  });
  CopyWith$Query$MediaSimilar$Media<TRes> get Media;
}

class _CopyWithImpl$Query$MediaSimilar<TRes>
    implements CopyWith$Query$MediaSimilar<TRes> {
  _CopyWithImpl$Query$MediaSimilar(
    this._instance,
    this._then,
  );

  final Query$MediaSimilar _instance;

  final TRes Function(Query$MediaSimilar) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaSimilar(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Query$MediaSimilar$Media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$MediaSimilar$Media<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Query$MediaSimilar$Media.stub(_then(_instance))
        : CopyWith$Query$MediaSimilar$Media(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$MediaSimilar<TRes>
    implements CopyWith$Query$MediaSimilar<TRes> {
  _CopyWithStubImpl$Query$MediaSimilar(this._res);

  final TRes _res;

  @override
  call({
    Query$MediaSimilar$Media? Media,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$MediaSimilar$Media<TRes> get Media =>
      CopyWith$Query$MediaSimilar$Media.stub(_res);
}

const documentNodeQueryMediaSimilar = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaSimilar'),
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
            name: NameNode(value: 'recommendations'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'RATING_DESC')),
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
                name: NameNode(value: 'nodes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'mediaRecommendation'),
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
  fragmentDefinitionMediaFragment,
]);

class Query$MediaSimilar$Media {
  Query$MediaSimilar$Media({
    required this.id,
    this.recommendations,
    this.$__typename = 'Media',
  });

  factory Query$MediaSimilar$Media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$recommendations = json['recommendations'];
    final l$$__typename = json['__typename'];
    return Query$MediaSimilar$Media(
      id: (l$id as int),
      recommendations: l$recommendations == null
          ? null
          : Query$MediaSimilar$Media$recommendations.fromJson(
              (l$recommendations as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$MediaSimilar$Media$recommendations? recommendations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$recommendations = recommendations;
    resultData['recommendations'] = l$recommendations?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$recommendations = recommendations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$recommendations,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaSimilar$Media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$recommendations = recommendations;
    final lOther$recommendations = other.recommendations;
    if (l$recommendations != lOther$recommendations) {
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

extension UtilityExtension$Query$MediaSimilar$Media
    on Query$MediaSimilar$Media {
  CopyWith$Query$MediaSimilar$Media<Query$MediaSimilar$Media> get copyWith =>
      CopyWith$Query$MediaSimilar$Media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaSimilar$Media<TRes> {
  factory CopyWith$Query$MediaSimilar$Media(
    Query$MediaSimilar$Media instance,
    TRes Function(Query$MediaSimilar$Media) then,
  ) = _CopyWithImpl$Query$MediaSimilar$Media;

  factory CopyWith$Query$MediaSimilar$Media.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaSimilar$Media;

  TRes call({
    int? id,
    Query$MediaSimilar$Media$recommendations? recommendations,
    String? $__typename,
  });
  CopyWith$Query$MediaSimilar$Media$recommendations<TRes> get recommendations;
}

class _CopyWithImpl$Query$MediaSimilar$Media<TRes>
    implements CopyWith$Query$MediaSimilar$Media<TRes> {
  _CopyWithImpl$Query$MediaSimilar$Media(
    this._instance,
    this._then,
  );

  final Query$MediaSimilar$Media _instance;

  final TRes Function(Query$MediaSimilar$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? recommendations = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaSimilar$Media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        recommendations: recommendations == _undefined
            ? _instance.recommendations
            : (recommendations as Query$MediaSimilar$Media$recommendations?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$MediaSimilar$Media$recommendations<TRes> get recommendations {
    final local$recommendations = _instance.recommendations;
    return local$recommendations == null
        ? CopyWith$Query$MediaSimilar$Media$recommendations.stub(
            _then(_instance))
        : CopyWith$Query$MediaSimilar$Media$recommendations(
            local$recommendations, (e) => call(recommendations: e));
  }
}

class _CopyWithStubImpl$Query$MediaSimilar$Media<TRes>
    implements CopyWith$Query$MediaSimilar$Media<TRes> {
  _CopyWithStubImpl$Query$MediaSimilar$Media(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    Query$MediaSimilar$Media$recommendations? recommendations,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$MediaSimilar$Media$recommendations<TRes> get recommendations =>
      CopyWith$Query$MediaSimilar$Media$recommendations.stub(_res);
}

class Query$MediaSimilar$Media$recommendations {
  Query$MediaSimilar$Media$recommendations({
    this.pageInfo,
    this.nodes,
    this.$__typename = 'RecommendationConnection',
  });

  factory Query$MediaSimilar$Media$recommendations.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$MediaSimilar$Media$recommendations(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$MediaSimilar$Media$recommendations$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$MediaSimilar$Media$recommendations$nodes?>? nodes;

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
    if (other is! Query$MediaSimilar$Media$recommendations ||
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

extension UtilityExtension$Query$MediaSimilar$Media$recommendations
    on Query$MediaSimilar$Media$recommendations {
  CopyWith$Query$MediaSimilar$Media$recommendations<
          Query$MediaSimilar$Media$recommendations>
      get copyWith => CopyWith$Query$MediaSimilar$Media$recommendations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaSimilar$Media$recommendations<TRes> {
  factory CopyWith$Query$MediaSimilar$Media$recommendations(
    Query$MediaSimilar$Media$recommendations instance,
    TRes Function(Query$MediaSimilar$Media$recommendations) then,
  ) = _CopyWithImpl$Query$MediaSimilar$Media$recommendations;

  factory CopyWith$Query$MediaSimilar$Media$recommendations.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaSimilar$Media$recommendations;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$MediaSimilar$Media$recommendations$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query$MediaSimilar$Media$recommendations$nodes?>? Function(
              Iterable<
                  CopyWith$Query$MediaSimilar$Media$recommendations$nodes<
                      Query$MediaSimilar$Media$recommendations$nodes>?>?)
          fn);
}

class _CopyWithImpl$Query$MediaSimilar$Media$recommendations<TRes>
    implements CopyWith$Query$MediaSimilar$Media$recommendations<TRes> {
  _CopyWithImpl$Query$MediaSimilar$Media$recommendations(
    this._instance,
    this._then,
  );

  final Query$MediaSimilar$Media$recommendations _instance;

  final TRes Function(Query$MediaSimilar$Media$recommendations) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaSimilar$Media$recommendations(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$MediaSimilar$Media$recommendations$nodes?>?),
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
          Iterable<Query$MediaSimilar$Media$recommendations$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$MediaSimilar$Media$recommendations$nodes<
                          Query$MediaSimilar$Media$recommendations$nodes>?>?)
              fn) =>
      call(
          nodes: fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$MediaSimilar$Media$recommendations$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$MediaSimilar$Media$recommendations<TRes>
    implements CopyWith$Query$MediaSimilar$Media$recommendations<TRes> {
  _CopyWithStubImpl$Query$MediaSimilar$Media$recommendations(this._res);

  final TRes _res;

  @override
  call({
    Fragment$PageInfo? pageInfo,
    List<Query$MediaSimilar$Media$recommendations$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  @override
  nodes(fn) => _res;
}

class Query$MediaSimilar$Media$recommendations$nodes {
  Query$MediaSimilar$Media$recommendations$nodes({
    this.mediaRecommendation,
    this.$__typename = 'Recommendation',
  });

  factory Query$MediaSimilar$Media$recommendations$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$mediaRecommendation = json['mediaRecommendation'];
    final l$$__typename = json['__typename'];
    return Query$MediaSimilar$Media$recommendations$nodes(
      mediaRecommendation: l$mediaRecommendation == null
          ? null
          : Fragment$MediaFragment.fromJson(
              (l$mediaRecommendation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MediaFragment? mediaRecommendation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$mediaRecommendation = mediaRecommendation;
    resultData['mediaRecommendation'] = l$mediaRecommendation?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$mediaRecommendation = mediaRecommendation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mediaRecommendation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaSimilar$Media$recommendations$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaRecommendation = mediaRecommendation;
    final lOther$mediaRecommendation = other.mediaRecommendation;
    if (l$mediaRecommendation != lOther$mediaRecommendation) {
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

extension UtilityExtension$Query$MediaSimilar$Media$recommendations$nodes
    on Query$MediaSimilar$Media$recommendations$nodes {
  CopyWith$Query$MediaSimilar$Media$recommendations$nodes<
          Query$MediaSimilar$Media$recommendations$nodes>
      get copyWith => CopyWith$Query$MediaSimilar$Media$recommendations$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaSimilar$Media$recommendations$nodes<TRes> {
  factory CopyWith$Query$MediaSimilar$Media$recommendations$nodes(
    Query$MediaSimilar$Media$recommendations$nodes instance,
    TRes Function(Query$MediaSimilar$Media$recommendations$nodes) then,
  ) = _CopyWithImpl$Query$MediaSimilar$Media$recommendations$nodes;

  factory CopyWith$Query$MediaSimilar$Media$recommendations$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MediaSimilar$Media$recommendations$nodes;

  TRes call({
    Fragment$MediaFragment? mediaRecommendation,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFragment<TRes> get mediaRecommendation;
}

class _CopyWithImpl$Query$MediaSimilar$Media$recommendations$nodes<TRes>
    implements CopyWith$Query$MediaSimilar$Media$recommendations$nodes<TRes> {
  _CopyWithImpl$Query$MediaSimilar$Media$recommendations$nodes(
    this._instance,
    this._then,
  );

  final Query$MediaSimilar$Media$recommendations$nodes _instance;

  final TRes Function(Query$MediaSimilar$Media$recommendations$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? mediaRecommendation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaSimilar$Media$recommendations$nodes(
        mediaRecommendation: mediaRecommendation == _undefined
            ? _instance.mediaRecommendation
            : (mediaRecommendation as Fragment$MediaFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Fragment$MediaFragment<TRes> get mediaRecommendation {
    final local$mediaRecommendation = _instance.mediaRecommendation;
    return local$mediaRecommendation == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(
            local$mediaRecommendation, (e) => call(mediaRecommendation: e));
  }
}

class _CopyWithStubImpl$Query$MediaSimilar$Media$recommendations$nodes<TRes>
    implements CopyWith$Query$MediaSimilar$Media$recommendations$nodes<TRes> {
  _CopyWithStubImpl$Query$MediaSimilar$Media$recommendations$nodes(this._res);

  final TRes _res;

  @override
  call({
    Fragment$MediaFragment? mediaRecommendation,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Fragment$MediaFragment<TRes> get mediaRecommendation =>
      CopyWith$Fragment$MediaFragment.stub(_res);
}
