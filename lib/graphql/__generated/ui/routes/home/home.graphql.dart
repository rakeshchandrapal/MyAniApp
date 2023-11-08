// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import '../../../graphql/fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$DummyData {
  Query$DummyData({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$DummyData.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$DummyData(
      Media: l$Media == null
          ? null
          : Query$DummyData$Media.fromJson((l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$DummyData$Media? Media;

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
    if (!(other is Query$DummyData) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$DummyData on Query$DummyData {
  CopyWith$Query$DummyData<Query$DummyData> get copyWith =>
      CopyWith$Query$DummyData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DummyData<TRes> {
  factory CopyWith$Query$DummyData(
    Query$DummyData instance,
    TRes Function(Query$DummyData) then,
  ) = _CopyWithImpl$Query$DummyData;

  factory CopyWith$Query$DummyData.stub(TRes res) =
      _CopyWithStubImpl$Query$DummyData;

  TRes call({
    Query$DummyData$Media? Media,
    String? $__typename,
  });
  CopyWith$Query$DummyData$Media<TRes> get Media;
}

class _CopyWithImpl$Query$DummyData<TRes>
    implements CopyWith$Query$DummyData<TRes> {
  _CopyWithImpl$Query$DummyData(
    this._instance,
    this._then,
  );

  final Query$DummyData _instance;

  final TRes Function(Query$DummyData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DummyData(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Query$DummyData$Media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$DummyData$Media<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Query$DummyData$Media.stub(_then(_instance))
        : CopyWith$Query$DummyData$Media(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$DummyData<TRes>
    implements CopyWith$Query$DummyData<TRes> {
  _CopyWithStubImpl$Query$DummyData(this._res);

  TRes _res;

  call({
    Query$DummyData$Media? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$DummyData$Media<TRes> get Media =>
      CopyWith$Query$DummyData$Media.stub(_res);
}

const documentNodeQueryDummyData = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'DummyData'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Media'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: IntValueNode(value: '1'),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'asHtml'),
                value: BooleanValueNode(value: false),
              )
            ],
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
            name: NameNode(value: 'coverImage'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'extraLarge'),
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
]);
Query$DummyData _parserFn$Query$DummyData(Map<String, dynamic> data) =>
    Query$DummyData.fromJson(data);
typedef OnQueryComplete$Query$DummyData = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$DummyData?,
);

class Options$Query$DummyData extends graphql.QueryOptions<Query$DummyData> {
  Options$Query$DummyData({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$DummyData? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$DummyData? onComplete,
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
                    data == null ? null : _parserFn$Query$DummyData(data),
                  ),
          onError: onError,
          document: documentNodeQueryDummyData,
          parserFn: _parserFn$Query$DummyData,
        );

  final OnQueryComplete$Query$DummyData? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$DummyData
    extends graphql.WatchQueryOptions<Query$DummyData> {
  WatchOptions$Query$DummyData({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$DummyData? typedOptimisticResult,
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
          document: documentNodeQueryDummyData,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$DummyData,
        );
}

class FetchMoreOptions$Query$DummyData extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$DummyData({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryDummyData,
        );
}

extension ClientExtension$Query$DummyData on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$DummyData>> query$DummyData(
          [Options$Query$DummyData? options]) async =>
      await this.query(options ?? Options$Query$DummyData());
  graphql.ObservableQuery<Query$DummyData> watchQuery$DummyData(
          [WatchOptions$Query$DummyData? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$DummyData());
  void writeQuery$DummyData({
    required Query$DummyData data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryDummyData)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$DummyData? readQuery$DummyData({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryDummyData)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$DummyData.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$DummyData> useQuery$DummyData(
        [Options$Query$DummyData? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$DummyData());
graphql.ObservableQuery<Query$DummyData> useWatchQuery$DummyData(
        [WatchOptions$Query$DummyData? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$DummyData());

class Query$DummyData$Widget extends graphql_flutter.Query<Query$DummyData> {
  Query$DummyData$Widget({
    widgets.Key? key,
    Options$Query$DummyData? options,
    required graphql_flutter.QueryBuilder<Query$DummyData> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$DummyData(),
          builder: builder,
        );
}

class Query$DummyData$Media {
  Query$DummyData$Media({
    this.description,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory Query$DummyData$Media.fromJson(Map<String, dynamic> json) {
    final l$description = json['description'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return Query$DummyData$Media(
      description: (l$description as String?),
      title: l$title == null
          ? null
          : Query$DummyData$Media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Query$DummyData$Media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? description;

  final Query$DummyData$Media$title? title;

  final Query$DummyData$Media$coverImage? coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$description = description;
    _resultData['description'] = l$description;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$description,
      l$title,
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$DummyData$Media) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
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

extension UtilityExtension$Query$DummyData$Media on Query$DummyData$Media {
  CopyWith$Query$DummyData$Media<Query$DummyData$Media> get copyWith =>
      CopyWith$Query$DummyData$Media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DummyData$Media<TRes> {
  factory CopyWith$Query$DummyData$Media(
    Query$DummyData$Media instance,
    TRes Function(Query$DummyData$Media) then,
  ) = _CopyWithImpl$Query$DummyData$Media;

  factory CopyWith$Query$DummyData$Media.stub(TRes res) =
      _CopyWithStubImpl$Query$DummyData$Media;

  TRes call({
    String? description,
    Query$DummyData$Media$title? title,
    Query$DummyData$Media$coverImage? coverImage,
    String? $__typename,
  });
  CopyWith$Query$DummyData$Media$title<TRes> get title;
  CopyWith$Query$DummyData$Media$coverImage<TRes> get coverImage;
}

class _CopyWithImpl$Query$DummyData$Media<TRes>
    implements CopyWith$Query$DummyData$Media<TRes> {
  _CopyWithImpl$Query$DummyData$Media(
    this._instance,
    this._then,
  );

  final Query$DummyData$Media _instance;

  final TRes Function(Query$DummyData$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DummyData$Media(
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        title: title == _undefined
            ? _instance.title
            : (title as Query$DummyData$Media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Query$DummyData$Media$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$DummyData$Media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$DummyData$Media$title.stub(_then(_instance))
        : CopyWith$Query$DummyData$Media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$DummyData$Media$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$DummyData$Media$coverImage.stub(_then(_instance))
        : CopyWith$Query$DummyData$Media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Query$DummyData$Media<TRes>
    implements CopyWith$Query$DummyData$Media<TRes> {
  _CopyWithStubImpl$Query$DummyData$Media(this._res);

  TRes _res;

  call({
    String? description,
    Query$DummyData$Media$title? title,
    Query$DummyData$Media$coverImage? coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$DummyData$Media$title<TRes> get title =>
      CopyWith$Query$DummyData$Media$title.stub(_res);

  CopyWith$Query$DummyData$Media$coverImage<TRes> get coverImage =>
      CopyWith$Query$DummyData$Media$coverImage.stub(_res);
}

class Query$DummyData$Media$title {
  Query$DummyData$Media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$DummyData$Media$title.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$DummyData$Media$title(
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
    if (!(other is Query$DummyData$Media$title) ||
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

extension UtilityExtension$Query$DummyData$Media$title
    on Query$DummyData$Media$title {
  CopyWith$Query$DummyData$Media$title<Query$DummyData$Media$title>
      get copyWith => CopyWith$Query$DummyData$Media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DummyData$Media$title<TRes> {
  factory CopyWith$Query$DummyData$Media$title(
    Query$DummyData$Media$title instance,
    TRes Function(Query$DummyData$Media$title) then,
  ) = _CopyWithImpl$Query$DummyData$Media$title;

  factory CopyWith$Query$DummyData$Media$title.stub(TRes res) =
      _CopyWithStubImpl$Query$DummyData$Media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$DummyData$Media$title<TRes>
    implements CopyWith$Query$DummyData$Media$title<TRes> {
  _CopyWithImpl$Query$DummyData$Media$title(
    this._instance,
    this._then,
  );

  final Query$DummyData$Media$title _instance;

  final TRes Function(Query$DummyData$Media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DummyData$Media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$DummyData$Media$title<TRes>
    implements CopyWith$Query$DummyData$Media$title<TRes> {
  _CopyWithStubImpl$Query$DummyData$Media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$DummyData$Media$coverImage {
  Query$DummyData$Media$coverImage({
    this.extraLarge,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$DummyData$Media$coverImage.fromJson(Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$$__typename = json['__typename'];
    return Query$DummyData$Media$coverImage(
      extraLarge: (l$extraLarge as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? extraLarge;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$extraLarge = extraLarge;
    _resultData['extraLarge'] = l$extraLarge;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$extraLarge = extraLarge;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$extraLarge,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$DummyData$Media$coverImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$extraLarge = extraLarge;
    final lOther$extraLarge = other.extraLarge;
    if (l$extraLarge != lOther$extraLarge) {
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

extension UtilityExtension$Query$DummyData$Media$coverImage
    on Query$DummyData$Media$coverImage {
  CopyWith$Query$DummyData$Media$coverImage<Query$DummyData$Media$coverImage>
      get copyWith => CopyWith$Query$DummyData$Media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DummyData$Media$coverImage<TRes> {
  factory CopyWith$Query$DummyData$Media$coverImage(
    Query$DummyData$Media$coverImage instance,
    TRes Function(Query$DummyData$Media$coverImage) then,
  ) = _CopyWithImpl$Query$DummyData$Media$coverImage;

  factory CopyWith$Query$DummyData$Media$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Query$DummyData$Media$coverImage;

  TRes call({
    String? extraLarge,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$DummyData$Media$coverImage<TRes>
    implements CopyWith$Query$DummyData$Media$coverImage<TRes> {
  _CopyWithImpl$Query$DummyData$Media$coverImage(
    this._instance,
    this._then,
  );

  final Query$DummyData$Media$coverImage _instance;

  final TRes Function(Query$DummyData$Media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? extraLarge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DummyData$Media$coverImage(
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$DummyData$Media$coverImage<TRes>
    implements CopyWith$Query$DummyData$Media$coverImage<TRes> {
  _CopyWithStubImpl$Query$DummyData$Media$coverImage(this._res);

  TRes _res;

  call({
    String? extraLarge,
    String? $__typename,
  }) =>
      _res;
}

class Query$Browsing {
  Query$Browsing({
    this.trending,
    this.popular,
    this.recent,
    this.$__typename = 'Query',
  });

  factory Query$Browsing.fromJson(Map<String, dynamic> json) {
    final l$trending = json['trending'];
    final l$popular = json['popular'];
    final l$recent = json['recent'];
    final l$$__typename = json['__typename'];
    return Query$Browsing(
      trending: l$trending == null
          ? null
          : Query$Browsing$trending.fromJson(
              (l$trending as Map<String, dynamic>)),
      popular: l$popular == null
          ? null
          : Query$Browsing$popular.fromJson(
              (l$popular as Map<String, dynamic>)),
      recent: l$recent == null
          ? null
          : Query$Browsing$recent.fromJson((l$recent as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Browsing$trending? trending;

  final Query$Browsing$popular? popular;

  final Query$Browsing$recent? recent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$trending = trending;
    _resultData['trending'] = l$trending?.toJson();
    final l$popular = popular;
    _resultData['popular'] = l$popular?.toJson();
    final l$recent = recent;
    _resultData['recent'] = l$recent?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$trending = trending;
    final l$popular = popular;
    final l$recent = recent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$trending,
      l$popular,
      l$recent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Browsing) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$trending = trending;
    final lOther$trending = other.trending;
    if (l$trending != lOther$trending) {
      return false;
    }
    final l$popular = popular;
    final lOther$popular = other.popular;
    if (l$popular != lOther$popular) {
      return false;
    }
    final l$recent = recent;
    final lOther$recent = other.recent;
    if (l$recent != lOther$recent) {
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

extension UtilityExtension$Query$Browsing on Query$Browsing {
  CopyWith$Query$Browsing<Query$Browsing> get copyWith =>
      CopyWith$Query$Browsing(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Browsing<TRes> {
  factory CopyWith$Query$Browsing(
    Query$Browsing instance,
    TRes Function(Query$Browsing) then,
  ) = _CopyWithImpl$Query$Browsing;

  factory CopyWith$Query$Browsing.stub(TRes res) =
      _CopyWithStubImpl$Query$Browsing;

  TRes call({
    Query$Browsing$trending? trending,
    Query$Browsing$popular? popular,
    Query$Browsing$recent? recent,
    String? $__typename,
  });
  CopyWith$Query$Browsing$trending<TRes> get trending;
  CopyWith$Query$Browsing$popular<TRes> get popular;
  CopyWith$Query$Browsing$recent<TRes> get recent;
}

class _CopyWithImpl$Query$Browsing<TRes>
    implements CopyWith$Query$Browsing<TRes> {
  _CopyWithImpl$Query$Browsing(
    this._instance,
    this._then,
  );

  final Query$Browsing _instance;

  final TRes Function(Query$Browsing) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? trending = _undefined,
    Object? popular = _undefined,
    Object? recent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Browsing(
        trending: trending == _undefined
            ? _instance.trending
            : (trending as Query$Browsing$trending?),
        popular: popular == _undefined
            ? _instance.popular
            : (popular as Query$Browsing$popular?),
        recent: recent == _undefined
            ? _instance.recent
            : (recent as Query$Browsing$recent?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Browsing$trending<TRes> get trending {
    final local$trending = _instance.trending;
    return local$trending == null
        ? CopyWith$Query$Browsing$trending.stub(_then(_instance))
        : CopyWith$Query$Browsing$trending(
            local$trending, (e) => call(trending: e));
  }

  CopyWith$Query$Browsing$popular<TRes> get popular {
    final local$popular = _instance.popular;
    return local$popular == null
        ? CopyWith$Query$Browsing$popular.stub(_then(_instance))
        : CopyWith$Query$Browsing$popular(
            local$popular, (e) => call(popular: e));
  }

  CopyWith$Query$Browsing$recent<TRes> get recent {
    final local$recent = _instance.recent;
    return local$recent == null
        ? CopyWith$Query$Browsing$recent.stub(_then(_instance))
        : CopyWith$Query$Browsing$recent(local$recent, (e) => call(recent: e));
  }
}

class _CopyWithStubImpl$Query$Browsing<TRes>
    implements CopyWith$Query$Browsing<TRes> {
  _CopyWithStubImpl$Query$Browsing(this._res);

  TRes _res;

  call({
    Query$Browsing$trending? trending,
    Query$Browsing$popular? popular,
    Query$Browsing$recent? recent,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Browsing$trending<TRes> get trending =>
      CopyWith$Query$Browsing$trending.stub(_res);

  CopyWith$Query$Browsing$popular<TRes> get popular =>
      CopyWith$Query$Browsing$popular.stub(_res);

  CopyWith$Query$Browsing$recent<TRes> get recent =>
      CopyWith$Query$Browsing$recent.stub(_res);
}

const documentNodeQueryBrowsing = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Browsing'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'trending'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '10'),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'TRENDING_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
              ),
            ],
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'popular'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '11'),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'POPULARITY_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
              ),
            ],
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'recent'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '12'),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'ID_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
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
Query$Browsing _parserFn$Query$Browsing(Map<String, dynamic> data) =>
    Query$Browsing.fromJson(data);
typedef OnQueryComplete$Query$Browsing = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Browsing?,
);

class Options$Query$Browsing extends graphql.QueryOptions<Query$Browsing> {
  Options$Query$Browsing({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Browsing? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Browsing? onComplete,
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
                    data == null ? null : _parserFn$Query$Browsing(data),
                  ),
          onError: onError,
          document: documentNodeQueryBrowsing,
          parserFn: _parserFn$Query$Browsing,
        );

  final OnQueryComplete$Query$Browsing? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Browsing
    extends graphql.WatchQueryOptions<Query$Browsing> {
  WatchOptions$Query$Browsing({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Browsing? typedOptimisticResult,
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
          document: documentNodeQueryBrowsing,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Browsing,
        );
}

class FetchMoreOptions$Query$Browsing extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Browsing({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryBrowsing,
        );
}

extension ClientExtension$Query$Browsing on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Browsing>> query$Browsing(
          [Options$Query$Browsing? options]) async =>
      await this.query(options ?? Options$Query$Browsing());
  graphql.ObservableQuery<Query$Browsing> watchQuery$Browsing(
          [WatchOptions$Query$Browsing? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Browsing());
  void writeQuery$Browsing({
    required Query$Browsing data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryBrowsing)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Browsing? readQuery$Browsing({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryBrowsing)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Browsing.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Browsing> useQuery$Browsing(
        [Options$Query$Browsing? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Browsing());
graphql.ObservableQuery<Query$Browsing> useWatchQuery$Browsing(
        [WatchOptions$Query$Browsing? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Browsing());

class Query$Browsing$Widget extends graphql_flutter.Query<Query$Browsing> {
  Query$Browsing$Widget({
    widgets.Key? key,
    Options$Query$Browsing? options,
    required graphql_flutter.QueryBuilder<Query$Browsing> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Browsing(),
          builder: builder,
        );
}

class Query$Browsing$trending {
  Query$Browsing$trending({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Browsing$trending.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Browsing$trending(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaFragment?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Browsing$trending) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
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

extension UtilityExtension$Query$Browsing$trending on Query$Browsing$trending {
  CopyWith$Query$Browsing$trending<Query$Browsing$trending> get copyWith =>
      CopyWith$Query$Browsing$trending(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Browsing$trending<TRes> {
  factory CopyWith$Query$Browsing$trending(
    Query$Browsing$trending instance,
    TRes Function(Query$Browsing$trending) then,
  ) = _CopyWithImpl$Query$Browsing$trending;

  factory CopyWith$Query$Browsing$trending.stub(TRes res) =
      _CopyWithStubImpl$Query$Browsing$trending;

  TRes call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$MediaFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Browsing$trending<TRes>
    implements CopyWith$Query$Browsing$trending<TRes> {
  _CopyWithImpl$Query$Browsing$trending(
    this._instance,
    this._then,
  );

  final Query$Browsing$trending _instance;

  final TRes Function(Query$Browsing$trending) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Browsing$trending(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes media(
          Iterable<Fragment$MediaFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFragment<
                          Fragment$MediaFragment>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Browsing$trending<TRes>
    implements CopyWith$Query$Browsing$trending<TRes> {
  _CopyWithStubImpl$Query$Browsing$trending(this._res);

  TRes _res;

  call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  }) =>
      _res;

  media(_fn) => _res;
}

class Query$Browsing$popular {
  Query$Browsing$popular({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Browsing$popular.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Browsing$popular(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaFragment?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Browsing$popular) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
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

extension UtilityExtension$Query$Browsing$popular on Query$Browsing$popular {
  CopyWith$Query$Browsing$popular<Query$Browsing$popular> get copyWith =>
      CopyWith$Query$Browsing$popular(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Browsing$popular<TRes> {
  factory CopyWith$Query$Browsing$popular(
    Query$Browsing$popular instance,
    TRes Function(Query$Browsing$popular) then,
  ) = _CopyWithImpl$Query$Browsing$popular;

  factory CopyWith$Query$Browsing$popular.stub(TRes res) =
      _CopyWithStubImpl$Query$Browsing$popular;

  TRes call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$MediaFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Browsing$popular<TRes>
    implements CopyWith$Query$Browsing$popular<TRes> {
  _CopyWithImpl$Query$Browsing$popular(
    this._instance,
    this._then,
  );

  final Query$Browsing$popular _instance;

  final TRes Function(Query$Browsing$popular) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Browsing$popular(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes media(
          Iterable<Fragment$MediaFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFragment<
                          Fragment$MediaFragment>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Browsing$popular<TRes>
    implements CopyWith$Query$Browsing$popular<TRes> {
  _CopyWithStubImpl$Query$Browsing$popular(this._res);

  TRes _res;

  call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  }) =>
      _res;

  media(_fn) => _res;
}

class Query$Browsing$recent {
  Query$Browsing$recent({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Browsing$recent.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Browsing$recent(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaFragment?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Browsing$recent) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
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

extension UtilityExtension$Query$Browsing$recent on Query$Browsing$recent {
  CopyWith$Query$Browsing$recent<Query$Browsing$recent> get copyWith =>
      CopyWith$Query$Browsing$recent(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Browsing$recent<TRes> {
  factory CopyWith$Query$Browsing$recent(
    Query$Browsing$recent instance,
    TRes Function(Query$Browsing$recent) then,
  ) = _CopyWithImpl$Query$Browsing$recent;

  factory CopyWith$Query$Browsing$recent.stub(TRes res) =
      _CopyWithStubImpl$Query$Browsing$recent;

  TRes call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$MediaFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Browsing$recent<TRes>
    implements CopyWith$Query$Browsing$recent<TRes> {
  _CopyWithImpl$Query$Browsing$recent(
    this._instance,
    this._then,
  );

  final Query$Browsing$recent _instance;

  final TRes Function(Query$Browsing$recent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Browsing$recent(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes media(
          Iterable<Fragment$MediaFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFragment<
                          Fragment$MediaFragment>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Browsing$recent<TRes>
    implements CopyWith$Query$Browsing$recent<TRes> {
  _CopyWithStubImpl$Query$Browsing$recent(this._res);

  TRes _res;

  call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  }) =>
      _res;

  media(_fn) => _res;
}
