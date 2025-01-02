import 'fragments/page_info.graphql.dart';
import 'fragments/review.graphql.dart';
import 'fragments/user.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$UserReviews {
  factory Variables$Query$UserReviews({
    int? userId,
    int? page,
  }) =>
      Variables$Query$UserReviews._({
        if (userId != null) r'userId': userId,
        if (page != null) r'page': page,
      });

  Variables$Query$UserReviews._(this._$data);

  factory Variables$Query$UserReviews.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$UserReviews._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get userId => (_$data['userId'] as int?);

  int? get page => (_$data['page'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$UserReviews<Variables$Query$UserReviews>
      get copyWith => CopyWith$Variables$Query$UserReviews(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$UserReviews ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
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
    final l$userId = userId;
    final l$page = page;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('page') ? l$page : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$UserReviews<TRes> {
  factory CopyWith$Variables$Query$UserReviews(
    Variables$Query$UserReviews instance,
    TRes Function(Variables$Query$UserReviews) then,
  ) = _CopyWithImpl$Variables$Query$UserReviews;

  factory CopyWith$Variables$Query$UserReviews.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$UserReviews;

  TRes call({
    int? userId,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$UserReviews<TRes>
    implements CopyWith$Variables$Query$UserReviews<TRes> {
  _CopyWithImpl$Variables$Query$UserReviews(
    this._instance,
    this._then,
  );

  final Variables$Query$UserReviews _instance;

  final TRes Function(Variables$Query$UserReviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$UserReviews._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as int?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$UserReviews<TRes>
    implements CopyWith$Variables$Query$UserReviews<TRes> {
  _CopyWithStubImpl$Variables$Query$UserReviews(this._res);

  TRes _res;

  call({
    int? userId,
    int? page,
  }) =>
      _res;
}

class Query$UserReviews {
  Query$UserReviews({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$UserReviews.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$UserReviews(
      Page: l$Page == null
          ? null
          : Query$UserReviews$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserReviews$Page? Page;

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
    if (other is! Query$UserReviews || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$UserReviews on Query$UserReviews {
  CopyWith$Query$UserReviews<Query$UserReviews> get copyWith =>
      CopyWith$Query$UserReviews(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserReviews<TRes> {
  factory CopyWith$Query$UserReviews(
    Query$UserReviews instance,
    TRes Function(Query$UserReviews) then,
  ) = _CopyWithImpl$Query$UserReviews;

  factory CopyWith$Query$UserReviews.stub(TRes res) =
      _CopyWithStubImpl$Query$UserReviews;

  TRes call({
    Query$UserReviews$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$UserReviews$Page<TRes> get Page;
}

class _CopyWithImpl$Query$UserReviews<TRes>
    implements CopyWith$Query$UserReviews<TRes> {
  _CopyWithImpl$Query$UserReviews(
    this._instance,
    this._then,
  );

  final Query$UserReviews _instance;

  final TRes Function(Query$UserReviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserReviews(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$UserReviews$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserReviews$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$UserReviews$Page.stub(_then(_instance))
        : CopyWith$Query$UserReviews$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$UserReviews<TRes>
    implements CopyWith$Query$UserReviews<TRes> {
  _CopyWithStubImpl$Query$UserReviews(this._res);

  TRes _res;

  call({
    Query$UserReviews$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserReviews$Page<TRes> get Page =>
      CopyWith$Query$UserReviews$Page.stub(_res);
}

const documentNodeQueryUserReviews = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserReviews'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
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
        name: NameNode(value: 'Page'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          )
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
            name: NameNode(value: 'reviews'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'ID_DESC')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ReviewFragment'),
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
  fragmentDefinitionReviewFragment,
  fragmentDefinitionUserFragment,
]);

class Query$UserReviews$Page {
  Query$UserReviews$Page({
    this.pageInfo,
    this.reviews,
    this.$__typename = 'Page',
  });

  factory Query$UserReviews$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$reviews = json['reviews'];
    final l$$__typename = json['__typename'];
    return Query$UserReviews$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      reviews: (l$reviews as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ReviewFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Fragment$ReviewFragment?>? reviews;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$reviews = reviews;
    _resultData['reviews'] = l$reviews?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$reviews = reviews;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$reviews == null ? null : Object.hashAll(l$reviews.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserReviews$Page || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$reviews = reviews;
    final lOther$reviews = other.reviews;
    if (l$reviews != null && lOther$reviews != null) {
      if (l$reviews.length != lOther$reviews.length) {
        return false;
      }
      for (int i = 0; i < l$reviews.length; i++) {
        final l$reviews$entry = l$reviews[i];
        final lOther$reviews$entry = lOther$reviews[i];
        if (l$reviews$entry != lOther$reviews$entry) {
          return false;
        }
      }
    } else if (l$reviews != lOther$reviews) {
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

extension UtilityExtension$Query$UserReviews$Page on Query$UserReviews$Page {
  CopyWith$Query$UserReviews$Page<Query$UserReviews$Page> get copyWith =>
      CopyWith$Query$UserReviews$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserReviews$Page<TRes> {
  factory CopyWith$Query$UserReviews$Page(
    Query$UserReviews$Page instance,
    TRes Function(Query$UserReviews$Page) then,
  ) = _CopyWithImpl$Query$UserReviews$Page;

  factory CopyWith$Query$UserReviews$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$UserReviews$Page;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$ReviewFragment?>? reviews,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes reviews(
      Iterable<Fragment$ReviewFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$ReviewFragment<Fragment$ReviewFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$UserReviews$Page<TRes>
    implements CopyWith$Query$UserReviews$Page<TRes> {
  _CopyWithImpl$Query$UserReviews$Page(
    this._instance,
    this._then,
  );

  final Query$UserReviews$Page _instance;

  final TRes Function(Query$UserReviews$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? reviews = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserReviews$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        reviews: reviews == _undefined
            ? _instance.reviews
            : (reviews as List<Fragment$ReviewFragment?>?),
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

  TRes reviews(
          Iterable<Fragment$ReviewFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$ReviewFragment<
                          Fragment$ReviewFragment>?>?)
              _fn) =>
      call(
          reviews: _fn(_instance.reviews?.map((e) => e == null
              ? null
              : CopyWith$Fragment$ReviewFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$UserReviews$Page<TRes>
    implements CopyWith$Query$UserReviews$Page<TRes> {
  _CopyWithStubImpl$Query$UserReviews$Page(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$ReviewFragment?>? reviews,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  reviews(_fn) => _res;
}
