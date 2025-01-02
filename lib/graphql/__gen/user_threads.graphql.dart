import 'fragments/media.graphql.dart';
import 'fragments/page_info.graphql.dart';
import 'fragments/thread.graphql.dart';
import 'fragments/user.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$UserThreads {
  factory Variables$Query$UserThreads({
    int? userId,
    int? threadPage,
    int? commentsPage,
  }) =>
      Variables$Query$UserThreads._({
        if (userId != null) r'userId': userId,
        if (threadPage != null) r'threadPage': threadPage,
        if (commentsPage != null) r'commentsPage': commentsPage,
      });

  Variables$Query$UserThreads._(this._$data);

  factory Variables$Query$UserThreads.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    if (data.containsKey('threadPage')) {
      final l$threadPage = data['threadPage'];
      result$data['threadPage'] = (l$threadPage as int?);
    }
    if (data.containsKey('commentsPage')) {
      final l$commentsPage = data['commentsPage'];
      result$data['commentsPage'] = (l$commentsPage as int?);
    }
    return Variables$Query$UserThreads._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get userId => (_$data['userId'] as int?);

  int? get threadPage => (_$data['threadPage'] as int?);

  int? get commentsPage => (_$data['commentsPage'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('threadPage')) {
      final l$threadPage = threadPage;
      result$data['threadPage'] = l$threadPage;
    }
    if (_$data.containsKey('commentsPage')) {
      final l$commentsPage = commentsPage;
      result$data['commentsPage'] = l$commentsPage;
    }
    return result$data;
  }

  CopyWith$Variables$Query$UserThreads<Variables$Query$UserThreads>
      get copyWith => CopyWith$Variables$Query$UserThreads(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$UserThreads ||
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
    final l$threadPage = threadPage;
    final lOther$threadPage = other.threadPage;
    if (_$data.containsKey('threadPage') !=
        other._$data.containsKey('threadPage')) {
      return false;
    }
    if (l$threadPage != lOther$threadPage) {
      return false;
    }
    final l$commentsPage = commentsPage;
    final lOther$commentsPage = other.commentsPage;
    if (_$data.containsKey('commentsPage') !=
        other._$data.containsKey('commentsPage')) {
      return false;
    }
    if (l$commentsPage != lOther$commentsPage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$threadPage = threadPage;
    final l$commentsPage = commentsPage;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('threadPage') ? l$threadPage : const {},
      _$data.containsKey('commentsPage') ? l$commentsPage : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$UserThreads<TRes> {
  factory CopyWith$Variables$Query$UserThreads(
    Variables$Query$UserThreads instance,
    TRes Function(Variables$Query$UserThreads) then,
  ) = _CopyWithImpl$Variables$Query$UserThreads;

  factory CopyWith$Variables$Query$UserThreads.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$UserThreads;

  TRes call({
    int? userId,
    int? threadPage,
    int? commentsPage,
  });
}

class _CopyWithImpl$Variables$Query$UserThreads<TRes>
    implements CopyWith$Variables$Query$UserThreads<TRes> {
  _CopyWithImpl$Variables$Query$UserThreads(
    this._instance,
    this._then,
  );

  final Variables$Query$UserThreads _instance;

  final TRes Function(Variables$Query$UserThreads) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? threadPage = _undefined,
    Object? commentsPage = _undefined,
  }) =>
      _then(Variables$Query$UserThreads._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as int?),
        if (threadPage != _undefined) 'threadPage': (threadPage as int?),
        if (commentsPage != _undefined) 'commentsPage': (commentsPage as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$UserThreads<TRes>
    implements CopyWith$Variables$Query$UserThreads<TRes> {
  _CopyWithStubImpl$Variables$Query$UserThreads(this._res);

  TRes _res;

  call({
    int? userId,
    int? threadPage,
    int? commentsPage,
  }) =>
      _res;
}

class Query$UserThreads {
  Query$UserThreads({
    this.thread,
    this.comments,
    this.$__typename = 'Query',
  });

  factory Query$UserThreads.fromJson(Map<String, dynamic> json) {
    final l$thread = json['thread'];
    final l$comments = json['comments'];
    final l$$__typename = json['__typename'];
    return Query$UserThreads(
      thread: l$thread == null
          ? null
          : Query$UserThreads$thread.fromJson(
              (l$thread as Map<String, dynamic>)),
      comments: l$comments == null
          ? null
          : Query$UserThreads$comments.fromJson(
              (l$comments as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserThreads$thread? thread;

  final Query$UserThreads$comments? comments;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$thread = thread;
    _resultData['thread'] = l$thread?.toJson();
    final l$comments = comments;
    _resultData['comments'] = l$comments?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$thread = thread;
    final l$comments = comments;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$thread,
      l$comments,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserThreads || runtimeType != other.runtimeType) {
      return false;
    }
    final l$thread = thread;
    final lOther$thread = other.thread;
    if (l$thread != lOther$thread) {
      return false;
    }
    final l$comments = comments;
    final lOther$comments = other.comments;
    if (l$comments != lOther$comments) {
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

extension UtilityExtension$Query$UserThreads on Query$UserThreads {
  CopyWith$Query$UserThreads<Query$UserThreads> get copyWith =>
      CopyWith$Query$UserThreads(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserThreads<TRes> {
  factory CopyWith$Query$UserThreads(
    Query$UserThreads instance,
    TRes Function(Query$UserThreads) then,
  ) = _CopyWithImpl$Query$UserThreads;

  factory CopyWith$Query$UserThreads.stub(TRes res) =
      _CopyWithStubImpl$Query$UserThreads;

  TRes call({
    Query$UserThreads$thread? thread,
    Query$UserThreads$comments? comments,
    String? $__typename,
  });
  CopyWith$Query$UserThreads$thread<TRes> get thread;
  CopyWith$Query$UserThreads$comments<TRes> get comments;
}

class _CopyWithImpl$Query$UserThreads<TRes>
    implements CopyWith$Query$UserThreads<TRes> {
  _CopyWithImpl$Query$UserThreads(
    this._instance,
    this._then,
  );

  final Query$UserThreads _instance;

  final TRes Function(Query$UserThreads) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? thread = _undefined,
    Object? comments = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserThreads(
        thread: thread == _undefined
            ? _instance.thread
            : (thread as Query$UserThreads$thread?),
        comments: comments == _undefined
            ? _instance.comments
            : (comments as Query$UserThreads$comments?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserThreads$thread<TRes> get thread {
    final local$thread = _instance.thread;
    return local$thread == null
        ? CopyWith$Query$UserThreads$thread.stub(_then(_instance))
        : CopyWith$Query$UserThreads$thread(
            local$thread, (e) => call(thread: e));
  }

  CopyWith$Query$UserThreads$comments<TRes> get comments {
    final local$comments = _instance.comments;
    return local$comments == null
        ? CopyWith$Query$UserThreads$comments.stub(_then(_instance))
        : CopyWith$Query$UserThreads$comments(
            local$comments, (e) => call(comments: e));
  }
}

class _CopyWithStubImpl$Query$UserThreads<TRes>
    implements CopyWith$Query$UserThreads<TRes> {
  _CopyWithStubImpl$Query$UserThreads(this._res);

  TRes _res;

  call({
    Query$UserThreads$thread? thread,
    Query$UserThreads$comments? comments,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserThreads$thread<TRes> get thread =>
      CopyWith$Query$UserThreads$thread.stub(_res);

  CopyWith$Query$UserThreads$comments<TRes> get comments =>
      CopyWith$Query$UserThreads$comments.stub(_res);
}

const documentNodeQueryUserThreads = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserThreads'),
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
        variable: VariableNode(name: NameNode(value: 'threadPage')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'commentsPage')),
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
        alias: NameNode(value: 'thread'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'threadPage')),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '30'),
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
            name: NameNode(value: 'threads'),
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
                name: NameNode(value: 'ThreadFragment'),
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
        alias: NameNode(value: 'comments'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'commentsPage')),
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
            name: NameNode(value: 'threadComments'),
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
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'threadId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'comment'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isLiked'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'likeCount'),
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
                name: NameNode(value: 'thread'),
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
                    name: NameNode(value: 'title'),
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
                name: NameNode(value: 'user'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'UserFragment'),
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
  fragmentDefinitionThreadFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionUserFragment,
]);

class Query$UserThreads$thread {
  Query$UserThreads$thread({
    this.pageInfo,
    this.threads,
    this.$__typename = 'Page',
  });

  factory Query$UserThreads$thread.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$threads = json['threads'];
    final l$$__typename = json['__typename'];
    return Query$UserThreads$thread(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      threads: (l$threads as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ThreadFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Fragment$ThreadFragment?>? threads;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$threads = threads;
    _resultData['threads'] = l$threads?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$threads = threads;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$threads == null ? null : Object.hashAll(l$threads.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserThreads$thread ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$threads = threads;
    final lOther$threads = other.threads;
    if (l$threads != null && lOther$threads != null) {
      if (l$threads.length != lOther$threads.length) {
        return false;
      }
      for (int i = 0; i < l$threads.length; i++) {
        final l$threads$entry = l$threads[i];
        final lOther$threads$entry = lOther$threads[i];
        if (l$threads$entry != lOther$threads$entry) {
          return false;
        }
      }
    } else if (l$threads != lOther$threads) {
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

extension UtilityExtension$Query$UserThreads$thread
    on Query$UserThreads$thread {
  CopyWith$Query$UserThreads$thread<Query$UserThreads$thread> get copyWith =>
      CopyWith$Query$UserThreads$thread(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserThreads$thread<TRes> {
  factory CopyWith$Query$UserThreads$thread(
    Query$UserThreads$thread instance,
    TRes Function(Query$UserThreads$thread) then,
  ) = _CopyWithImpl$Query$UserThreads$thread;

  factory CopyWith$Query$UserThreads$thread.stub(TRes res) =
      _CopyWithStubImpl$Query$UserThreads$thread;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$ThreadFragment?>? threads,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes threads(
      Iterable<Fragment$ThreadFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$ThreadFragment<Fragment$ThreadFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$UserThreads$thread<TRes>
    implements CopyWith$Query$UserThreads$thread<TRes> {
  _CopyWithImpl$Query$UserThreads$thread(
    this._instance,
    this._then,
  );

  final Query$UserThreads$thread _instance;

  final TRes Function(Query$UserThreads$thread) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? threads = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserThreads$thread(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        threads: threads == _undefined
            ? _instance.threads
            : (threads as List<Fragment$ThreadFragment?>?),
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

  TRes threads(
          Iterable<Fragment$ThreadFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$ThreadFragment<
                          Fragment$ThreadFragment>?>?)
              _fn) =>
      call(
          threads: _fn(_instance.threads?.map((e) => e == null
              ? null
              : CopyWith$Fragment$ThreadFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$UserThreads$thread<TRes>
    implements CopyWith$Query$UserThreads$thread<TRes> {
  _CopyWithStubImpl$Query$UserThreads$thread(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$ThreadFragment?>? threads,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  threads(_fn) => _res;
}

class Query$UserThreads$comments {
  Query$UserThreads$comments({
    this.pageInfo,
    this.threadComments,
    this.$__typename = 'Page',
  });

  factory Query$UserThreads$comments.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$threadComments = json['threadComments'];
    final l$$__typename = json['__typename'];
    return Query$UserThreads$comments(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      threadComments: (l$threadComments as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$UserThreads$comments$threadComments.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$UserThreads$comments$threadComments?>? threadComments;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$threadComments = threadComments;
    _resultData['threadComments'] =
        l$threadComments?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$threadComments = threadComments;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$threadComments == null
          ? null
          : Object.hashAll(l$threadComments.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserThreads$comments ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$threadComments = threadComments;
    final lOther$threadComments = other.threadComments;
    if (l$threadComments != null && lOther$threadComments != null) {
      if (l$threadComments.length != lOther$threadComments.length) {
        return false;
      }
      for (int i = 0; i < l$threadComments.length; i++) {
        final l$threadComments$entry = l$threadComments[i];
        final lOther$threadComments$entry = lOther$threadComments[i];
        if (l$threadComments$entry != lOther$threadComments$entry) {
          return false;
        }
      }
    } else if (l$threadComments != lOther$threadComments) {
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

extension UtilityExtension$Query$UserThreads$comments
    on Query$UserThreads$comments {
  CopyWith$Query$UserThreads$comments<Query$UserThreads$comments>
      get copyWith => CopyWith$Query$UserThreads$comments(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserThreads$comments<TRes> {
  factory CopyWith$Query$UserThreads$comments(
    Query$UserThreads$comments instance,
    TRes Function(Query$UserThreads$comments) then,
  ) = _CopyWithImpl$Query$UserThreads$comments;

  factory CopyWith$Query$UserThreads$comments.stub(TRes res) =
      _CopyWithStubImpl$Query$UserThreads$comments;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$UserThreads$comments$threadComments?>? threadComments,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes threadComments(
      Iterable<Query$UserThreads$comments$threadComments?>? Function(
              Iterable<
                  CopyWith$Query$UserThreads$comments$threadComments<
                      Query$UserThreads$comments$threadComments>?>?)
          _fn);
}

class _CopyWithImpl$Query$UserThreads$comments<TRes>
    implements CopyWith$Query$UserThreads$comments<TRes> {
  _CopyWithImpl$Query$UserThreads$comments(
    this._instance,
    this._then,
  );

  final Query$UserThreads$comments _instance;

  final TRes Function(Query$UserThreads$comments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? threadComments = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserThreads$comments(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        threadComments: threadComments == _undefined
            ? _instance.threadComments
            : (threadComments
                as List<Query$UserThreads$comments$threadComments?>?),
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

  TRes threadComments(
          Iterable<Query$UserThreads$comments$threadComments?>? Function(
                  Iterable<
                      CopyWith$Query$UserThreads$comments$threadComments<
                          Query$UserThreads$comments$threadComments>?>?)
              _fn) =>
      call(
          threadComments: _fn(_instance.threadComments?.map((e) => e == null
              ? null
              : CopyWith$Query$UserThreads$comments$threadComments(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$UserThreads$comments<TRes>
    implements CopyWith$Query$UserThreads$comments<TRes> {
  _CopyWithStubImpl$Query$UserThreads$comments(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$UserThreads$comments$threadComments?>? threadComments,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  threadComments(_fn) => _res;
}

class Query$UserThreads$comments$threadComments {
  Query$UserThreads$comments$threadComments({
    required this.id,
    this.threadId,
    this.comment,
    this.isLiked,
    required this.likeCount,
    required this.createdAt,
    this.thread,
    this.user,
    this.$__typename = 'ThreadComment',
  });

  factory Query$UserThreads$comments$threadComments.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$threadId = json['threadId'];
    final l$comment = json['comment'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$createdAt = json['createdAt'];
    final l$thread = json['thread'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$UserThreads$comments$threadComments(
      id: (l$id as int),
      threadId: (l$threadId as int?),
      comment: (l$comment as String?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      thread: l$thread == null
          ? null
          : Query$UserThreads$comments$threadComments$thread.fromJson(
              (l$thread as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? threadId;

  final String? comment;

  final bool? isLiked;

  final int likeCount;

  final int createdAt;

  final Query$UserThreads$comments$threadComments$thread? thread;

  final Fragment$UserFragment? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$threadId = threadId;
    _resultData['threadId'] = l$threadId;
    final l$comment = comment;
    _resultData['comment'] = l$comment;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$thread = thread;
    _resultData['thread'] = l$thread?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$threadId = threadId;
    final l$comment = comment;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$createdAt = createdAt;
    final l$thread = thread;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$threadId,
      l$comment,
      l$isLiked,
      l$likeCount,
      l$createdAt,
      l$thread,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserThreads$comments$threadComments ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$threadId = threadId;
    final lOther$threadId = other.threadId;
    if (l$threadId != lOther$threadId) {
      return false;
    }
    final l$comment = comment;
    final lOther$comment = other.comment;
    if (l$comment != lOther$comment) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$thread = thread;
    final lOther$thread = other.thread;
    if (l$thread != lOther$thread) {
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
    return true;
  }
}

extension UtilityExtension$Query$UserThreads$comments$threadComments
    on Query$UserThreads$comments$threadComments {
  CopyWith$Query$UserThreads$comments$threadComments<
          Query$UserThreads$comments$threadComments>
      get copyWith => CopyWith$Query$UserThreads$comments$threadComments(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserThreads$comments$threadComments<TRes> {
  factory CopyWith$Query$UserThreads$comments$threadComments(
    Query$UserThreads$comments$threadComments instance,
    TRes Function(Query$UserThreads$comments$threadComments) then,
  ) = _CopyWithImpl$Query$UserThreads$comments$threadComments;

  factory CopyWith$Query$UserThreads$comments$threadComments.stub(TRes res) =
      _CopyWithStubImpl$Query$UserThreads$comments$threadComments;

  TRes call({
    int? id,
    int? threadId,
    String? comment,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Query$UserThreads$comments$threadComments$thread? thread,
    Fragment$UserFragment? user,
    String? $__typename,
  });
  CopyWith$Query$UserThreads$comments$threadComments$thread<TRes> get thread;
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$UserThreads$comments$threadComments<TRes>
    implements CopyWith$Query$UserThreads$comments$threadComments<TRes> {
  _CopyWithImpl$Query$UserThreads$comments$threadComments(
    this._instance,
    this._then,
  );

  final Query$UserThreads$comments$threadComments _instance;

  final TRes Function(Query$UserThreads$comments$threadComments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? threadId = _undefined,
    Object? comment = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? createdAt = _undefined,
    Object? thread = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserThreads$comments$threadComments(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        threadId:
            threadId == _undefined ? _instance.threadId : (threadId as int?),
        comment:
            comment == _undefined ? _instance.comment : (comment as String?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        thread: thread == _undefined
            ? _instance.thread
            : (thread as Query$UserThreads$comments$threadComments$thread?),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserThreads$comments$threadComments$thread<TRes> get thread {
    final local$thread = _instance.thread;
    return local$thread == null
        ? CopyWith$Query$UserThreads$comments$threadComments$thread.stub(
            _then(_instance))
        : CopyWith$Query$UserThreads$comments$threadComments$thread(
            local$thread, (e) => call(thread: e));
  }

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$UserThreads$comments$threadComments<TRes>
    implements CopyWith$Query$UserThreads$comments$threadComments<TRes> {
  _CopyWithStubImpl$Query$UserThreads$comments$threadComments(this._res);

  TRes _res;

  call({
    int? id,
    int? threadId,
    String? comment,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Query$UserThreads$comments$threadComments$thread? thread,
    Fragment$UserFragment? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserThreads$comments$threadComments$thread<TRes> get thread =>
      CopyWith$Query$UserThreads$comments$threadComments$thread.stub(_res);

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$UserThreads$comments$threadComments$thread {
  Query$UserThreads$comments$threadComments$thread({
    required this.id,
    this.title,
    this.$__typename = 'Thread',
  });

  factory Query$UserThreads$comments$threadComments$thread.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$UserThreads$comments$threadComments$thread(
      id: (l$id as int),
      title: (l$title as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserThreads$comments$threadComments$thread ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserThreads$comments$threadComments$thread
    on Query$UserThreads$comments$threadComments$thread {
  CopyWith$Query$UserThreads$comments$threadComments$thread<
          Query$UserThreads$comments$threadComments$thread>
      get copyWith => CopyWith$Query$UserThreads$comments$threadComments$thread(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserThreads$comments$threadComments$thread<TRes> {
  factory CopyWith$Query$UserThreads$comments$threadComments$thread(
    Query$UserThreads$comments$threadComments$thread instance,
    TRes Function(Query$UserThreads$comments$threadComments$thread) then,
  ) = _CopyWithImpl$Query$UserThreads$comments$threadComments$thread;

  factory CopyWith$Query$UserThreads$comments$threadComments$thread.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserThreads$comments$threadComments$thread;

  TRes call({
    int? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserThreads$comments$threadComments$thread<TRes>
    implements CopyWith$Query$UserThreads$comments$threadComments$thread<TRes> {
  _CopyWithImpl$Query$UserThreads$comments$threadComments$thread(
    this._instance,
    this._then,
  );

  final Query$UserThreads$comments$threadComments$thread _instance;

  final TRes Function(Query$UserThreads$comments$threadComments$thread) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserThreads$comments$threadComments$thread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined ? _instance.title : (title as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserThreads$comments$threadComments$thread<TRes>
    implements CopyWith$Query$UserThreads$comments$threadComments$thread<TRes> {
  _CopyWithStubImpl$Query$UserThreads$comments$threadComments$thread(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}
