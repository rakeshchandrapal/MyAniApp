import '../../graphql/fragments/media.graphql.dart';
import '../../graphql/fragments/page_info.graphql.dart';
import '../../graphql/schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$Recommendations {
  factory Variables$Query$Recommendations({
    int? page,
    int? perPage,
    List<Enum$RecommendationSort?>? sort,
    bool? onList,
  }) =>
      Variables$Query$Recommendations._({
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
        if (sort != null) r'sort': sort,
        if (onList != null) r'onList': onList,
      });

  Variables$Query$Recommendations._(this._$data);

  factory Variables$Query$Recommendations.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : fromJson$Enum$RecommendationSort((e as String)))
          .toList();
    }
    if (data.containsKey('onList')) {
      final l$onList = data['onList'];
      result$data['onList'] = (l$onList as bool?);
    }
    return Variables$Query$Recommendations._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int? get perPage => (_$data['perPage'] as int?);

  List<Enum$RecommendationSort?>? get sort =>
      (_$data['sort'] as List<Enum$RecommendationSort?>?);

  bool? get onList => (_$data['onList'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('perPage')) {
      final l$perPage = perPage;
      result$data['perPage'] = l$perPage;
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJson$Enum$RecommendationSort(e))
          .toList();
    }
    if (_$data.containsKey('onList')) {
      final l$onList = onList;
      result$data['onList'] = l$onList;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Recommendations<Variables$Query$Recommendations>
      get copyWith => CopyWith$Variables$Query$Recommendations(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Recommendations ||
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
    final l$perPage = perPage;
    final lOther$perPage = other.perPage;
    if (_$data.containsKey('perPage') != other._$data.containsKey('perPage')) {
      return false;
    }
    if (l$perPage != lOther$perPage) {
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
    final l$page = page;
    final l$perPage = perPage;
    final l$sort = sort;
    final l$onList = onList;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('onList') ? l$onList : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Recommendations<TRes> {
  factory CopyWith$Variables$Query$Recommendations(
    Variables$Query$Recommendations instance,
    TRes Function(Variables$Query$Recommendations) then,
  ) = _CopyWithImpl$Variables$Query$Recommendations;

  factory CopyWith$Variables$Query$Recommendations.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Recommendations;

  TRes call({
    int? page,
    int? perPage,
    List<Enum$RecommendationSort?>? sort,
    bool? onList,
  });
}

class _CopyWithImpl$Variables$Query$Recommendations<TRes>
    implements CopyWith$Variables$Query$Recommendations<TRes> {
  _CopyWithImpl$Variables$Query$Recommendations(
    this._instance,
    this._then,
  );

  final Variables$Query$Recommendations _instance;

  final TRes Function(Variables$Query$Recommendations) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? page = _undefined,
    Object? perPage = _undefined,
    Object? sort = _undefined,
    Object? onList = _undefined,
  }) =>
      _then(Variables$Query$Recommendations._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
        if (sort != _undefined)
          'sort': (sort as List<Enum$RecommendationSort?>?),
        if (onList != _undefined) 'onList': (onList as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Recommendations<TRes>
    implements CopyWith$Variables$Query$Recommendations<TRes> {
  _CopyWithStubImpl$Variables$Query$Recommendations(this._res);

  final TRes _res;

  @override
  call({
    int? page,
    int? perPage,
    List<Enum$RecommendationSort?>? sort,
    bool? onList,
  }) =>
      _res;
}

class Query$Recommendations {
  Query$Recommendations({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$Recommendations.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$Recommendations(
      Page: l$Page == null
          ? null
          : Query$Recommendations$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Recommendations$Page? Page;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$Page = Page;
    resultData['Page'] = l$Page?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Query$Recommendations || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Recommendations on Query$Recommendations {
  CopyWith$Query$Recommendations<Query$Recommendations> get copyWith =>
      CopyWith$Query$Recommendations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Recommendations<TRes> {
  factory CopyWith$Query$Recommendations(
    Query$Recommendations instance,
    TRes Function(Query$Recommendations) then,
  ) = _CopyWithImpl$Query$Recommendations;

  factory CopyWith$Query$Recommendations.stub(TRes res) =
      _CopyWithStubImpl$Query$Recommendations;

  TRes call({
    Query$Recommendations$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$Recommendations$Page<TRes> get Page;
}

class _CopyWithImpl$Query$Recommendations<TRes>
    implements CopyWith$Query$Recommendations<TRes> {
  _CopyWithImpl$Query$Recommendations(
    this._instance,
    this._then,
  );

  final Query$Recommendations _instance;

  final TRes Function(Query$Recommendations) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recommendations(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$Recommendations$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$Recommendations$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$Recommendations$Page.stub(_then(_instance))
        : CopyWith$Query$Recommendations$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$Recommendations<TRes>
    implements CopyWith$Query$Recommendations<TRes> {
  _CopyWithStubImpl$Query$Recommendations(this._res);

  final TRes _res;

  @override
  call({
    Query$Recommendations$Page? Page,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$Recommendations$Page<TRes> get Page =>
      CopyWith$Query$Recommendations$Page.stub(_res);
}

const documentNodeQueryRecommendations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Recommendations'),
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
        variable: VariableNode(name: NameNode(value: 'perPage')),
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
            name: NameNode(value: 'RecommendationSort'),
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
            name: NameNode(value: 'recommendations'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'onList'),
                value: VariableNode(name: NameNode(value: 'onList')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
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
                name: NameNode(value: 'rating'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'userRating'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'media'),
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
  fragmentDefinitionPageInfo,
  fragmentDefinitionMediaFragment,
]);

class Query$Recommendations$Page {
  Query$Recommendations$Page({
    this.pageInfo,
    this.recommendations,
    this.$__typename = 'Page',
  });

  factory Query$Recommendations$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$recommendations = json['recommendations'];
    final l$$__typename = json['__typename'];
    return Query$Recommendations$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      recommendations: (l$recommendations as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Recommendations$Page$recommendations.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$Recommendations$Page$recommendations?>? recommendations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$recommendations = recommendations;
    resultData['recommendations'] =
        l$recommendations?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$recommendations = recommendations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$recommendations == null
          ? null
          : Object.hashAll(l$recommendations.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Recommendations$Page ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$recommendations = recommendations;
    final lOther$recommendations = other.recommendations;
    if (l$recommendations != null && lOther$recommendations != null) {
      if (l$recommendations.length != lOther$recommendations.length) {
        return false;
      }
      for (int i = 0; i < l$recommendations.length; i++) {
        final l$recommendations$entry = l$recommendations[i];
        final lOther$recommendations$entry = lOther$recommendations[i];
        if (l$recommendations$entry != lOther$recommendations$entry) {
          return false;
        }
      }
    } else if (l$recommendations != lOther$recommendations) {
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

extension UtilityExtension$Query$Recommendations$Page
    on Query$Recommendations$Page {
  CopyWith$Query$Recommendations$Page<Query$Recommendations$Page>
      get copyWith => CopyWith$Query$Recommendations$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Recommendations$Page<TRes> {
  factory CopyWith$Query$Recommendations$Page(
    Query$Recommendations$Page instance,
    TRes Function(Query$Recommendations$Page) then,
  ) = _CopyWithImpl$Query$Recommendations$Page;

  factory CopyWith$Query$Recommendations$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$Recommendations$Page;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$Recommendations$Page$recommendations?>? recommendations,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes recommendations(
      Iterable<Query$Recommendations$Page$recommendations?>? Function(
              Iterable<
                  CopyWith$Query$Recommendations$Page$recommendations<
                      Query$Recommendations$Page$recommendations>?>?)
          fn);
}

class _CopyWithImpl$Query$Recommendations$Page<TRes>
    implements CopyWith$Query$Recommendations$Page<TRes> {
  _CopyWithImpl$Query$Recommendations$Page(
    this._instance,
    this._then,
  );

  final Query$Recommendations$Page _instance;

  final TRes Function(Query$Recommendations$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? pageInfo = _undefined,
    Object? recommendations = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recommendations$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        recommendations: recommendations == _undefined
            ? _instance.recommendations
            : (recommendations
                as List<Query$Recommendations$Page$recommendations?>?),
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
  TRes recommendations(
          Iterable<Query$Recommendations$Page$recommendations?>? Function(
                  Iterable<
                      CopyWith$Query$Recommendations$Page$recommendations<
                          Query$Recommendations$Page$recommendations>?>?)
              fn) =>
      call(
          recommendations: fn(_instance.recommendations?.map((e) => e == null
              ? null
              : CopyWith$Query$Recommendations$Page$recommendations(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Recommendations$Page<TRes>
    implements CopyWith$Query$Recommendations$Page<TRes> {
  _CopyWithStubImpl$Query$Recommendations$Page(this._res);

  final TRes _res;

  @override
  call({
    Fragment$PageInfo? pageInfo,
    List<Query$Recommendations$Page$recommendations?>? recommendations,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  @override
  recommendations(fn) => _res;
}

class Query$Recommendations$Page$recommendations {
  Query$Recommendations$Page$recommendations({
    required this.id,
    this.rating,
    this.userRating,
    this.media,
    this.mediaRecommendation,
    this.$__typename = 'Recommendation',
  });

  factory Query$Recommendations$Page$recommendations.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$rating = json['rating'];
    final l$userRating = json['userRating'];
    final l$media = json['media'];
    final l$mediaRecommendation = json['mediaRecommendation'];
    final l$$__typename = json['__typename'];
    return Query$Recommendations$Page$recommendations(
      id: (l$id as int),
      rating: (l$rating as int?),
      userRating: l$userRating == null
          ? null
          : fromJson$Enum$RecommendationRating((l$userRating as String)),
      media: l$media == null
          ? null
          : Fragment$MediaFragment.fromJson((l$media as Map<String, dynamic>)),
      mediaRecommendation: l$mediaRecommendation == null
          ? null
          : Fragment$MediaFragment.fromJson(
              (l$mediaRecommendation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? rating;

  final Enum$RecommendationRating? userRating;

  final Fragment$MediaFragment? media;

  final Fragment$MediaFragment? mediaRecommendation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$rating = rating;
    resultData['rating'] = l$rating;
    final l$userRating = userRating;
    resultData['userRating'] = l$userRating == null
        ? null
        : toJson$Enum$RecommendationRating(l$userRating);
    final l$media = media;
    resultData['media'] = l$media?.toJson();
    final l$mediaRecommendation = mediaRecommendation;
    resultData['mediaRecommendation'] = l$mediaRecommendation?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$rating = rating;
    final l$userRating = userRating;
    final l$media = media;
    final l$mediaRecommendation = mediaRecommendation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$rating,
      l$userRating,
      l$media,
      l$mediaRecommendation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Recommendations$Page$recommendations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$userRating = userRating;
    final lOther$userRating = other.userRating;
    if (l$userRating != lOther$userRating) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtension$Query$Recommendations$Page$recommendations
    on Query$Recommendations$Page$recommendations {
  CopyWith$Query$Recommendations$Page$recommendations<
          Query$Recommendations$Page$recommendations>
      get copyWith => CopyWith$Query$Recommendations$Page$recommendations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Recommendations$Page$recommendations<TRes> {
  factory CopyWith$Query$Recommendations$Page$recommendations(
    Query$Recommendations$Page$recommendations instance,
    TRes Function(Query$Recommendations$Page$recommendations) then,
  ) = _CopyWithImpl$Query$Recommendations$Page$recommendations;

  factory CopyWith$Query$Recommendations$Page$recommendations.stub(TRes res) =
      _CopyWithStubImpl$Query$Recommendations$Page$recommendations;

  TRes call({
    int? id,
    int? rating,
    Enum$RecommendationRating? userRating,
    Fragment$MediaFragment? media,
    Fragment$MediaFragment? mediaRecommendation,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFragment<TRes> get media;
  CopyWith$Fragment$MediaFragment<TRes> get mediaRecommendation;
}

class _CopyWithImpl$Query$Recommendations$Page$recommendations<TRes>
    implements CopyWith$Query$Recommendations$Page$recommendations<TRes> {
  _CopyWithImpl$Query$Recommendations$Page$recommendations(
    this._instance,
    this._then,
  );

  final Query$Recommendations$Page$recommendations _instance;

  final TRes Function(Query$Recommendations$Page$recommendations) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? rating = _undefined,
    Object? userRating = _undefined,
    Object? media = _undefined,
    Object? mediaRecommendation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recommendations$Page$recommendations(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        userRating: userRating == _undefined
            ? _instance.userRating
            : (userRating as Enum$RecommendationRating?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$MediaFragment?),
        mediaRecommendation: mediaRecommendation == _undefined
            ? _instance.mediaRecommendation
            : (mediaRecommendation as Fragment$MediaFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Fragment$MediaFragment<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(local$media, (e) => call(media: e));
  }

  @override
  CopyWith$Fragment$MediaFragment<TRes> get mediaRecommendation {
    final local$mediaRecommendation = _instance.mediaRecommendation;
    return local$mediaRecommendation == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(
            local$mediaRecommendation, (e) => call(mediaRecommendation: e));
  }
}

class _CopyWithStubImpl$Query$Recommendations$Page$recommendations<TRes>
    implements CopyWith$Query$Recommendations$Page$recommendations<TRes> {
  _CopyWithStubImpl$Query$Recommendations$Page$recommendations(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    int? rating,
    Enum$RecommendationRating? userRating,
    Fragment$MediaFragment? media,
    Fragment$MediaFragment? mediaRecommendation,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Fragment$MediaFragment<TRes> get media =>
      CopyWith$Fragment$MediaFragment.stub(_res);

  @override
  CopyWith$Fragment$MediaFragment<TRes> get mediaRecommendation =>
      CopyWith$Fragment$MediaFragment.stub(_res);
}

class Variables$Mutation$SaveRecommendation {
  factory Variables$Mutation$SaveRecommendation({
    int? mediaId,
    int? mediaRecommendationId,
    Enum$RecommendationRating? rating,
  }) =>
      Variables$Mutation$SaveRecommendation._({
        if (mediaId != null) r'mediaId': mediaId,
        if (mediaRecommendationId != null)
          r'mediaRecommendationId': mediaRecommendationId,
        if (rating != null) r'rating': rating,
      });

  Variables$Mutation$SaveRecommendation._(this._$data);

  factory Variables$Mutation$SaveRecommendation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('mediaRecommendationId')) {
      final l$mediaRecommendationId = data['mediaRecommendationId'];
      result$data['mediaRecommendationId'] = (l$mediaRecommendationId as int?);
    }
    if (data.containsKey('rating')) {
      final l$rating = data['rating'];
      result$data['rating'] = l$rating == null
          ? null
          : fromJson$Enum$RecommendationRating((l$rating as String));
    }
    return Variables$Mutation$SaveRecommendation._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get mediaId => (_$data['mediaId'] as int?);

  int? get mediaRecommendationId => (_$data['mediaRecommendationId'] as int?);

  Enum$RecommendationRating? get rating =>
      (_$data['rating'] as Enum$RecommendationRating?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('mediaRecommendationId')) {
      final l$mediaRecommendationId = mediaRecommendationId;
      result$data['mediaRecommendationId'] = l$mediaRecommendationId;
    }
    if (_$data.containsKey('rating')) {
      final l$rating = rating;
      result$data['rating'] =
          l$rating == null ? null : toJson$Enum$RecommendationRating(l$rating);
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveRecommendation<
          Variables$Mutation$SaveRecommendation>
      get copyWith => CopyWith$Variables$Mutation$SaveRecommendation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SaveRecommendation ||
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
    final l$mediaRecommendationId = mediaRecommendationId;
    final lOther$mediaRecommendationId = other.mediaRecommendationId;
    if (_$data.containsKey('mediaRecommendationId') !=
        other._$data.containsKey('mediaRecommendationId')) {
      return false;
    }
    if (l$mediaRecommendationId != lOther$mediaRecommendationId) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (_$data.containsKey('rating') != other._$data.containsKey('rating')) {
      return false;
    }
    if (l$rating != lOther$rating) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaId = mediaId;
    final l$mediaRecommendationId = mediaRecommendationId;
    final l$rating = rating;
    return Object.hashAll([
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('mediaRecommendationId')
          ? l$mediaRecommendationId
          : const {},
      _$data.containsKey('rating') ? l$rating : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SaveRecommendation<TRes> {
  factory CopyWith$Variables$Mutation$SaveRecommendation(
    Variables$Mutation$SaveRecommendation instance,
    TRes Function(Variables$Mutation$SaveRecommendation) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveRecommendation;

  factory CopyWith$Variables$Mutation$SaveRecommendation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveRecommendation;

  TRes call({
    int? mediaId,
    int? mediaRecommendationId,
    Enum$RecommendationRating? rating,
  });
}

class _CopyWithImpl$Variables$Mutation$SaveRecommendation<TRes>
    implements CopyWith$Variables$Mutation$SaveRecommendation<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveRecommendation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveRecommendation _instance;

  final TRes Function(Variables$Mutation$SaveRecommendation) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? mediaId = _undefined,
    Object? mediaRecommendationId = _undefined,
    Object? rating = _undefined,
  }) =>
      _then(Variables$Mutation$SaveRecommendation._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (mediaRecommendationId != _undefined)
          'mediaRecommendationId': (mediaRecommendationId as int?),
        if (rating != _undefined)
          'rating': (rating as Enum$RecommendationRating?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SaveRecommendation<TRes>
    implements CopyWith$Variables$Mutation$SaveRecommendation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveRecommendation(this._res);

  final TRes _res;

  @override
  call({
    int? mediaId,
    int? mediaRecommendationId,
    Enum$RecommendationRating? rating,
  }) =>
      _res;
}

class Mutation$SaveRecommendation {
  Mutation$SaveRecommendation({
    this.SaveRecommendation,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveRecommendation.fromJson(Map<String, dynamic> json) {
    final l$SaveRecommendation = json['SaveRecommendation'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveRecommendation(
      SaveRecommendation: l$SaveRecommendation == null
          ? null
          : Mutation$SaveRecommendation$SaveRecommendation.fromJson(
              (l$SaveRecommendation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SaveRecommendation$SaveRecommendation? SaveRecommendation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$SaveRecommendation = SaveRecommendation;
    resultData['SaveRecommendation'] = l$SaveRecommendation?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$SaveRecommendation = SaveRecommendation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$SaveRecommendation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SaveRecommendation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$SaveRecommendation = SaveRecommendation;
    final lOther$SaveRecommendation = other.SaveRecommendation;
    if (l$SaveRecommendation != lOther$SaveRecommendation) {
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

extension UtilityExtension$Mutation$SaveRecommendation
    on Mutation$SaveRecommendation {
  CopyWith$Mutation$SaveRecommendation<Mutation$SaveRecommendation>
      get copyWith => CopyWith$Mutation$SaveRecommendation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveRecommendation<TRes> {
  factory CopyWith$Mutation$SaveRecommendation(
    Mutation$SaveRecommendation instance,
    TRes Function(Mutation$SaveRecommendation) then,
  ) = _CopyWithImpl$Mutation$SaveRecommendation;

  factory CopyWith$Mutation$SaveRecommendation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveRecommendation;

  TRes call({
    Mutation$SaveRecommendation$SaveRecommendation? SaveRecommendation,
    String? $__typename,
  });
  CopyWith$Mutation$SaveRecommendation$SaveRecommendation<TRes>
      get SaveRecommendation;
}

class _CopyWithImpl$Mutation$SaveRecommendation<TRes>
    implements CopyWith$Mutation$SaveRecommendation<TRes> {
  _CopyWithImpl$Mutation$SaveRecommendation(
    this._instance,
    this._then,
  );

  final Mutation$SaveRecommendation _instance;

  final TRes Function(Mutation$SaveRecommendation) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? SaveRecommendation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveRecommendation(
        SaveRecommendation: SaveRecommendation == _undefined
            ? _instance.SaveRecommendation
            : (SaveRecommendation
                as Mutation$SaveRecommendation$SaveRecommendation?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Mutation$SaveRecommendation$SaveRecommendation<TRes>
      get SaveRecommendation {
    final local$SaveRecommendation = _instance.SaveRecommendation;
    return local$SaveRecommendation == null
        ? CopyWith$Mutation$SaveRecommendation$SaveRecommendation.stub(
            _then(_instance))
        : CopyWith$Mutation$SaveRecommendation$SaveRecommendation(
            local$SaveRecommendation, (e) => call(SaveRecommendation: e));
  }
}

class _CopyWithStubImpl$Mutation$SaveRecommendation<TRes>
    implements CopyWith$Mutation$SaveRecommendation<TRes> {
  _CopyWithStubImpl$Mutation$SaveRecommendation(this._res);

  final TRes _res;

  @override
  call({
    Mutation$SaveRecommendation$SaveRecommendation? SaveRecommendation,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Mutation$SaveRecommendation$SaveRecommendation<TRes>
      get SaveRecommendation =>
          CopyWith$Mutation$SaveRecommendation$SaveRecommendation.stub(_res);
}

const documentNodeMutationSaveRecommendation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SaveRecommendation'),
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
        variable: VariableNode(name: NameNode(value: 'mediaRecommendationId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'rating')),
        type: NamedTypeNode(
          name: NameNode(value: 'RecommendationRating'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'SaveRecommendation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'mediaId'),
            value: VariableNode(name: NameNode(value: 'mediaId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mediaRecommendationId'),
            value: VariableNode(name: NameNode(value: 'mediaRecommendationId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'rating'),
            value: VariableNode(name: NameNode(value: 'rating')),
          ),
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
            name: NameNode(value: 'rating'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userRating'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'media'),
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
  fragmentDefinitionMediaFragment,
]);

class Mutation$SaveRecommendation$SaveRecommendation {
  Mutation$SaveRecommendation$SaveRecommendation({
    required this.id,
    this.rating,
    this.userRating,
    this.media,
    this.mediaRecommendation,
    this.$__typename = 'Recommendation',
  });

  factory Mutation$SaveRecommendation$SaveRecommendation.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$rating = json['rating'];
    final l$userRating = json['userRating'];
    final l$media = json['media'];
    final l$mediaRecommendation = json['mediaRecommendation'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveRecommendation$SaveRecommendation(
      id: (l$id as int),
      rating: (l$rating as int?),
      userRating: l$userRating == null
          ? null
          : fromJson$Enum$RecommendationRating((l$userRating as String)),
      media: l$media == null
          ? null
          : Fragment$MediaFragment.fromJson((l$media as Map<String, dynamic>)),
      mediaRecommendation: l$mediaRecommendation == null
          ? null
          : Fragment$MediaFragment.fromJson(
              (l$mediaRecommendation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? rating;

  final Enum$RecommendationRating? userRating;

  final Fragment$MediaFragment? media;

  final Fragment$MediaFragment? mediaRecommendation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$rating = rating;
    resultData['rating'] = l$rating;
    final l$userRating = userRating;
    resultData['userRating'] = l$userRating == null
        ? null
        : toJson$Enum$RecommendationRating(l$userRating);
    final l$media = media;
    resultData['media'] = l$media?.toJson();
    final l$mediaRecommendation = mediaRecommendation;
    resultData['mediaRecommendation'] = l$mediaRecommendation?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$rating = rating;
    final l$userRating = userRating;
    final l$media = media;
    final l$mediaRecommendation = mediaRecommendation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$rating,
      l$userRating,
      l$media,
      l$mediaRecommendation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SaveRecommendation$SaveRecommendation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$userRating = userRating;
    final lOther$userRating = other.userRating;
    if (l$userRating != lOther$userRating) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtension$Mutation$SaveRecommendation$SaveRecommendation
    on Mutation$SaveRecommendation$SaveRecommendation {
  CopyWith$Mutation$SaveRecommendation$SaveRecommendation<
          Mutation$SaveRecommendation$SaveRecommendation>
      get copyWith => CopyWith$Mutation$SaveRecommendation$SaveRecommendation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveRecommendation$SaveRecommendation<TRes> {
  factory CopyWith$Mutation$SaveRecommendation$SaveRecommendation(
    Mutation$SaveRecommendation$SaveRecommendation instance,
    TRes Function(Mutation$SaveRecommendation$SaveRecommendation) then,
  ) = _CopyWithImpl$Mutation$SaveRecommendation$SaveRecommendation;

  factory CopyWith$Mutation$SaveRecommendation$SaveRecommendation.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SaveRecommendation$SaveRecommendation;

  TRes call({
    int? id,
    int? rating,
    Enum$RecommendationRating? userRating,
    Fragment$MediaFragment? media,
    Fragment$MediaFragment? mediaRecommendation,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFragment<TRes> get media;
  CopyWith$Fragment$MediaFragment<TRes> get mediaRecommendation;
}

class _CopyWithImpl$Mutation$SaveRecommendation$SaveRecommendation<TRes>
    implements CopyWith$Mutation$SaveRecommendation$SaveRecommendation<TRes> {
  _CopyWithImpl$Mutation$SaveRecommendation$SaveRecommendation(
    this._instance,
    this._then,
  );

  final Mutation$SaveRecommendation$SaveRecommendation _instance;

  final TRes Function(Mutation$SaveRecommendation$SaveRecommendation) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? rating = _undefined,
    Object? userRating = _undefined,
    Object? media = _undefined,
    Object? mediaRecommendation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveRecommendation$SaveRecommendation(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        userRating: userRating == _undefined
            ? _instance.userRating
            : (userRating as Enum$RecommendationRating?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$MediaFragment?),
        mediaRecommendation: mediaRecommendation == _undefined
            ? _instance.mediaRecommendation
            : (mediaRecommendation as Fragment$MediaFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Fragment$MediaFragment<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(local$media, (e) => call(media: e));
  }

  @override
  CopyWith$Fragment$MediaFragment<TRes> get mediaRecommendation {
    final local$mediaRecommendation = _instance.mediaRecommendation;
    return local$mediaRecommendation == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(
            local$mediaRecommendation, (e) => call(mediaRecommendation: e));
  }
}

class _CopyWithStubImpl$Mutation$SaveRecommendation$SaveRecommendation<TRes>
    implements CopyWith$Mutation$SaveRecommendation$SaveRecommendation<TRes> {
  _CopyWithStubImpl$Mutation$SaveRecommendation$SaveRecommendation(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    int? rating,
    Enum$RecommendationRating? userRating,
    Fragment$MediaFragment? media,
    Fragment$MediaFragment? mediaRecommendation,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Fragment$MediaFragment<TRes> get media =>
      CopyWith$Fragment$MediaFragment.stub(_res);

  @override
  CopyWith$Fragment$MediaFragment<TRes> get mediaRecommendation =>
      CopyWith$Fragment$MediaFragment.stub(_res);
}
