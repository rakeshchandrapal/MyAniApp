// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$GenreCollection {
  Query$GenreCollection({
    this.genres,
    this.tags,
    this.$__typename = 'Query',
  });

  factory Query$GenreCollection.fromJson(Map<String, dynamic> json) {
    final l$genres = json['genres'];
    final l$tags = json['tags'];
    final l$$__typename = json['__typename'];
    return Query$GenreCollection(
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      tags: (l$tags as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GenreCollection$tags.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?>? genres;

  final List<Query$GenreCollection$tags?>? tags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$tags = tags;
    _resultData['tags'] = l$tags?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$genres = genres;
    final l$tags = tags;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$tags == null ? null : Object.hashAll(l$tags.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GenreCollection) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$genres = genres;
    final lOther$genres = other.genres;
    if (l$genres != null && lOther$genres != null) {
      if (l$genres.length != lOther$genres.length) {
        return false;
      }
      for (int i = 0; i < l$genres.length; i++) {
        final l$genres$entry = l$genres[i];
        final lOther$genres$entry = lOther$genres[i];
        if (l$genres$entry != lOther$genres$entry) {
          return false;
        }
      }
    } else if (l$genres != lOther$genres) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags != null && lOther$tags != null) {
      if (l$tags.length != lOther$tags.length) {
        return false;
      }
      for (int i = 0; i < l$tags.length; i++) {
        final l$tags$entry = l$tags[i];
        final lOther$tags$entry = lOther$tags[i];
        if (l$tags$entry != lOther$tags$entry) {
          return false;
        }
      }
    } else if (l$tags != lOther$tags) {
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

extension UtilityExtension$Query$GenreCollection on Query$GenreCollection {
  CopyWith$Query$GenreCollection<Query$GenreCollection> get copyWith =>
      CopyWith$Query$GenreCollection(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GenreCollection<TRes> {
  factory CopyWith$Query$GenreCollection(
    Query$GenreCollection instance,
    TRes Function(Query$GenreCollection) then,
  ) = _CopyWithImpl$Query$GenreCollection;

  factory CopyWith$Query$GenreCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$GenreCollection;

  TRes call({
    List<String?>? genres,
    List<Query$GenreCollection$tags?>? tags,
    String? $__typename,
  });
  TRes tags(
      Iterable<Query$GenreCollection$tags?>? Function(
              Iterable<
                  CopyWith$Query$GenreCollection$tags<
                      Query$GenreCollection$tags>?>?)
          _fn);
}

class _CopyWithImpl$Query$GenreCollection<TRes>
    implements CopyWith$Query$GenreCollection<TRes> {
  _CopyWithImpl$Query$GenreCollection(
    this._instance,
    this._then,
  );

  final Query$GenreCollection _instance;

  final TRes Function(Query$GenreCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? genres = _undefined,
    Object? tags = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GenreCollection(
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        tags: tags == _undefined
            ? _instance.tags
            : (tags as List<Query$GenreCollection$tags?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes tags(
          Iterable<Query$GenreCollection$tags?>? Function(
                  Iterable<
                      CopyWith$Query$GenreCollection$tags<
                          Query$GenreCollection$tags>?>?)
              _fn) =>
      call(
          tags: _fn(_instance.tags?.map((e) => e == null
              ? null
              : CopyWith$Query$GenreCollection$tags(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GenreCollection<TRes>
    implements CopyWith$Query$GenreCollection<TRes> {
  _CopyWithStubImpl$Query$GenreCollection(this._res);

  TRes _res;

  call({
    List<String?>? genres,
    List<Query$GenreCollection$tags?>? tags,
    String? $__typename,
  }) =>
      _res;
  tags(_fn) => _res;
}

const documentNodeQueryGenreCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GenreCollection'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'GenreCollection'),
        alias: NameNode(value: 'genres'),
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'MediaTagCollection'),
        alias: NameNode(value: 'tags'),
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isAdult'),
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
Query$GenreCollection _parserFn$Query$GenreCollection(
        Map<String, dynamic> data) =>
    Query$GenreCollection.fromJson(data);
typedef OnQueryComplete$Query$GenreCollection = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GenreCollection?,
);

class Options$Query$GenreCollection
    extends graphql.QueryOptions<Query$GenreCollection> {
  Options$Query$GenreCollection({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GenreCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GenreCollection? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                    data == null ? null : _parserFn$Query$GenreCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryGenreCollection,
          parserFn: _parserFn$Query$GenreCollection,
        );

  final OnQueryComplete$Query$GenreCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GenreCollection
    extends graphql.WatchQueryOptions<Query$GenreCollection> {
  WatchOptions$Query$GenreCollection({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GenreCollection? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGenreCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GenreCollection,
        );
}

class FetchMoreOptions$Query$GenreCollection extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GenreCollection(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGenreCollection,
        );
}

extension ClientExtension$Query$GenreCollection on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GenreCollection>> query$GenreCollection(
          [Options$Query$GenreCollection? options]) async =>
      await this.query(options ?? Options$Query$GenreCollection());
  graphql.ObservableQuery<Query$GenreCollection> watchQuery$GenreCollection(
          [WatchOptions$Query$GenreCollection? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GenreCollection());
  void writeQuery$GenreCollection({
    required Query$GenreCollection data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGenreCollection)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GenreCollection? readQuery$GenreCollection({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGenreCollection)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GenreCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GenreCollection> useQuery$GenreCollection(
        [Options$Query$GenreCollection? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GenreCollection());
graphql.ObservableQuery<Query$GenreCollection> useWatchQuery$GenreCollection(
        [WatchOptions$Query$GenreCollection? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GenreCollection());

class Query$GenreCollection$Widget
    extends graphql_flutter.Query<Query$GenreCollection> {
  Query$GenreCollection$Widget({
    widgets.Key? key,
    Options$Query$GenreCollection? options,
    required graphql_flutter.QueryBuilder<Query$GenreCollection> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GenreCollection(),
          builder: builder,
        );
}

class Query$GenreCollection$tags {
  Query$GenreCollection$tags({
    required this.name,
    this.description,
    this.category,
    this.isAdult,
    this.$__typename = 'MediaTag',
  });

  factory Query$GenreCollection$tags.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$description = json['description'];
    final l$category = json['category'];
    final l$isAdult = json['isAdult'];
    final l$$__typename = json['__typename'];
    return Query$GenreCollection$tags(
      name: (l$name as String),
      description: (l$description as String?),
      category: (l$category as String?),
      isAdult: (l$isAdult as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String? description;

  final String? category;

  final bool? isAdult;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$description = description;
    final l$category = category;
    final l$isAdult = isAdult;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$description,
      l$category,
      l$isAdult,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GenreCollection$tags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (l$isAdult != lOther$isAdult) {
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

extension UtilityExtension$Query$GenreCollection$tags
    on Query$GenreCollection$tags {
  CopyWith$Query$GenreCollection$tags<Query$GenreCollection$tags>
      get copyWith => CopyWith$Query$GenreCollection$tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GenreCollection$tags<TRes> {
  factory CopyWith$Query$GenreCollection$tags(
    Query$GenreCollection$tags instance,
    TRes Function(Query$GenreCollection$tags) then,
  ) = _CopyWithImpl$Query$GenreCollection$tags;

  factory CopyWith$Query$GenreCollection$tags.stub(TRes res) =
      _CopyWithStubImpl$Query$GenreCollection$tags;

  TRes call({
    String? name,
    String? description,
    String? category,
    bool? isAdult,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GenreCollection$tags<TRes>
    implements CopyWith$Query$GenreCollection$tags<TRes> {
  _CopyWithImpl$Query$GenreCollection$tags(
    this._instance,
    this._then,
  );

  final Query$GenreCollection$tags _instance;

  final TRes Function(Query$GenreCollection$tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? description = _undefined,
    Object? category = _undefined,
    Object? isAdult = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GenreCollection$tags(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        category:
            category == _undefined ? _instance.category : (category as String?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GenreCollection$tags<TRes>
    implements CopyWith$Query$GenreCollection$tags<TRes> {
  _CopyWithStubImpl$Query$GenreCollection$tags(this._res);

  TRes _res;

  call({
    String? name,
    String? description,
    String? category,
    bool? isAdult,
    String? $__typename,
  }) =>
      _res;
}
