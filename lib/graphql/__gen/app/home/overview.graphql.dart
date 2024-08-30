import '../../graphql/fragments/fuzzy_date.graphql.dart';
import '../../graphql/fragments/media.graphql.dart';
import '../../graphql/fragments/media_entry.graphql.dart';
import '../../graphql/fragments/releasing_media.graphql.dart';
import '../../graphql/fragments/review.graphql.dart';
import '../../graphql/fragments/thread.graphql.dart';
import '../../graphql/fragments/user.graphql.dart';
import '../../graphql/schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$HomeOverview {
  factory Variables$Query$HomeOverview({
    int? page,
    required int userId,
    Enum$MediaType? type,
  }) =>
      Variables$Query$HomeOverview._({
        if (page != null) r'page': page,
        r'userId': userId,
        if (type != null) r'type': type,
      });

  Variables$Query$HomeOverview._(this._$data);

  factory Variables$Query$HomeOverview.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as int);
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$MediaType((l$type as String));
    }
    return Variables$Query$HomeOverview._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int get userId => (_$data['userId'] as int);

  Enum$MediaType? get type => (_$data['type'] as Enum$MediaType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    final l$userId = userId;
    result$data['userId'] = l$userId;
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$MediaType(l$type);
    }
    return result$data;
  }

  CopyWith$Variables$Query$HomeOverview<Variables$Query$HomeOverview>
      get copyWith => CopyWith$Variables$Query$HomeOverview(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$HomeOverview) ||
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
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$userId = userId;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      l$userId,
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$HomeOverview<TRes> {
  factory CopyWith$Variables$Query$HomeOverview(
    Variables$Query$HomeOverview instance,
    TRes Function(Variables$Query$HomeOverview) then,
  ) = _CopyWithImpl$Variables$Query$HomeOverview;

  factory CopyWith$Variables$Query$HomeOverview.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$HomeOverview;

  TRes call({
    int? page,
    int? userId,
    Enum$MediaType? type,
  });
}

class _CopyWithImpl$Variables$Query$HomeOverview<TRes>
    implements CopyWith$Variables$Query$HomeOverview<TRes> {
  _CopyWithImpl$Variables$Query$HomeOverview(
    this._instance,
    this._then,
  );

  final Variables$Query$HomeOverview _instance;

  final TRes Function(Variables$Query$HomeOverview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? userId = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Variables$Query$HomeOverview._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (userId != _undefined && userId != null) 'userId': (userId as int),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
      }));
}

class _CopyWithStubImpl$Variables$Query$HomeOverview<TRes>
    implements CopyWith$Variables$Query$HomeOverview<TRes> {
  _CopyWithStubImpl$Variables$Query$HomeOverview(this._res);

  TRes _res;

  call({
    int? page,
    int? userId,
    Enum$MediaType? type,
  }) =>
      _res;
}

class Query$HomeOverview {
  Query$HomeOverview({
    this.releasing,
    this.list,
    this.forums,
    this.reviews,
    this.$__typename = 'Query',
  });

