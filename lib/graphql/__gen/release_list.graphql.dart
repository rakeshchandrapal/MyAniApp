import 'fragments/media.graphql.dart';
import 'fragments/page_info.graphql.dart';
import 'fragments/releasing_media.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$ReleasesList {
  factory Variables$Query$ReleasesList({int? page}) =>
      Variables$Query$ReleasesList._({
        if (page != null) r'page': page,
      });

  Variables$Query$ReleasesList._(this._$data);

  factory Variables$Query$ReleasesList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$ReleasesList._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$ReleasesList<Variables$Query$ReleasesList>
      get copyWith => CopyWith$Variables$Query$ReleasesList(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ReleasesList ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    return Object.hashAll([_$data.containsKey('page') ? l$page : const {}]);
  }
}

abstract class CopyWith$Variables$Query$ReleasesList<TRes> {
  factory CopyWith$Variables$Query$ReleasesList(
    Variables$Query$ReleasesList instance,
    TRes Function(Variables$Query$ReleasesList) then,
  ) = _CopyWithImpl$Variables$Query$ReleasesList;

  factory CopyWith$Variables$Query$ReleasesList.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ReleasesList;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$ReleasesList<TRes>
    implements CopyWith$Variables$Query$ReleasesList<TRes> {
  _CopyWithImpl$Variables$Query$ReleasesList(
    this._instance,
    this._then,
  );

  final Variables$Query$ReleasesList _instance;

  final TRes Function(Variables$Query$ReleasesList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$ReleasesList._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$ReleasesList<TRes>
    implements CopyWith$Variables$Query$ReleasesList<TRes> {
  _CopyWithStubImpl$Variables$Query$ReleasesList(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$ReleasesList {
  Query$ReleasesList({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$ReleasesList.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$ReleasesList(
      Page: l$Page == null
          ? null
          : Query$ReleasesList$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ReleasesList$Page? Page;

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
    if (other is! Query$ReleasesList || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$ReleasesList on Query$ReleasesList {
  CopyWith$Query$ReleasesList<Query$ReleasesList> get copyWith =>
      CopyWith$Query$ReleasesList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ReleasesList<TRes> {
  factory CopyWith$Query$ReleasesList(
    Query$ReleasesList instance,
    TRes Function(Query$ReleasesList) then,
  ) = _CopyWithImpl$Query$ReleasesList;

  factory CopyWith$Query$ReleasesList.stub(TRes res) =
      _CopyWithStubImpl$Query$ReleasesList;

  TRes call({
    Query$ReleasesList$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$ReleasesList$Page<TRes> get Page;
}

class _CopyWithImpl$Query$ReleasesList<TRes>
    implements CopyWith$Query$ReleasesList<TRes> {
  _CopyWithImpl$Query$ReleasesList(
    this._instance,
    this._then,
  );

  final Query$ReleasesList _instance;

  final TRes Function(Query$ReleasesList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReleasesList(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$ReleasesList$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ReleasesList$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$ReleasesList$Page.stub(_then(_instance))
        : CopyWith$Query$ReleasesList$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$ReleasesList<TRes>
    implements CopyWith$Query$ReleasesList<TRes> {
  _CopyWithStubImpl$Query$ReleasesList(this._res);

  TRes _res;

  call({
    Query$ReleasesList$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ReleasesList$Page<TRes> get Page =>
      CopyWith$Query$ReleasesList$Page.stub(_res);
}

const documentNodeQueryReleasesList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ReleasesList'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
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
                value: EnumValueNode(name: NameNode(value: 'START_DATE_DESC')),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionPageInfo,
  fragmentDefinitionReleasingMedia,
  fragmentDefinitionMediaFragment,
]);

class Query$ReleasesList$Page {
  Query$ReleasesList$Page({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$ReleasesList$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$ReleasesList$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ReleasingMedia.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Fragment$ReleasingMedia?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ReleasesList$Page || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$ReleasesList$Page on Query$ReleasesList$Page {
  CopyWith$Query$ReleasesList$Page<Query$ReleasesList$Page> get copyWith =>
      CopyWith$Query$ReleasesList$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ReleasesList$Page<TRes> {
  factory CopyWith$Query$ReleasesList$Page(
    Query$ReleasesList$Page instance,
    TRes Function(Query$ReleasesList$Page) then,
  ) = _CopyWithImpl$Query$ReleasesList$Page;

  factory CopyWith$Query$ReleasesList$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$ReleasesList$Page;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$ReleasingMedia?>? media,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Fragment$ReleasingMedia?>? Function(
              Iterable<
                  CopyWith$Fragment$ReleasingMedia<Fragment$ReleasingMedia>?>?)
          _fn);
}

class _CopyWithImpl$Query$ReleasesList$Page<TRes>
    implements CopyWith$Query$ReleasesList$Page<TRes> {
  _CopyWithImpl$Query$ReleasesList$Page(
    this._instance,
    this._then,
  );

  final Query$ReleasesList$Page _instance;

  final TRes Function(Query$ReleasesList$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReleasesList$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$ReleasingMedia?>?),
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

class _CopyWithStubImpl$Query$ReleasesList$Page<TRes>
    implements CopyWith$Query$ReleasesList$Page<TRes> {
  _CopyWithStubImpl$Query$ReleasesList$Page(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$ReleasingMedia?>? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  media(_fn) => _res;
}
