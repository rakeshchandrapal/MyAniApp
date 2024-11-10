import '../../graphql/fragments/page_info.graphql.dart';
import '../../graphql/fragments/review.graphql.dart';
import '../../graphql/fragments/user.graphql.dart';
import '../../graphql/schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$MediaReviews {
  factory Variables$Query$MediaReviews({
    int? mediaId,
    int? page,
  }) =>
      Variables$Query$MediaReviews._({
        if (mediaId != null) r'mediaId': mediaId,
        if (page != null) r'page': page,
      });

  Variables$Query$MediaReviews._(this._$data);

  factory Variables$Query$MediaReviews.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$MediaReviews._(result$data);
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

  CopyWith$Variables$Query$MediaReviews<Variables$Query$MediaReviews>
      get copyWith => CopyWith$Variables$Query$MediaReviews(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$MediaReviews) ||
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

abstract class CopyWith$Variables$Query$MediaReviews<TRes> {
  factory CopyWith$Variables$Query$MediaReviews(
    Variables$Query$MediaReviews instance,
    TRes Function(Variables$Query$MediaReviews) then,
  ) = _CopyWithImpl$Variables$Query$MediaReviews;

  factory CopyWith$Variables$Query$MediaReviews.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MediaReviews;

  TRes call({
    int? mediaId,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$MediaReviews<TRes>
    implements CopyWith$Variables$Query$MediaReviews<TRes> {
  _CopyWithImpl$Variables$Query$MediaReviews(
    this._instance,
    this._then,
  );

  final Variables$Query$MediaReviews _instance;

  final TRes Function(Variables$Query$MediaReviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$MediaReviews._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$MediaReviews<TRes>
    implements CopyWith$Variables$Query$MediaReviews<TRes> {
  _CopyWithStubImpl$Variables$Query$MediaReviews(this._res);

  TRes _res;

  call({
    int? mediaId,
    int? page,
  }) =>
      _res;
}

class Query$MediaReviews {
  Query$MediaReviews({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$MediaReviews.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$MediaReviews(
      Media: l$Media == null
          ? null
          : Query$MediaReviews$Media.fromJson(
              (l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MediaReviews$Media? Media;

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
    if (!(other is Query$MediaReviews) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$MediaReviews on Query$MediaReviews {
  CopyWith$Query$MediaReviews<Query$MediaReviews> get copyWith =>
      CopyWith$Query$MediaReviews(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaReviews<TRes> {
  factory CopyWith$Query$MediaReviews(
    Query$MediaReviews instance,
    TRes Function(Query$MediaReviews) then,
  ) = _CopyWithImpl$Query$MediaReviews;

  factory CopyWith$Query$MediaReviews.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaReviews;

  TRes call({
    Query$MediaReviews$Media? Media,
    String? $__typename,
  });
  CopyWith$Query$MediaReviews$Media<TRes> get Media;
}

class _CopyWithImpl$Query$MediaReviews<TRes>
    implements CopyWith$Query$MediaReviews<TRes> {
  _CopyWithImpl$Query$MediaReviews(
    this._instance,
    this._then,
  );

  final Query$MediaReviews _instance;

  final TRes Function(Query$MediaReviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaReviews(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Query$MediaReviews$Media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaReviews$Media<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Query$MediaReviews$Media.stub(_then(_instance))
        : CopyWith$Query$MediaReviews$Media(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$MediaReviews<TRes>
    implements CopyWith$Query$MediaReviews<TRes> {
  _CopyWithStubImpl$Query$MediaReviews(this._res);

  TRes _res;

  call({
    Query$MediaReviews$Media? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaReviews$Media<TRes> get Media =>
      CopyWith$Query$MediaReviews$Media.stub(_res);
}

const documentNodeQueryMediaReviews = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaReviews'),
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
            name: NameNode(value: 'reviews'),
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
                  FragmentSpreadNode(
                    name: NameNode(value: 'ReviewFragment'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: 'score'),
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
  fragmentDefinitionReviewFragment,
  fragmentDefinitionUserFragment,
]);

class Query$MediaReviews$Media {
  Query$MediaReviews$Media({
    required this.id,
    this.reviews,
    this.$__typename = 'Media',
  });

  factory Query$MediaReviews$Media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$reviews = json['reviews'];
    final l$$__typename = json['__typename'];
    return Query$MediaReviews$Media(
      id: (l$id as int),
      reviews: l$reviews == null
          ? null
          : Query$MediaReviews$Media$reviews.fromJson(
              (l$reviews as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$MediaReviews$Media$reviews? reviews;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$reviews = reviews;
    _resultData['reviews'] = l$reviews?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$reviews = reviews;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$reviews,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MediaReviews$Media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$reviews = reviews;
    final lOther$reviews = other.reviews;
    if (l$reviews != lOther$reviews) {
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

extension UtilityExtension$Query$MediaReviews$Media
    on Query$MediaReviews$Media {
  CopyWith$Query$MediaReviews$Media<Query$MediaReviews$Media> get copyWith =>
      CopyWith$Query$MediaReviews$Media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaReviews$Media<TRes> {
  factory CopyWith$Query$MediaReviews$Media(
    Query$MediaReviews$Media instance,
    TRes Function(Query$MediaReviews$Media) then,
  ) = _CopyWithImpl$Query$MediaReviews$Media;

  factory CopyWith$Query$MediaReviews$Media.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaReviews$Media;

  TRes call({
    int? id,
    Query$MediaReviews$Media$reviews? reviews,
    String? $__typename,
  });
  CopyWith$Query$MediaReviews$Media$reviews<TRes> get reviews;
}

class _CopyWithImpl$Query$MediaReviews$Media<TRes>
    implements CopyWith$Query$MediaReviews$Media<TRes> {
  _CopyWithImpl$Query$MediaReviews$Media(
    this._instance,
    this._then,
  );

  final Query$MediaReviews$Media _instance;

  final TRes Function(Query$MediaReviews$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? reviews = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaReviews$Media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        reviews: reviews == _undefined
            ? _instance.reviews
            : (reviews as Query$MediaReviews$Media$reviews?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaReviews$Media$reviews<TRes> get reviews {
    final local$reviews = _instance.reviews;
    return local$reviews == null
        ? CopyWith$Query$MediaReviews$Media$reviews.stub(_then(_instance))
        : CopyWith$Query$MediaReviews$Media$reviews(
            local$reviews, (e) => call(reviews: e));
  }
}

class _CopyWithStubImpl$Query$MediaReviews$Media<TRes>
    implements CopyWith$Query$MediaReviews$Media<TRes> {
  _CopyWithStubImpl$Query$MediaReviews$Media(this._res);

  TRes _res;

  call({
    int? id,
    Query$MediaReviews$Media$reviews? reviews,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaReviews$Media$reviews<TRes> get reviews =>
      CopyWith$Query$MediaReviews$Media$reviews.stub(_res);
}

class Query$MediaReviews$Media$reviews {
  Query$MediaReviews$Media$reviews({
    this.pageInfo,
    this.nodes,
    this.$__typename = 'ReviewConnection',
  });

  factory Query$MediaReviews$Media$reviews.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$MediaReviews$Media$reviews(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$MediaReviews$Media$reviews$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$MediaReviews$Media$reviews$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
    if (!(other is Query$MediaReviews$Media$reviews) ||
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

extension UtilityExtension$Query$MediaReviews$Media$reviews
    on Query$MediaReviews$Media$reviews {
  CopyWith$Query$MediaReviews$Media$reviews<Query$MediaReviews$Media$reviews>
      get copyWith => CopyWith$Query$MediaReviews$Media$reviews(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaReviews$Media$reviews<TRes> {
  factory CopyWith$Query$MediaReviews$Media$reviews(
    Query$MediaReviews$Media$reviews instance,
    TRes Function(Query$MediaReviews$Media$reviews) then,
  ) = _CopyWithImpl$Query$MediaReviews$Media$reviews;

  factory CopyWith$Query$MediaReviews$Media$reviews.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaReviews$Media$reviews;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$MediaReviews$Media$reviews$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query$MediaReviews$Media$reviews$nodes?>? Function(
              Iterable<
                  CopyWith$Query$MediaReviews$Media$reviews$nodes<
                      Query$MediaReviews$Media$reviews$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$MediaReviews$Media$reviews<TRes>
    implements CopyWith$Query$MediaReviews$Media$reviews<TRes> {
  _CopyWithImpl$Query$MediaReviews$Media$reviews(
    this._instance,
    this._then,
  );

  final Query$MediaReviews$Media$reviews _instance;

  final TRes Function(Query$MediaReviews$Media$reviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaReviews$Media$reviews(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$MediaReviews$Media$reviews$nodes?>?),
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

  TRes nodes(
          Iterable<Query$MediaReviews$Media$reviews$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$MediaReviews$Media$reviews$nodes<
                          Query$MediaReviews$Media$reviews$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$MediaReviews$Media$reviews$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$MediaReviews$Media$reviews<TRes>
    implements CopyWith$Query$MediaReviews$Media$reviews<TRes> {
  _CopyWithStubImpl$Query$MediaReviews$Media$reviews(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$MediaReviews$Media$reviews$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$MediaReviews$Media$reviews$nodes
    implements Fragment$ReviewFragment {
  Query$MediaReviews$Media$reviews$nodes({
    required this.id,
    this.rating,
    this.ratingAmount,
    this.summary,
    this.media,
    this.user,
    this.$__typename = 'Review',
    this.score,
    this.userRating,
  });

  factory Query$MediaReviews$Media$reviews$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$rating = json['rating'];
    final l$ratingAmount = json['ratingAmount'];
    final l$summary = json['summary'];
    final l$media = json['media'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    final l$score = json['score'];
    final l$userRating = json['userRating'];
    return Query$MediaReviews$Media$reviews$nodes(
      id: (l$id as int),
      rating: (l$rating as int?),
      ratingAmount: (l$ratingAmount as int?),
      summary: (l$summary as String?),
      media: l$media == null
          ? null
          : Query$MediaReviews$Media$reviews$nodes$media.fromJson(
              (l$media as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      score: (l$score as int?),
      userRating: l$userRating == null
          ? null
          : fromJson$Enum$ReviewRating((l$userRating as String)),
    );
  }

  final int id;

  final int? rating;

  final int? ratingAmount;

  final String? summary;

  final Query$MediaReviews$Media$reviews$nodes$media? media;

  final Fragment$UserFragment? user;

  final String $__typename;

  final int? score;

  final Enum$ReviewRating? userRating;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$ratingAmount = ratingAmount;
    _resultData['ratingAmount'] = l$ratingAmount;
    final l$summary = summary;
    _resultData['summary'] = l$summary;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$score = score;
    _resultData['score'] = l$score;
    final l$userRating = userRating;
    _resultData['userRating'] =
        l$userRating == null ? null : toJson$Enum$ReviewRating(l$userRating);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$rating = rating;
    final l$ratingAmount = ratingAmount;
    final l$summary = summary;
    final l$media = media;
    final l$user = user;
    final l$$__typename = $__typename;
    final l$score = score;
    final l$userRating = userRating;
    return Object.hashAll([
      l$id,
      l$rating,
      l$ratingAmount,
      l$summary,
      l$media,
      l$user,
      l$$__typename,
      l$score,
      l$userRating,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MediaReviews$Media$reviews$nodes) ||
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
    final l$ratingAmount = ratingAmount;
    final lOther$ratingAmount = other.ratingAmount;
    if (l$ratingAmount != lOther$ratingAmount) {
      return false;
    }
    final l$summary = summary;
    final lOther$summary = other.summary;
    if (l$summary != lOther$summary) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
      return false;
    }
    final l$userRating = userRating;
    final lOther$userRating = other.userRating;
    if (l$userRating != lOther$userRating) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MediaReviews$Media$reviews$nodes
    on Query$MediaReviews$Media$reviews$nodes {
  CopyWith$Query$MediaReviews$Media$reviews$nodes<
          Query$MediaReviews$Media$reviews$nodes>
      get copyWith => CopyWith$Query$MediaReviews$Media$reviews$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaReviews$Media$reviews$nodes<TRes> {
  factory CopyWith$Query$MediaReviews$Media$reviews$nodes(
    Query$MediaReviews$Media$reviews$nodes instance,
    TRes Function(Query$MediaReviews$Media$reviews$nodes) then,
  ) = _CopyWithImpl$Query$MediaReviews$Media$reviews$nodes;

  factory CopyWith$Query$MediaReviews$Media$reviews$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaReviews$Media$reviews$nodes;

  TRes call({
    int? id,
    int? rating,
    int? ratingAmount,
    String? summary,
    Query$MediaReviews$Media$reviews$nodes$media? media,
    Fragment$UserFragment? user,
    String? $__typename,
    int? score,
    Enum$ReviewRating? userRating,
  });
  CopyWith$Query$MediaReviews$Media$reviews$nodes$media<TRes> get media;
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$MediaReviews$Media$reviews$nodes<TRes>
    implements CopyWith$Query$MediaReviews$Media$reviews$nodes<TRes> {
  _CopyWithImpl$Query$MediaReviews$Media$reviews$nodes(
    this._instance,
    this._then,
  );

  final Query$MediaReviews$Media$reviews$nodes _instance;

  final TRes Function(Query$MediaReviews$Media$reviews$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? rating = _undefined,
    Object? ratingAmount = _undefined,
    Object? summary = _undefined,
    Object? media = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
    Object? score = _undefined,
    Object? userRating = _undefined,
  }) =>
      _then(Query$MediaReviews$Media$reviews$nodes(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        ratingAmount: ratingAmount == _undefined
            ? _instance.ratingAmount
            : (ratingAmount as int?),
        summary:
            summary == _undefined ? _instance.summary : (summary as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$MediaReviews$Media$reviews$nodes$media?),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        score: score == _undefined ? _instance.score : (score as int?),
        userRating: userRating == _undefined
            ? _instance.userRating
            : (userRating as Enum$ReviewRating?),
      ));

  CopyWith$Query$MediaReviews$Media$reviews$nodes$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$MediaReviews$Media$reviews$nodes$media.stub(
            _then(_instance))
        : CopyWith$Query$MediaReviews$Media$reviews$nodes$media(
            local$media, (e) => call(media: e));
  }

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$MediaReviews$Media$reviews$nodes<TRes>
    implements CopyWith$Query$MediaReviews$Media$reviews$nodes<TRes> {
  _CopyWithStubImpl$Query$MediaReviews$Media$reviews$nodes(this._res);

  TRes _res;

  call({
    int? id,
    int? rating,
    int? ratingAmount,
    String? summary,
    Query$MediaReviews$Media$reviews$nodes$media? media,
    Fragment$UserFragment? user,
    String? $__typename,
    int? score,
    Enum$ReviewRating? userRating,
  }) =>
      _res;

  CopyWith$Query$MediaReviews$Media$reviews$nodes$media<TRes> get media =>
      CopyWith$Query$MediaReviews$Media$reviews$nodes$media.stub(_res);

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$MediaReviews$Media$reviews$nodes$media
    implements Fragment$ReviewFragment$media {
  Query$MediaReviews$Media$reviews$nodes$media({
    required this.id,
    this.title,
    this.type,
    this.bannerImage,
    this.$__typename = 'Media',
  });

  factory Query$MediaReviews$Media$reviews$nodes$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$bannerImage = json['bannerImage'];
    final l$$__typename = json['__typename'];
    return Query$MediaReviews$Media$reviews$nodes$media(
      id: (l$id as int),
      title: l$title == null
          ? null
          : Query$MediaReviews$Media$reviews$nodes$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      bannerImage: (l$bannerImage as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$MediaReviews$Media$reviews$nodes$media$title? title;

  final Enum$MediaType? type;

  final String? bannerImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$bannerImage = bannerImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$type,
      l$bannerImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MediaReviews$Media$reviews$nodes$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
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

extension UtilityExtension$Query$MediaReviews$Media$reviews$nodes$media
    on Query$MediaReviews$Media$reviews$nodes$media {
  CopyWith$Query$MediaReviews$Media$reviews$nodes$media<
          Query$MediaReviews$Media$reviews$nodes$media>
      get copyWith => CopyWith$Query$MediaReviews$Media$reviews$nodes$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaReviews$Media$reviews$nodes$media<TRes> {
  factory CopyWith$Query$MediaReviews$Media$reviews$nodes$media(
    Query$MediaReviews$Media$reviews$nodes$media instance,
    TRes Function(Query$MediaReviews$Media$reviews$nodes$media) then,
  ) = _CopyWithImpl$Query$MediaReviews$Media$reviews$nodes$media;

  factory CopyWith$Query$MediaReviews$Media$reviews$nodes$media.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaReviews$Media$reviews$nodes$media;

  TRes call({
    int? id,
    Query$MediaReviews$Media$reviews$nodes$media$title? title,
    Enum$MediaType? type,
    String? bannerImage,
    String? $__typename,
  });
  CopyWith$Query$MediaReviews$Media$reviews$nodes$media$title<TRes> get title;
}

class _CopyWithImpl$Query$MediaReviews$Media$reviews$nodes$media<TRes>
    implements CopyWith$Query$MediaReviews$Media$reviews$nodes$media<TRes> {
  _CopyWithImpl$Query$MediaReviews$Media$reviews$nodes$media(
    this._instance,
    this._then,
  );

  final Query$MediaReviews$Media$reviews$nodes$media _instance;

  final TRes Function(Query$MediaReviews$Media$reviews$nodes$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? bannerImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaReviews$Media$reviews$nodes$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as Query$MediaReviews$Media$reviews$nodes$media$title?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaReviews$Media$reviews$nodes$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$MediaReviews$Media$reviews$nodes$media$title.stub(
            _then(_instance))
        : CopyWith$Query$MediaReviews$Media$reviews$nodes$media$title(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImpl$Query$MediaReviews$Media$reviews$nodes$media<TRes>
    implements CopyWith$Query$MediaReviews$Media$reviews$nodes$media<TRes> {
  _CopyWithStubImpl$Query$MediaReviews$Media$reviews$nodes$media(this._res);

  TRes _res;

  call({
    int? id,
    Query$MediaReviews$Media$reviews$nodes$media$title? title,
    Enum$MediaType? type,
    String? bannerImage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaReviews$Media$reviews$nodes$media$title<TRes> get title =>
      CopyWith$Query$MediaReviews$Media$reviews$nodes$media$title.stub(_res);
}

class Query$MediaReviews$Media$reviews$nodes$media$title
    implements Fragment$ReviewFragment$media$title {
  Query$MediaReviews$Media$reviews$nodes$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$MediaReviews$Media$reviews$nodes$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$MediaReviews$Media$reviews$nodes$media$title(
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
    if (!(other is Query$MediaReviews$Media$reviews$nodes$media$title) ||
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

extension UtilityExtension$Query$MediaReviews$Media$reviews$nodes$media$title
    on Query$MediaReviews$Media$reviews$nodes$media$title {
  CopyWith$Query$MediaReviews$Media$reviews$nodes$media$title<
          Query$MediaReviews$Media$reviews$nodes$media$title>
      get copyWith =>
          CopyWith$Query$MediaReviews$Media$reviews$nodes$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaReviews$Media$reviews$nodes$media$title<
    TRes> {
  factory CopyWith$Query$MediaReviews$Media$reviews$nodes$media$title(
    Query$MediaReviews$Media$reviews$nodes$media$title instance,
    TRes Function(Query$MediaReviews$Media$reviews$nodes$media$title) then,
  ) = _CopyWithImpl$Query$MediaReviews$Media$reviews$nodes$media$title;

  factory CopyWith$Query$MediaReviews$Media$reviews$nodes$media$title.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MediaReviews$Media$reviews$nodes$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MediaReviews$Media$reviews$nodes$media$title<TRes>
    implements
        CopyWith$Query$MediaReviews$Media$reviews$nodes$media$title<TRes> {
  _CopyWithImpl$Query$MediaReviews$Media$reviews$nodes$media$title(
    this._instance,
    this._then,
  );

  final Query$MediaReviews$Media$reviews$nodes$media$title _instance;

  final TRes Function(Query$MediaReviews$Media$reviews$nodes$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaReviews$Media$reviews$nodes$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MediaReviews$Media$reviews$nodes$media$title<TRes>
    implements
        CopyWith$Query$MediaReviews$Media$reviews$nodes$media$title<TRes> {
  _CopyWithStubImpl$Query$MediaReviews$Media$reviews$nodes$media$title(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}