  factory Query$HomeOverview.fromJson(Map<String, dynamic> json) {
    final l$releasing = json['releasing'];
    final l$list = json['list'];
    final l$forums = json['forums'];
    final l$reviews = json['reviews'];
    final l$$__typename = json['__typename'];
    return Query$HomeOverview(
      releasing: l$releasing == null
          ? null
          : Query$HomeOverview$releasing.fromJson(
              (l$releasing as Map<String, dynamic>)),
      list: l$list == null
          ? null
          : Query$HomeOverview$list.fromJson((l$list as Map<String, dynamic>)),
      forums: l$forums == null
          ? null
          : Query$HomeOverview$forums.fromJson(
              (l$forums as Map<String, dynamic>)),
      reviews: l$reviews == null
          ? null
          : Query$HomeOverview$reviews.fromJson(
              (l$reviews as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$HomeOverview$releasing? releasing;

  final Query$HomeOverview$list? list;

  final Query$HomeOverview$forums? forums;

  final Query$HomeOverview$reviews? reviews;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$releasing = releasing;
    _resultData['releasing'] = l$releasing?.toJson();
    final l$list = list;
    _resultData['list'] = l$list?.toJson();
    final l$forums = forums;
    _resultData['forums'] = l$forums?.toJson();
    final l$reviews = reviews;
    _resultData['reviews'] = l$reviews?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$releasing = releasing;
    final l$list = list;
    final l$forums = forums;
    final l$reviews = reviews;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$releasing,
      l$list,
      l$forums,
      l$reviews,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$HomeOverview) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$releasing = releasing;
    final lOther$releasing = other.releasing;
    if (l$releasing != lOther$releasing) {
      return false;
    }
    final l$list = list;
    final lOther$list = other.list;
    if (l$list != lOther$list) {
      return false;
    }
    final l$forums = forums;
    final lOther$forums = other.forums;
    if (l$forums != lOther$forums) {
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

extension UtilityExtension$Query$HomeOverview on Query$HomeOverview {
  CopyWith$Query$HomeOverview<Query$HomeOverview> get copyWith =>
      CopyWith$Query$HomeOverview(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$HomeOverview<TRes> {
  factory CopyWith$Query$HomeOverview(
    Query$HomeOverview instance,
    TRes Function(Query$HomeOverview) then,
  ) = _CopyWithImpl$Query$HomeOverview;

  factory CopyWith$Query$HomeOverview.stub(TRes res) =
      _CopyWithStubImpl$Query$HomeOverview;

  TRes call({
    Query$HomeOverview$releasing? releasing,
    Query$HomeOverview$list? list,
    Query$HomeOverview$forums? forums,
    Query$HomeOverview$reviews? reviews,
    String? $__typename,
  });
  CopyWith$Query$HomeOverview$releasing<TRes> get releasing;
  CopyWith$Query$HomeOverview$list<TRes> get list;
  CopyWith$Query$HomeOverview$forums<TRes> get forums;
  CopyWith$Query$HomeOverview$reviews<TRes> get reviews;
}

class _CopyWithImpl$Query$HomeOverview<TRes>
    implements CopyWith$Query$HomeOverview<TRes> {
  _CopyWithImpl$Query$HomeOverview(
    this._instance,
    this._then,
  );

  final Query$HomeOverview _instance;

  final TRes Function(Query$HomeOverview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? releasing = _undefined,
    Object? list = _undefined,
    Object? forums = _undefined,
    Object? reviews = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$HomeOverview(
        releasing: releasing == _undefined
            ? _instance.releasing
            : (releasing as Query$HomeOverview$releasing?),
        list: list == _undefined
            ? _instance.list
            : (list as Query$HomeOverview$list?),
        forums: forums == _undefined
            ? _instance.forums
            : (forums as Query$HomeOverview$forums?),
        reviews: reviews == _undefined
            ? _instance.reviews
            : (reviews as Query$HomeOverview$reviews?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$HomeOverview$releasing<TRes> get releasing {
    final local$releasing = _instance.releasing;
    return local$releasing == null
        ? CopyWith$Query$HomeOverview$releasing.stub(_then(_instance))
        : CopyWith$Query$HomeOverview$releasing(
            local$releasing, (e) => call(releasing: e));
  }

  CopyWith$Query$HomeOverview$list<TRes> get list {
    final local$list = _instance.list;
    return local$list == null
        ? CopyWith$Query$HomeOverview$list.stub(_then(_instance))
        : CopyWith$Query$HomeOverview$list(local$list, (e) => call(list: e));
  }

  CopyWith$Query$HomeOverview$forums<TRes> get forums {
    final local$forums = _instance.forums;
    return local$forums == null
        ? CopyWith$Query$HomeOverview$forums.stub(_then(_instance))
        : CopyWith$Query$HomeOverview$forums(
            local$forums, (e) => call(forums: e));
  }

  CopyWith$Query$HomeOverview$reviews<TRes> get reviews {
    final local$reviews = _instance.reviews;
    return local$reviews == null
        ? CopyWith$Query$HomeOverview$reviews.stub(_then(_instance))
        : CopyWith$Query$HomeOverview$reviews(
            local$reviews, (e) => call(reviews: e));
  }
}

class _CopyWithStubImpl$Query$HomeOverview<TRes>
    implements CopyWith$Query$HomeOverview<TRes> {
  _CopyWithStubImpl$Query$HomeOverview(this._res);

  TRes _res;

  call({
    Query$HomeOverview$releasing? releasing,
    Query$HomeOverview$list? list,
    Query$HomeOverview$forums? forums,
    Query$HomeOverview$reviews? reviews,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$HomeOverview$releasing<TRes> get releasing =>
      CopyWith$Query$HomeOverview$releasing.stub(_res);

  CopyWith$Query$HomeOverview$list<TRes> get list =>
      CopyWith$Query$HomeOverview$list.stub(_res);

  CopyWith$Query$HomeOverview$forums<TRes> get forums =>
      CopyWith$Query$HomeOverview$forums.stub(_res);

  CopyWith$Query$HomeOverview$reviews<TRes> get reviews =>
      CopyWith$Query$HomeOverview$reviews.stub(_res);
}

const documentNodeQueryHomeOverview = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'HomeOverview'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '1')),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'type')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
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
        alias: NameNode(value: 'releasing'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'onList'),
                value: BooleanValueNode(value: true),
              ),
              ArgumentNode(
                name: NameNode(value: 'status_in'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'RELEASING')),
                  EnumValueNode(name: NameNode(value: 'NOT_YET_RELEASED')),
                ]),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'START_DATE_DESC')),
                  EnumValueNode(name: NameNode(value: 'STATUS')),
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ReleasingMedia'),
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
        alias: NameNode(value: 'list'),
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'mediaList'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'status_in'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'CURRENT')),
                  EnumValueNode(name: NameNode(value: 'REPEATING')),
                ]),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value:
                    EnumValueNode(name: NameNode(value: 'UPDATED_TIME_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'type')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'MediaListEntry'),
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
        alias: NameNode(value: 'forums'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '5'),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'threads'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'REPLIED_AT_DESC')),
              )
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
        alias: NameNode(value: 'reviews'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '6'),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'reviews'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'ID_DESC')),
              )
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
  fragmentDefinitionReleasingMedia,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionMediaListEntry,
  fragmentDefinitionFuzzyDate,
  fragmentDefinitionThreadFragment,
  fragmentDefinitionUserFragment,
  fragmentDefinitionReviewFragment,
]);

