// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import '../../../graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

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
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'body'),
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
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'name'),
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
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'bannerImage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'userPreferred'),
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
]);
Query$Review _parserFn$Query$Review(Map<String, dynamic> data) =>
    Query$Review.fromJson(data);
typedef OnQueryComplete$Query$Review = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Review?,
);

class Options$Query$Review extends graphql.QueryOptions<Query$Review> {
  Options$Query$Review({
    String? operationName,
    Variables$Query$Review? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Review? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Review? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$Review(data),
                  ),
          onError: onError,
          document: documentNodeQueryReview,
          parserFn: _parserFn$Query$Review,
        );

  final OnQueryComplete$Query$Review? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Review
    extends graphql.WatchQueryOptions<Query$Review> {
  WatchOptions$Query$Review({
    String? operationName,
    Variables$Query$Review? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Review? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryReview,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Review,
        );
}

class FetchMoreOptions$Query$Review extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Review({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Review? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryReview,
        );
}

extension ClientExtension$Query$Review on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Review>> query$Review(
          [Options$Query$Review? options]) async =>
      await this.query(options ?? Options$Query$Review());
  graphql.ObservableQuery<Query$Review> watchQuery$Review(
          [WatchOptions$Query$Review? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Review());
  void writeQuery$Review({
    required Query$Review data,
    Variables$Query$Review? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryReview),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Review? readQuery$Review({
    Variables$Query$Review? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryReview),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Review.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Review> useQuery$Review(
        [Options$Query$Review? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Review());
graphql.ObservableQuery<Query$Review> useWatchQuery$Review(
        [WatchOptions$Query$Review? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Review());

class Query$Review$Widget extends graphql_flutter.Query<Query$Review> {
  Query$Review$Widget({
    widgets.Key? key,
    Options$Query$Review? options,
    required graphql_flutter.QueryBuilder<Query$Review> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Review(),
          builder: builder,
        );
}

class Query$Review$Review {
  Query$Review$Review({
    required this.id,
    this.body,
    this.rating,
    this.ratingAmount,
    this.userRating,
    this.score,
    required this.createdAt,
    this.user,
    this.media,
    this.$__typename = 'Review',
  });

  factory Query$Review$Review.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$body = json['body'];
    final l$rating = json['rating'];
    final l$ratingAmount = json['ratingAmount'];
    final l$userRating = json['userRating'];
    final l$score = json['score'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Review$Review(
      id: (l$id as int),
      body: (l$body as String?),
      rating: (l$rating as int?),
      ratingAmount: (l$ratingAmount as int?),
      userRating: l$userRating == null
          ? null
          : fromJson$Enum$ReviewRating((l$userRating as String)),
      score: (l$score as int?),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : Query$Review$Review$user.fromJson((l$user as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : Query$Review$Review$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? body;

  final int? rating;

  final int? ratingAmount;

  final Enum$ReviewRating? userRating;

  final int? score;

  final int createdAt;

  final Query$Review$Review$user? user;

  final Query$Review$Review$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$body = body;
    _resultData['body'] = l$body;
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$ratingAmount = ratingAmount;
    _resultData['ratingAmount'] = l$ratingAmount;
    final l$userRating = userRating;
    _resultData['userRating'] =
        l$userRating == null ? null : toJson$Enum$ReviewRating(l$userRating);
    final l$score = score;
    _resultData['score'] = l$score;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$body = body;
    final l$rating = rating;
    final l$ratingAmount = ratingAmount;
    final l$userRating = userRating;
    final l$score = score;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$body,
      l$rating,
      l$ratingAmount,
      l$userRating,
      l$score,
      l$createdAt,
      l$user,
      l$media,
      l$$__typename,
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
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
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
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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
    String? body,
    int? rating,
    int? ratingAmount,
    Enum$ReviewRating? userRating,
    int? score,
    int? createdAt,
    Query$Review$Review$user? user,
    Query$Review$Review$media? media,
    String? $__typename,
  });
  CopyWith$Query$Review$Review$user<TRes> get user;
  CopyWith$Query$Review$Review$media<TRes> get media;
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
    Object? body = _undefined,
    Object? rating = _undefined,
    Object? ratingAmount = _undefined,
    Object? userRating = _undefined,
    Object? score = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Review$Review(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        body: body == _undefined ? _instance.body : (body as String?),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        ratingAmount: ratingAmount == _undefined
            ? _instance.ratingAmount
            : (ratingAmount as int?),
        userRating: userRating == _undefined
            ? _instance.userRating
            : (userRating as Enum$ReviewRating?),
        score: score == _undefined ? _instance.score : (score as int?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        user: user == _undefined
            ? _instance.user
            : (user as Query$Review$Review$user?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$Review$Review$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Review$Review$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$Review$Review$user.stub(_then(_instance))
        : CopyWith$Query$Review$Review$user(local$user, (e) => call(user: e));
  }

  CopyWith$Query$Review$Review$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$Review$Review$media.stub(_then(_instance))
        : CopyWith$Query$Review$Review$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$Review$Review<TRes>
    implements CopyWith$Query$Review$Review<TRes> {
  _CopyWithStubImpl$Query$Review$Review(this._res);

  TRes _res;

  call({
    int? id,
    String? body,
    int? rating,
    int? ratingAmount,
    Enum$ReviewRating? userRating,
    int? score,
    int? createdAt,
    Query$Review$Review$user? user,
    Query$Review$Review$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Review$Review$user<TRes> get user =>
      CopyWith$Query$Review$Review$user.stub(_res);

  CopyWith$Query$Review$Review$media<TRes> get media =>
      CopyWith$Query$Review$Review$media.stub(_res);
}

class Query$Review$Review$user {
  Query$Review$Review$user({
    required this.id,
    required this.name,
    this.$__typename = 'User',
  });

  factory Query$Review$Review$user.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Review$Review$user(
      id: (l$id as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Review$Review$user) ||
        runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Query$Review$Review$user
    on Query$Review$Review$user {
  CopyWith$Query$Review$Review$user<Query$Review$Review$user> get copyWith =>
      CopyWith$Query$Review$Review$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Review$Review$user<TRes> {
  factory CopyWith$Query$Review$Review$user(
    Query$Review$Review$user instance,
    TRes Function(Query$Review$Review$user) then,
  ) = _CopyWithImpl$Query$Review$Review$user;

  factory CopyWith$Query$Review$Review$user.stub(TRes res) =
      _CopyWithStubImpl$Query$Review$Review$user;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Review$Review$user<TRes>
    implements CopyWith$Query$Review$Review$user<TRes> {
  _CopyWithImpl$Query$Review$Review$user(
    this._instance,
    this._then,
  );

  final Query$Review$Review$user _instance;

  final TRes Function(Query$Review$Review$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Review$Review$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Review$Review$user<TRes>
    implements CopyWith$Query$Review$Review$user<TRes> {
  _CopyWithStubImpl$Query$Review$Review$user(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Review$Review$media {
  Query$Review$Review$media({
    required this.id,
    this.bannerImage,
    this.title,
    this.$__typename = 'Media',
  });

  factory Query$Review$Review$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$bannerImage = json['bannerImage'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$Review$Review$media(
      id: (l$id as int),
      bannerImage: (l$bannerImage as String?),
      title: l$title == null
          ? null
          : Query$Review$Review$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? bannerImage;

  final Query$Review$Review$media$title? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$bannerImage = bannerImage;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$bannerImage,
      l$title,
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
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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
    String? bannerImage,
    Query$Review$Review$media$title? title,
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
    Object? bannerImage = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Review$Review$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        title: title == _undefined
            ? _instance.title
            : (title as Query$Review$Review$media$title?),
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
    String? bannerImage,
    Query$Review$Review$media$title? title,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Review$Review$media$title<TRes> get title =>
      CopyWith$Query$Review$Review$media$title.stub(_res);
}

class Query$Review$Review$media$title {
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
Mutation$RateReview _parserFn$Mutation$RateReview(Map<String, dynamic> data) =>
    Mutation$RateReview.fromJson(data);
typedef OnMutationCompleted$Mutation$RateReview = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$RateReview?,
);

class Options$Mutation$RateReview
    extends graphql.MutationOptions<Mutation$RateReview> {
  Options$Mutation$RateReview({
    String? operationName,
    Variables$Mutation$RateReview? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RateReview? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RateReview? onCompleted,
    graphql.OnMutationUpdate<Mutation$RateReview>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$RateReview(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRateReview,
          parserFn: _parserFn$Mutation$RateReview,
        );

  final OnMutationCompleted$Mutation$RateReview? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$RateReview
    extends graphql.WatchQueryOptions<Mutation$RateReview> {
  WatchOptions$Mutation$RateReview({
    String? operationName,
    Variables$Mutation$RateReview? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RateReview? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationRateReview,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$RateReview,
        );
}

extension ClientExtension$Mutation$RateReview on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RateReview>> mutate$RateReview(
          [Options$Mutation$RateReview? options]) async =>
      await this.mutate(options ?? Options$Mutation$RateReview());
  graphql.ObservableQuery<Mutation$RateReview> watchMutation$RateReview(
          [WatchOptions$Mutation$RateReview? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$RateReview());
}

class Mutation$RateReview$HookResult {
  Mutation$RateReview$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$RateReview runMutation;

  final graphql.QueryResult<Mutation$RateReview> result;
}

Mutation$RateReview$HookResult useMutation$RateReview(
    [WidgetOptions$Mutation$RateReview? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$RateReview());
  return Mutation$RateReview$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$RateReview> useWatchMutation$RateReview(
        [WatchOptions$Mutation$RateReview? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$RateReview());

class WidgetOptions$Mutation$RateReview
    extends graphql.MutationOptions<Mutation$RateReview> {
  WidgetOptions$Mutation$RateReview({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RateReview? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RateReview? onCompleted,
    graphql.OnMutationUpdate<Mutation$RateReview>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$RateReview(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRateReview,
          parserFn: _parserFn$Mutation$RateReview,
        );

  final OnMutationCompleted$Mutation$RateReview? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$RateReview
    = graphql.MultiSourceResult<Mutation$RateReview> Function({
  Variables$Mutation$RateReview? variables,
  Object? optimisticResult,
  Mutation$RateReview? typedOptimisticResult,
});
typedef Builder$Mutation$RateReview = widgets.Widget Function(
  RunMutation$Mutation$RateReview,
  graphql.QueryResult<Mutation$RateReview>?,
);

class Mutation$RateReview$Widget
    extends graphql_flutter.Mutation<Mutation$RateReview> {
  Mutation$RateReview$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$RateReview? options,
    required Builder$Mutation$RateReview builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$RateReview(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

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
