import '../../graphql/fragments/review.graphql.dart';
import '../../graphql/fragments/user.graphql.dart';
import '../../graphql/schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$Review {
  factory Variables$Query$Review({int? id}) => Variables$Query$Review._({
        if (id != null) r'id': id,
      });

  Variables$Query$Review._(this._$data);

  factory Variables$Query$Review.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Query$Review._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Review<Variables$Query$Review> get copyWith =>
      CopyWith$Variables$Query$Review(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Review) ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Variables$Query$Review<TRes> {
  factory CopyWith$Variables$Query$Review(
    Variables$Query$Review instance,
    TRes Function(Variables$Query$Review) then,
  ) = _CopyWithImpl$Variables$Query$Review;

  factory CopyWith$Variables$Query$Review.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Review;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Query$Review<TRes>
    implements CopyWith$Variables$Query$Review<TRes> {
  _CopyWithImpl$Variables$Query$Review(
    this._instance,
    this._then,
  );

  final Variables$Query$Review _instance;

  final TRes Function(Variables$Query$Review) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$Review._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Review<TRes>
    implements CopyWith$Variables$Query$Review<TRes> {
  _CopyWithStubImpl$Variables$Query$Review(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Query$Review {
  Query$Review({
    this.Review,
    this.$__typename = 'Query',
  });

  factory Query$Review.fromJson(Map<String, dynamic> json) {
    final l$Review = json['Review'];
    final l$$__typename = json['__typename'];
    return Query$Review(
      Review: l$Review == null
          ? null
          : Query$Review$Review.fromJson((l$Review as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Review$Review? Review;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Review = Review;
    _resultData['Review'] = l$Review?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Review = Review;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Review,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Review) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Review = Review;
    final lOther$Review = other.Review;
    if (l$Review != lOther$Review) {
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

extension UtilityExtension$Query$Review on Query$Review {
  CopyWith$Query$Review<Query$Review> get copyWith => CopyWith$Query$Review(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Review<TRes> {
  factory CopyWith$Query$Review(
    Query$Review instance,
    TRes Function(Query$Review) then,
  ) = _CopyWithImpl$Query$Review;

  factory CopyWith$Query$Review.stub(TRes res) = _CopyWithStubImpl$Query$Review;

  TRes call({
    Query$Review$Review? Review,
    String? $__typename,
  });
  CopyWith$Query$Review$Review<TRes> get Review;
}

class _CopyWithImpl$Query$Review<TRes> implements CopyWith$Query$Review<TRes> {
  _CopyWithImpl$Query$Review(
    this._instance,
    this._then,
  );

  final Query$Review _instance;

  final TRes Function(Query$Review) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Review = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Review(
        Review: Review == _undefined
            ? _instance.Review
            : (Review as Query$Review$Review?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Review$Review<TRes> get Review {
    final local$Review = _instance.Review;
    return local$Review == null
        ? CopyWith$Query$Review$Review.stub(_then(_instance))
        : CopyWith$Query$Review$Review(local$Review, (e) => call(Review: e));
  }
}

class _CopyWithStubImpl$Query$Review<TRes>
    implements CopyWith$Query$Review<TRes> {
  _CopyWithStubImpl$Query$Review(this._res);

  TRes _res;

  call({
    Query$Review$Review? Review,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Review$Review<TRes> get Review =>
      CopyWith$Query$Review$Review.stub(_res);
}

const documentNodeQueryReview = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Review'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Review'),
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
            name: NameNode(value: 'ReviewFragment'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'body'),
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
            name: NameNode(value: 'score'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdAt'),
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
  fragmentDefinitionReviewFragment,
  fragmentDefinitionUserFragment,
]);

class Query$Review$Review implements Fragment$ReviewFragment {
  Query$Review$Review({
    required this.id,
    this.rating,
    this.ratingAmount,
    this.summary,
    this.media,
    this.user,
    this.$__typename = 'Review',
    this.body,
    this.userRating,
    this.score,
    required this.createdAt,
  });

  factory Query$Review$Review.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$rating = json['rating'];
    final l$ratingAmount = json['ratingAmount'];
    final l$summary = json['summary'];
    final l$media = json['media'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    final l$body = json['body'];
    final l$userRating = json['userRating'];
    final l$score = json['score'];
    final l$createdAt = json['createdAt'];
    return Query$Review$Review(
      id: (l$id as int),
      rating: (l$rating as int?),
      ratingAmount: (l$ratingAmount as int?),
      summary: (l$summary as String?),
      media: l$media == null
          ? null
          : Query$Review$Review$media.fromJson(
              (l$media as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      body: (l$body as String?),
      userRating: l$userRating == null
          ? null
          : fromJson$Enum$ReviewRating((l$userRating as String)),
      score: (l$score as int?),
      createdAt: (l$createdAt as int),
    );
  }

  final int id;

  final int? rating;

  final int? ratingAmount;

  final String? summary;

  final Query$Review$Review$media? media;

  final Fragment$UserFragment? user;

  final String $__typename;

  final String? body;

  final Enum$ReviewRating? userRating;

  final int? score;

  final int createdAt;

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
    final l$body = body;
    _resultData['body'] = l$body;
    final l$userRating = userRating;
    _resultData['userRating'] =
        l$userRating == null ? null : toJson$Enum$ReviewRating(l$userRating);
    final l$score = score;
    _resultData['score'] = l$score;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
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
    final l$body = body;
    final l$userRating = userRating;
    final l$score = score;
    final l$createdAt = createdAt;
    return Object.hashAll([
      l$id,
      l$rating,
      l$ratingAmount,
      l$summary,
      l$media,
      l$user,
      l$$__typename,
      l$body,
      l$userRating,
      l$score,
      l$createdAt,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Review$Review) || runtimeType != other.runtimeType) {
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
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
      return false;
    }
    final l$userRating = userRating;
    final lOther$userRating = other.userRating;
    if (l$userRating != lOther$userRating) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Review$Review on Query$Review$Review {
  CopyWith$Query$Review$Review<Query$Review$Review> get copyWith =>
      CopyWith$Query$Review$Review(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Review$Review<TRes> {
  factory CopyWith$Query$Review$Review(
    Query$Review$Review instance,
    TRes Function(Query$Review$Review) then,
  ) = _CopyWithImpl$Query$Review$Review;

  factory CopyWith$Query$Review$Review.stub(TRes res) =
      _CopyWithStubImpl$Query$Review$Review;

  TRes call({
    int? id,
    int? rating,
    int? ratingAmount,
    String? summary,
    Query$Review$Review$media? media,
    Fragment$UserFragment? user,
    String? $__typename,
    String? body,
    Enum$ReviewRating? userRating,
    int? score,
    int? createdAt,
  });
  CopyWith$Query$Review$Review$media<TRes> get media;
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$Review$Review<TRes>
    implements CopyWith$Query$Review$Review<TRes> {
  _CopyWithImpl$Query$Review$Review(
    this._instance,
    this._then,
  );

  final Query$Review$Review _instance;

  final TRes Function(Query$Review$Review) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? rating = _undefined,
    Object? ratingAmount = _undefined,
    Object? summary = _undefined,
    Object? media = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
    Object? body = _undefined,
    Object? userRating = _undefined,
    Object? score = _undefined,
    Object? createdAt = _undefined,
  }) =>
      _then(Query$Review$Review(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        ratingAmount: ratingAmount == _undefined
            ? _instance.ratingAmount
            : (ratingAmount as int?),
        summary:
            summary == _undefined ? _instance.summary : (summary as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$Review$Review$media?),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        body: body == _undefined ? _instance.body : (body as String?),
        userRating: userRating == _undefined
            ? _instance.userRating
            : (userRating as Enum$ReviewRating?),
        score: score == _undefined ? _instance.score : (score as int?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
      ));

  CopyWith$Query$Review$Review$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$Review$Review$media.stub(_then(_instance))
        : CopyWith$Query$Review$Review$media(
            local$media, (e) => call(media: e));
  }

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Review$Review<TRes>
    implements CopyWith$Query$Review$Review<TRes> {
  _CopyWithStubImpl$Query$Review$Review(this._res);

  TRes _res;

  call({
    int? id,
    int? rating,
    int? ratingAmount,
    String? summary,
    Query$Review$Review$media? media,
    Fragment$UserFragment? user,
    String? $__typename,
    String? body,
    Enum$ReviewRating? userRating,
    int? score,
    int? createdAt,
  }) =>
      _res;

  CopyWith$Query$Review$Review$media<TRes> get media =>
      CopyWith$Query$Review$Review$media.stub(_res);

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$Review$Review$media implements Fragment$ReviewFragment$media {
  Query$Review$Review$media({
    required this.id,
    this.title,
    this.type,
    this.bannerImage,
    this.$__typename = 'Media',
  });

  factory Query$Review$Review$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$bannerImage = json['bannerImage'];
    final l$$__typename = json['__typename'];
    return Query$Review$Review$media(
      id: (l$id as int),
      title: l$title == null
          ? null
          : Query$Review$Review$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      bannerImage: (l$bannerImage as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$Review$Review$media$title? title;

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
    if (!(other is Query$Review$Review$media) ||
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

extension UtilityExtension$Query$Review$Review$media
    on Query$Review$Review$media {
  CopyWith$Query$Review$Review$media<Query$Review$Review$media> get copyWith =>
      CopyWith$Query$Review$Review$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Review$Review$media<TRes> {
  factory CopyWith$Query$Review$Review$media(
    Query$Review$Review$media instance,
    TRes Function(Query$Review$Review$media) then,
  ) = _CopyWithImpl$Query$Review$Review$media;

  factory CopyWith$Query$Review$Review$media.stub(TRes res) =
      _CopyWithStubImpl$Query$Review$Review$media;

  TRes call({
    int? id,
    Query$Review$Review$media$title? title,
    Enum$MediaType? type,
    String? bannerImage,
    String? $__typename,
  });
  CopyWith$Query$Review$Review$media$title<TRes> get title;
}

class _CopyWithImpl$Query$Review$Review$media<TRes>
    implements CopyWith$Query$Review$Review$media<TRes> {
  _CopyWithImpl$Query$Review$Review$media(
    this._instance,
    this._then,
  );

  final Query$Review$Review$media _instance;

  final TRes Function(Query$Review$Review$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? bannerImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Review$Review$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as Query$Review$Review$media$title?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Review$Review$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$Review$Review$media$title.stub(_then(_instance))
        : CopyWith$Query$Review$Review$media$title(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImpl$Query$Review$Review$media<TRes>
    implements CopyWith$Query$Review$Review$media<TRes> {
  _CopyWithStubImpl$Query$Review$Review$media(this._res);

  TRes _res;

  call({
    int? id,
    Query$Review$Review$media$title? title,
    Enum$MediaType? type,
    String? bannerImage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Review$Review$media$title<TRes> get title =>
      CopyWith$Query$Review$Review$media$title.stub(_res);
}

class Query$Review$Review$media$title
    implements Fragment$ReviewFragment$media$title {
  Query$Review$Review$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$Review$Review$media$title.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Review$Review$media$title(
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
    if (!(other is Query$Review$Review$media$title) ||
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

extension UtilityExtension$Query$Review$Review$media$title
    on Query$Review$Review$media$title {
  CopyWith$Query$Review$Review$media$title<Query$Review$Review$media$title>
      get copyWith => CopyWith$Query$Review$Review$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Review$Review$media$title<TRes> {
  factory CopyWith$Query$Review$Review$media$title(
    Query$Review$Review$media$title instance,
    TRes Function(Query$Review$Review$media$title) then,
  ) = _CopyWithImpl$Query$Review$Review$media$title;

  factory CopyWith$Query$Review$Review$media$title.stub(TRes res) =
      _CopyWithStubImpl$Query$Review$Review$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Review$Review$media$title<TRes>
    implements CopyWith$Query$Review$Review$media$title<TRes> {
  _CopyWithImpl$Query$Review$Review$media$title(
    this._instance,
    this._then,
  );

  final Query$Review$Review$media$title _instance;

  final TRes Function(Query$Review$Review$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Review$Review$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Review$Review$media$title<TRes>
    implements CopyWith$Query$Review$Review$media$title<TRes> {
  _CopyWithStubImpl$Query$Review$Review$media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$RateReview {
  factory Variables$Mutation$RateReview({
    int? id,
    Enum$ReviewRating? rating,
  }) =>
      Variables$Mutation$RateReview._({
        if (id != null) r'id': id,
        if (rating != null) r'rating': rating,
      });

  Variables$Mutation$RateReview._(this._$data);

  factory Variables$Mutation$RateReview.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('rating')) {
      final l$rating = data['rating'];
      result$data['rating'] = l$rating == null
          ? null
          : fromJson$Enum$ReviewRating((l$rating as String));
    }
    return Variables$Mutation$RateReview._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  Enum$ReviewRating? get rating => (_$data['rating'] as Enum$ReviewRating?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('rating')) {
      final l$rating = rating;
      result$data['rating'] =
          l$rating == null ? null : toJson$Enum$ReviewRating(l$rating);
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$RateReview<Variables$Mutation$RateReview>
      get copyWith => CopyWith$Variables$Mutation$RateReview(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$RateReview) ||
        runtimeType != other.runtimeType) {
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
    final l$id = id;
    final l$rating = rating;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('rating') ? l$rating : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$RateReview<TRes> {
  factory CopyWith$Variables$Mutation$RateReview(
    Variables$Mutation$RateReview instance,
    TRes Function(Variables$Mutation$RateReview) then,
  ) = _CopyWithImpl$Variables$Mutation$RateReview;

  factory CopyWith$Variables$Mutation$RateReview.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RateReview;

  TRes call({
    int? id,
    Enum$ReviewRating? rating,
  });
}

class _CopyWithImpl$Variables$Mutation$RateReview<TRes>
    implements CopyWith$Variables$Mutation$RateReview<TRes> {
  _CopyWithImpl$Variables$Mutation$RateReview(
    this._instance,
    this._then,
  );

  final Variables$Mutation$RateReview _instance;

  final TRes Function(Variables$Mutation$RateReview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? rating = _undefined,
  }) =>
      _then(Variables$Mutation$RateReview._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (rating != _undefined) 'rating': (rating as Enum$ReviewRating?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$RateReview<TRes>
    implements CopyWith$Variables$Mutation$RateReview<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RateReview(this._res);

  TRes _res;

  call({
    int? id,
    Enum$ReviewRating? rating,
  }) =>
      _res;
}

class Mutation$RateReview {
  Mutation$RateReview({
    this.RateReview,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RateReview.fromJson(Map<String, dynamic> json) {
    final l$RateReview = json['RateReview'];
    final l$$__typename = json['__typename'];
    return Mutation$RateReview(
      RateReview: l$RateReview == null
          ? null
          : Mutation$RateReview$RateReview.fromJson(
              (l$RateReview as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RateReview$RateReview? RateReview;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$RateReview = RateReview;
    _resultData['RateReview'] = l$RateReview?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$RateReview = RateReview;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$RateReview,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RateReview) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$RateReview = RateReview;
    final lOther$RateReview = other.RateReview;
    if (l$RateReview != lOther$RateReview) {
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

extension UtilityExtension$Mutation$RateReview on Mutation$RateReview {
  CopyWith$Mutation$RateReview<Mutation$RateReview> get copyWith =>
      CopyWith$Mutation$RateReview(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$RateReview<TRes> {
  factory CopyWith$Mutation$RateReview(
    Mutation$RateReview instance,
    TRes Function(Mutation$RateReview) then,
  ) = _CopyWithImpl$Mutation$RateReview;

  factory CopyWith$Mutation$RateReview.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RateReview;

  TRes call({
    Mutation$RateReview$RateReview? RateReview,
    String? $__typename,
  });
  CopyWith$Mutation$RateReview$RateReview<TRes> get RateReview;
}

class _CopyWithImpl$Mutation$RateReview<TRes>
    implements CopyWith$Mutation$RateReview<TRes> {
  _CopyWithImpl$Mutation$RateReview(
    this._instance,
    this._then,
  );

  final Mutation$RateReview _instance;

  final TRes Function(Mutation$RateReview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? RateReview = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RateReview(
        RateReview: RateReview == _undefined
            ? _instance.RateReview
            : (RateReview as Mutation$RateReview$RateReview?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$RateReview$RateReview<TRes> get RateReview {
    final local$RateReview = _instance.RateReview;
    return local$RateReview == null
        ? CopyWith$Mutation$RateReview$RateReview.stub(_then(_instance))
        : CopyWith$Mutation$RateReview$RateReview(
            local$RateReview, (e) => call(RateReview: e));
  }
}

class _CopyWithStubImpl$Mutation$RateReview<TRes>
    implements CopyWith$Mutation$RateReview<TRes> {
  _CopyWithStubImpl$Mutation$RateReview(this._res);

  TRes _res;

  call({
    Mutation$RateReview$RateReview? RateReview,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$RateReview$RateReview<TRes> get RateReview =>
      CopyWith$Mutation$RateReview$RateReview.stub(_res);
}

const documentNodeMutationRateReview = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'RateReview'),
    variableDefinitions: [
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
        variable: VariableNode(name: NameNode(value: 'rating')),
        type: NamedTypeNode(
          name: NameNode(value: 'ReviewRating'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'RateReview'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'reviewId'),
            value: VariableNode(name: NameNode(value: 'id')),
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
            name: NameNode(value: 'ratingAmount'),
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
]);

class Mutation$RateReview$RateReview {
  Mutation$RateReview$RateReview({
    required this.id,
    this.rating,
    this.ratingAmount,
    this.userRating,
    this.$__typename = 'Review',
  });

  factory Mutation$RateReview$RateReview.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$rating = json['rating'];
    final l$ratingAmount = json['ratingAmount'];
    final l$userRating = json['userRating'];
    final l$$__typename = json['__typename'];
    return Mutation$RateReview$RateReview(
      id: (l$id as int),
      rating: (l$rating as int?),
      ratingAmount: (l$ratingAmount as int?),
      userRating: l$userRating == null
          ? null
          : fromJson$Enum$ReviewRating((l$userRating as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? rating;

  final int? ratingAmount;

  final Enum$ReviewRating? userRating;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$ratingAmount = ratingAmount;
    _resultData['ratingAmount'] = l$ratingAmount;
    final l$userRating = userRating;
    _resultData['userRating'] =
        l$userRating == null ? null : toJson$Enum$ReviewRating(l$userRating);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$rating = rating;
    final l$ratingAmount = ratingAmount;
    final l$userRating = userRating;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$rating,
      l$ratingAmount,
      l$userRating,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RateReview$RateReview) ||
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
    final l$userRating = userRating;
    final lOther$userRating = other.userRating;
    if (l$userRating != lOther$userRating) {
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

extension UtilityExtension$Mutation$RateReview$RateReview
    on Mutation$RateReview$RateReview {
  CopyWith$Mutation$RateReview$RateReview<Mutation$RateReview$RateReview>
      get copyWith => CopyWith$Mutation$RateReview$RateReview(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RateReview$RateReview<TRes> {
  factory CopyWith$Mutation$RateReview$RateReview(
    Mutation$RateReview$RateReview instance,
    TRes Function(Mutation$RateReview$RateReview) then,
  ) = _CopyWithImpl$Mutation$RateReview$RateReview;

  factory CopyWith$Mutation$RateReview$RateReview.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RateReview$RateReview;

  TRes call({
    int? id,
    int? rating,
    int? ratingAmount,
    Enum$ReviewRating? userRating,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RateReview$RateReview<TRes>
    implements CopyWith$Mutation$RateReview$RateReview<TRes> {
  _CopyWithImpl$Mutation$RateReview$RateReview(
    this._instance,
    this._then,
  );

  final Mutation$RateReview$RateReview _instance;

  final TRes Function(Mutation$RateReview$RateReview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? rating = _undefined,
    Object? ratingAmount = _undefined,
    Object? userRating = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RateReview$RateReview(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        ratingAmount: ratingAmount == _undefined
            ? _instance.ratingAmount
            : (ratingAmount as int?),
        userRating: userRating == _undefined
            ? _instance.userRating
            : (userRating as Enum$ReviewRating?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RateReview$RateReview<TRes>
    implements CopyWith$Mutation$RateReview$RateReview<TRes> {
  _CopyWithStubImpl$Mutation$RateReview$RateReview(this._res);

  TRes _res;

  call({
    int? id,
    int? rating,
    int? ratingAmount,
    Enum$ReviewRating? userRating,
    String? $__typename,
  }) =>
      _res;
}