class Query$HomeOverview$releasing {
  Query$HomeOverview$releasing({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$HomeOverview$releasing.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$HomeOverview$releasing(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ReleasingMedia.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ReleasingMedia?>? media;

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
    if (!(other is Query$HomeOverview$releasing) ||
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

extension UtilityExtension$Query$HomeOverview$releasing
    on Query$HomeOverview$releasing {
  CopyWith$Query$HomeOverview$releasing<Query$HomeOverview$releasing>
      get copyWith => CopyWith$Query$HomeOverview$releasing(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$HomeOverview$releasing<TRes> {
  factory CopyWith$Query$HomeOverview$releasing(
    Query$HomeOverview$releasing instance,
    TRes Function(Query$HomeOverview$releasing) then,
  ) = _CopyWithImpl$Query$HomeOverview$releasing;

  factory CopyWith$Query$HomeOverview$releasing.stub(TRes res) =
      _CopyWithStubImpl$Query$HomeOverview$releasing;

  TRes call({
    List<Fragment$ReleasingMedia?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$ReleasingMedia?>? Function(
              Iterable<
                  CopyWith$Fragment$ReleasingMedia<Fragment$ReleasingMedia>?>?)
          _fn);
}

class _CopyWithImpl$Query$HomeOverview$releasing<TRes>
    implements CopyWith$Query$HomeOverview$releasing<TRes> {
  _CopyWithImpl$Query$HomeOverview$releasing(
    this._instance,
    this._then,
  );

  final Query$HomeOverview$releasing _instance;

  final TRes Function(Query$HomeOverview$releasing) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$HomeOverview$releasing(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$ReleasingMedia?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes media(
          Iterable<Fragment$ReleasingMedia?>? Function(
                  Iterable<
                      CopyWith$Fragment$ReleasingMedia<
                          Fragment$ReleasingMedia>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$ReleasingMedia(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$HomeOverview$releasing<TRes>
    implements CopyWith$Query$HomeOverview$releasing<TRes> {
  _CopyWithStubImpl$Query$HomeOverview$releasing(this._res);

  TRes _res;

  call({
    List<Fragment$ReleasingMedia?>? media,
    String? $__typename,
  }) =>
      _res;

  media(_fn) => _res;
}

class Query$HomeOverview$list {
  Query$HomeOverview$list({
    this.mediaList,
    this.$__typename = 'Page',
  });

  factory Query$HomeOverview$list.fromJson(Map<String, dynamic> json) {
    final l$mediaList = json['mediaList'];
    final l$$__typename = json['__typename'];
    return Query$HomeOverview$list(
      mediaList: (l$mediaList as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaListEntry.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaListEntry?>? mediaList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mediaList = mediaList;
    _resultData['mediaList'] = l$mediaList?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mediaList = mediaList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mediaList == null ? null : Object.hashAll(l$mediaList.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$HomeOverview$list) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaList = mediaList;
    final lOther$mediaList = other.mediaList;
    if (l$mediaList != null && lOther$mediaList != null) {
      if (l$mediaList.length != lOther$mediaList.length) {
        return false;
      }
      for (int i = 0; i < l$mediaList.length; i++) {
        final l$mediaList$entry = l$mediaList[i];
        final lOther$mediaList$entry = lOther$mediaList[i];
        if (l$mediaList$entry != lOther$mediaList$entry) {
          return false;
        }
      }
    } else if (l$mediaList != lOther$mediaList) {
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

extension UtilityExtension$Query$HomeOverview$list on Query$HomeOverview$list {
  CopyWith$Query$HomeOverview$list<Query$HomeOverview$list> get copyWith =>
      CopyWith$Query$HomeOverview$list(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$HomeOverview$list<TRes> {
  factory CopyWith$Query$HomeOverview$list(
    Query$HomeOverview$list instance,
    TRes Function(Query$HomeOverview$list) then,
  ) = _CopyWithImpl$Query$HomeOverview$list;

  factory CopyWith$Query$HomeOverview$list.stub(TRes res) =
      _CopyWithStubImpl$Query$HomeOverview$list;

  TRes call({
    List<Fragment$MediaListEntry?>? mediaList,
    String? $__typename,
  });
  TRes mediaList(
      Iterable<Fragment$MediaListEntry?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaListEntry<Fragment$MediaListEntry>?>?)
          _fn);
}

class _CopyWithImpl$Query$HomeOverview$list<TRes>
    implements CopyWith$Query$HomeOverview$list<TRes> {
  _CopyWithImpl$Query$HomeOverview$list(
    this._instance,
    this._then,
  );

  final Query$HomeOverview$list _instance;

  final TRes Function(Query$HomeOverview$list) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$HomeOverview$list(
        mediaList: mediaList == _undefined
            ? _instance.mediaList
            : (mediaList as List<Fragment$MediaListEntry?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes mediaList(
          Iterable<Fragment$MediaListEntry?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaListEntry<
                          Fragment$MediaListEntry>?>?)
              _fn) =>
      call(
          mediaList: _fn(_instance.mediaList?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaListEntry(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$HomeOverview$list<TRes>
    implements CopyWith$Query$HomeOverview$list<TRes> {
  _CopyWithStubImpl$Query$HomeOverview$list(this._res);

  TRes _res;

  call({
    List<Fragment$MediaListEntry?>? mediaList,
    String? $__typename,
  }) =>
      _res;

  mediaList(_fn) => _res;
}

class Query$HomeOverview$forums {
  Query$HomeOverview$forums({
    this.threads,
    this.$__typename = 'Page',
  });

  factory Query$HomeOverview$forums.fromJson(Map<String, dynamic> json) {
    final l$threads = json['threads'];
    final l$$__typename = json['__typename'];
    return Query$HomeOverview$forums(
      threads: (l$threads as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ThreadFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ThreadFragment?>? threads;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$threads = threads;
    _resultData['threads'] = l$threads?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$threads = threads;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$threads == null ? null : Object.hashAll(l$threads.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$HomeOverview$forums) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$HomeOverview$forums
    on Query$HomeOverview$forums {
  CopyWith$Query$HomeOverview$forums<Query$HomeOverview$forums> get copyWith =>
      CopyWith$Query$HomeOverview$forums(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$HomeOverview$forums<TRes> {
  factory CopyWith$Query$HomeOverview$forums(
    Query$HomeOverview$forums instance,
    TRes Function(Query$HomeOverview$forums) then,
  ) = _CopyWithImpl$Query$HomeOverview$forums;

  factory CopyWith$Query$HomeOverview$forums.stub(TRes res) =
      _CopyWithStubImpl$Query$HomeOverview$forums;

  TRes call({
    List<Fragment$ThreadFragment?>? threads,
    String? $__typename,
  });
  TRes threads(
      Iterable<Fragment$ThreadFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$ThreadFragment<Fragment$ThreadFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$HomeOverview$forums<TRes>
    implements CopyWith$Query$HomeOverview$forums<TRes> {
  _CopyWithImpl$Query$HomeOverview$forums(
    this._instance,
    this._then,
  );

  final Query$HomeOverview$forums _instance;

  final TRes Function(Query$HomeOverview$forums) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? threads = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$HomeOverview$forums(
        threads: threads == _undefined
            ? _instance.threads
            : (threads as List<Fragment$ThreadFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

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

class _CopyWithStubImpl$Query$HomeOverview$forums<TRes>
    implements CopyWith$Query$HomeOverview$forums<TRes> {
  _CopyWithStubImpl$Query$HomeOverview$forums(this._res);

  TRes _res;

  call({
    List<Fragment$ThreadFragment?>? threads,
    String? $__typename,
  }) =>
      _res;

  threads(_fn) => _res;
}

class Query$HomeOverview$reviews {
  Query$HomeOverview$reviews({
    this.reviews,
    this.$__typename = 'Page',
  });

  factory Query$HomeOverview$reviews.fromJson(Map<String, dynamic> json) {
    final l$reviews = json['reviews'];
    final l$$__typename = json['__typename'];
    return Query$HomeOverview$reviews(
      reviews: (l$reviews as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ReviewFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ReviewFragment?>? reviews;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$reviews = reviews;
    _resultData['reviews'] = l$reviews?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$reviews = reviews;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$reviews == null ? null : Object.hashAll(l$reviews.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$HomeOverview$reviews) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$HomeOverview$reviews
    on Query$HomeOverview$reviews {
  CopyWith$Query$HomeOverview$reviews<Query$HomeOverview$reviews>
      get copyWith => CopyWith$Query$HomeOverview$reviews(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$HomeOverview$reviews<TRes> {
  factory CopyWith$Query$HomeOverview$reviews(
    Query$HomeOverview$reviews instance,
    TRes Function(Query$HomeOverview$reviews) then,
  ) = _CopyWithImpl$Query$HomeOverview$reviews;

  factory CopyWith$Query$HomeOverview$reviews.stub(TRes res) =
      _CopyWithStubImpl$Query$HomeOverview$reviews;

  TRes call({
    List<Fragment$ReviewFragment?>? reviews,
    String? $__typename,
  });
  TRes reviews(
      Iterable<Fragment$ReviewFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$ReviewFragment<Fragment$ReviewFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$HomeOverview$reviews<TRes>
    implements CopyWith$Query$HomeOverview$reviews<TRes> {
  _CopyWithImpl$Query$HomeOverview$reviews(
    this._instance,
    this._then,
  );

  final Query$HomeOverview$reviews _instance;

  final TRes Function(Query$HomeOverview$reviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? reviews = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$HomeOverview$reviews(
        reviews: reviews == _undefined
            ? _instance.reviews
            : (reviews as List<Fragment$ReviewFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

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

class _CopyWithStubImpl$Query$HomeOverview$reviews<TRes>
    implements CopyWith$Query$HomeOverview$reviews<TRes> {
  _CopyWithStubImpl$Query$HomeOverview$reviews(this._res);

  TRes _res;

  call({
    List<Fragment$ReviewFragment?>? reviews,
    String? $__typename,
  }) =>
      _res;

  reviews(_fn) => _res;
}
