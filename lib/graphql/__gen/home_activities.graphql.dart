import 'fragments/list_activity.graphql.dart';
import 'fragments/media.graphql.dart';
import 'fragments/page_info.graphql.dart';
import 'fragments/text_activity.graphql.dart';
import 'fragments/user.graphql.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Variables$Query$HomeActivities {
  factory Variables$Query$HomeActivities({
    bool? isFollowing,
    bool? hasReplies,
    Enum$ActivityType? activityType,
    int? page,
  }) =>
      Variables$Query$HomeActivities._({
        if (isFollowing != null) r'isFollowing': isFollowing,
        if (hasReplies != null) r'hasReplies': hasReplies,
        if (activityType != null) r'activityType': activityType,
        if (page != null) r'page': page,
      });

  Variables$Query$HomeActivities._(this._$data);

  factory Variables$Query$HomeActivities.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isFollowing')) {
      final l$isFollowing = data['isFollowing'];
      result$data['isFollowing'] = (l$isFollowing as bool?);
    }
    if (data.containsKey('hasReplies')) {
      final l$hasReplies = data['hasReplies'];
      result$data['hasReplies'] = (l$hasReplies as bool?);
    }
    if (data.containsKey('activityType')) {
      final l$activityType = data['activityType'];
      result$data['activityType'] = l$activityType == null
          ? null
          : fromJson$Enum$ActivityType((l$activityType as String));
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$HomeActivities._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isFollowing => (_$data['isFollowing'] as bool?);

  bool? get hasReplies => (_$data['hasReplies'] as bool?);

  Enum$ActivityType? get activityType =>
      (_$data['activityType'] as Enum$ActivityType?);

  int? get page => (_$data['page'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isFollowing')) {
      final l$isFollowing = isFollowing;
      result$data['isFollowing'] = l$isFollowing;
    }
    if (_$data.containsKey('hasReplies')) {
      final l$hasReplies = hasReplies;
      result$data['hasReplies'] = l$hasReplies;
    }
    if (_$data.containsKey('activityType')) {
      final l$activityType = activityType;
      result$data['activityType'] = l$activityType == null
          ? null
          : toJson$Enum$ActivityType(l$activityType);
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$HomeActivities<Variables$Query$HomeActivities>
      get copyWith => CopyWith$Variables$Query$HomeActivities(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$HomeActivities ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isFollowing = isFollowing;
    final lOther$isFollowing = other.isFollowing;
    if (_$data.containsKey('isFollowing') !=
        other._$data.containsKey('isFollowing')) {
      return false;
    }
    if (l$isFollowing != lOther$isFollowing) {
      return false;
    }
    final l$hasReplies = hasReplies;
    final lOther$hasReplies = other.hasReplies;
    if (_$data.containsKey('hasReplies') !=
        other._$data.containsKey('hasReplies')) {
      return false;
    }
    if (l$hasReplies != lOther$hasReplies) {
      return false;
    }
    final l$activityType = activityType;
    final lOther$activityType = other.activityType;
    if (_$data.containsKey('activityType') !=
        other._$data.containsKey('activityType')) {
      return false;
    }
    if (l$activityType != lOther$activityType) {
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
    final l$isFollowing = isFollowing;
    final l$hasReplies = hasReplies;
    final l$activityType = activityType;
    final l$page = page;
    return Object.hashAll([
      _$data.containsKey('isFollowing') ? l$isFollowing : const {},
      _$data.containsKey('hasReplies') ? l$hasReplies : const {},
      _$data.containsKey('activityType') ? l$activityType : const {},
      _$data.containsKey('page') ? l$page : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$HomeActivities<TRes> {
  factory CopyWith$Variables$Query$HomeActivities(
    Variables$Query$HomeActivities instance,
    TRes Function(Variables$Query$HomeActivities) then,
  ) = _CopyWithImpl$Variables$Query$HomeActivities;

  factory CopyWith$Variables$Query$HomeActivities.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$HomeActivities;

  TRes call({
    bool? isFollowing,
    bool? hasReplies,
    Enum$ActivityType? activityType,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$HomeActivities<TRes>
    implements CopyWith$Variables$Query$HomeActivities<TRes> {
  _CopyWithImpl$Variables$Query$HomeActivities(
    this._instance,
    this._then,
  );

  final Variables$Query$HomeActivities _instance;

  final TRes Function(Variables$Query$HomeActivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isFollowing = _undefined,
    Object? hasReplies = _undefined,
    Object? activityType = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$HomeActivities._({
        ..._instance._$data,
        if (isFollowing != _undefined) 'isFollowing': (isFollowing as bool?),
        if (hasReplies != _undefined) 'hasReplies': (hasReplies as bool?),
        if (activityType != _undefined)
          'activityType': (activityType as Enum$ActivityType?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$HomeActivities<TRes>
    implements CopyWith$Variables$Query$HomeActivities<TRes> {
  _CopyWithStubImpl$Variables$Query$HomeActivities(this._res);

  TRes _res;

  call({
    bool? isFollowing,
    bool? hasReplies,
    Enum$ActivityType? activityType,
    int? page,
  }) =>
      _res;
}

class Query$HomeActivities {
  Query$HomeActivities({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$HomeActivities.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$HomeActivities(
      Page: l$Page == null
          ? null
          : Query$HomeActivities$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$HomeActivities$Page? Page;

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
    if (other is! Query$HomeActivities || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$HomeActivities on Query$HomeActivities {
  CopyWith$Query$HomeActivities<Query$HomeActivities> get copyWith =>
      CopyWith$Query$HomeActivities(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$HomeActivities<TRes> {
  factory CopyWith$Query$HomeActivities(
    Query$HomeActivities instance,
    TRes Function(Query$HomeActivities) then,
  ) = _CopyWithImpl$Query$HomeActivities;

  factory CopyWith$Query$HomeActivities.stub(TRes res) =
      _CopyWithStubImpl$Query$HomeActivities;

  TRes call({
    Query$HomeActivities$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$HomeActivities$Page<TRes> get Page;
}

class _CopyWithImpl$Query$HomeActivities<TRes>
    implements CopyWith$Query$HomeActivities<TRes> {
  _CopyWithImpl$Query$HomeActivities(
    this._instance,
    this._then,
  );

  final Query$HomeActivities _instance;

  final TRes Function(Query$HomeActivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$HomeActivities(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$HomeActivities$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$HomeActivities$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$HomeActivities$Page.stub(_then(_instance))
        : CopyWith$Query$HomeActivities$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$HomeActivities<TRes>
    implements CopyWith$Query$HomeActivities<TRes> {
  _CopyWithStubImpl$Query$HomeActivities(this._res);

  TRes _res;

  call({
    Query$HomeActivities$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$HomeActivities$Page<TRes> get Page =>
      CopyWith$Query$HomeActivities$Page.stub(_res);
}

const documentNodeQueryHomeActivities = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'HomeActivities'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isFollowing')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'hasReplies')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'activityType')),
        type: NamedTypeNode(
          name: NameNode(value: 'ActivityType'),
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
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '25'),
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
            name: NameNode(value: 'activities'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'isFollowing'),
                value: VariableNode(name: NameNode(value: 'isFollowing')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'activityType')),
              ),
              ArgumentNode(
                name: NameNode(value: 'hasRepliesOrTypeText'),
                value: VariableNode(name: NameNode(value: 'hasReplies')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type_in'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'TEXT')),
                  EnumValueNode(name: NameNode(value: 'ANIME_LIST')),
                  EnumValueNode(name: NameNode(value: 'MANGA_LIST')),
                ]),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'ID_DESC')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'TextActivity'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'TextActivity'),
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
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'ListActivity'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'ListActivity'),
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
  fragmentDefinitionTextActivity,
  fragmentDefinitionUserFragment,
  fragmentDefinitionListActivity,
  fragmentDefinitionMediaFragment,
]);

class Query$HomeActivities$Page {
  Query$HomeActivities$Page({
    this.pageInfo,
    this.activities,
    this.$__typename = 'Page',
  });

  factory Query$HomeActivities$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$activities = json['activities'];
    final l$$__typename = json['__typename'];
    return Query$HomeActivities$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      activities: (l$activities as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$HomeActivities$Page$activities.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$HomeActivities$Page$activities?>? activities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$activities = activities;
    _resultData['activities'] = l$activities?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$activities = activities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$activities == null ? null : Object.hashAll(l$activities.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$HomeActivities$Page ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$activities = activities;
    final lOther$activities = other.activities;
    if (l$activities != null && lOther$activities != null) {
      if (l$activities.length != lOther$activities.length) {
        return false;
      }
      for (int i = 0; i < l$activities.length; i++) {
        final l$activities$entry = l$activities[i];
        final lOther$activities$entry = lOther$activities[i];
        if (l$activities$entry != lOther$activities$entry) {
          return false;
        }
      }
    } else if (l$activities != lOther$activities) {
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

extension UtilityExtension$Query$HomeActivities$Page
    on Query$HomeActivities$Page {
  CopyWith$Query$HomeActivities$Page<Query$HomeActivities$Page> get copyWith =>
      CopyWith$Query$HomeActivities$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$HomeActivities$Page<TRes> {
  factory CopyWith$Query$HomeActivities$Page(
    Query$HomeActivities$Page instance,
    TRes Function(Query$HomeActivities$Page) then,
  ) = _CopyWithImpl$Query$HomeActivities$Page;

  factory CopyWith$Query$HomeActivities$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$HomeActivities$Page;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$HomeActivities$Page$activities?>? activities,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes activities(
      Iterable<Query$HomeActivities$Page$activities?>? Function(
              Iterable<
                  CopyWith$Query$HomeActivities$Page$activities<
                      Query$HomeActivities$Page$activities>?>?)
          _fn);
}

class _CopyWithImpl$Query$HomeActivities$Page<TRes>
    implements CopyWith$Query$HomeActivities$Page<TRes> {
  _CopyWithImpl$Query$HomeActivities$Page(
    this._instance,
    this._then,
  );

  final Query$HomeActivities$Page _instance;

  final TRes Function(Query$HomeActivities$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? activities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$HomeActivities$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        activities: activities == _undefined
            ? _instance.activities
            : (activities as List<Query$HomeActivities$Page$activities?>?),
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

  TRes activities(
          Iterable<Query$HomeActivities$Page$activities?>? Function(
                  Iterable<
                      CopyWith$Query$HomeActivities$Page$activities<
                          Query$HomeActivities$Page$activities>?>?)
              _fn) =>
      call(
          activities: _fn(_instance.activities?.map((e) => e == null
              ? null
              : CopyWith$Query$HomeActivities$Page$activities(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$HomeActivities$Page<TRes>
    implements CopyWith$Query$HomeActivities$Page<TRes> {
  _CopyWithStubImpl$Query$HomeActivities$Page(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$HomeActivities$Page$activities?>? activities,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  activities(_fn) => _res;
}

class Query$HomeActivities$Page$activities {
  Query$HomeActivities$Page$activities({required this.$__typename});

  factory Query$HomeActivities$Page$activities.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TextActivity":
        return Query$HomeActivities$Page$activities$$TextActivity.fromJson(
            json);

      case "ListActivity":
        return Query$HomeActivities$Page$activities$$ListActivity.fromJson(
            json);

      case "MessageActivity":
        return Query$HomeActivities$Page$activities$$MessageActivity.fromJson(
            json);

      default:
        final l$$__typename = json['__typename'];
        return Query$HomeActivities$Page$activities(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$HomeActivities$Page$activities ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$HomeActivities$Page$activities
    on Query$HomeActivities$Page$activities {
  CopyWith$Query$HomeActivities$Page$activities<
          Query$HomeActivities$Page$activities>
      get copyWith => CopyWith$Query$HomeActivities$Page$activities(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$HomeActivities$Page$activities$$TextActivity)
        textActivity,
    required _T Function(Query$HomeActivities$Page$activities$$ListActivity)
        listActivity,
    required _T Function(Query$HomeActivities$Page$activities$$MessageActivity)
        messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TextActivity":
        return textActivity(
            this as Query$HomeActivities$Page$activities$$TextActivity);

      case "ListActivity":
        return listActivity(
            this as Query$HomeActivities$Page$activities$$ListActivity);

      case "MessageActivity":
        return messageActivity(
            this as Query$HomeActivities$Page$activities$$MessageActivity);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$HomeActivities$Page$activities$$TextActivity)?
        textActivity,
    _T Function(Query$HomeActivities$Page$activities$$ListActivity)?
        listActivity,
    _T Function(Query$HomeActivities$Page$activities$$MessageActivity)?
        messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TextActivity":
        if (textActivity != null) {
          return textActivity(
              this as Query$HomeActivities$Page$activities$$TextActivity);
        } else {
          return orElse();
        }

      case "ListActivity":
        if (listActivity != null) {
          return listActivity(
              this as Query$HomeActivities$Page$activities$$ListActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(
              this as Query$HomeActivities$Page$activities$$MessageActivity);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$HomeActivities$Page$activities<TRes> {
  factory CopyWith$Query$HomeActivities$Page$activities(
    Query$HomeActivities$Page$activities instance,
    TRes Function(Query$HomeActivities$Page$activities) then,
  ) = _CopyWithImpl$Query$HomeActivities$Page$activities;

  factory CopyWith$Query$HomeActivities$Page$activities.stub(TRes res) =
      _CopyWithStubImpl$Query$HomeActivities$Page$activities;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$HomeActivities$Page$activities<TRes>
    implements CopyWith$Query$HomeActivities$Page$activities<TRes> {
  _CopyWithImpl$Query$HomeActivities$Page$activities(
    this._instance,
    this._then,
  );

  final Query$HomeActivities$Page$activities _instance;

  final TRes Function(Query$HomeActivities$Page$activities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$HomeActivities$Page$activities(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$HomeActivities$Page$activities<TRes>
    implements CopyWith$Query$HomeActivities$Page$activities<TRes> {
  _CopyWithStubImpl$Query$HomeActivities$Page$activities(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$HomeActivities$Page$activities$$TextActivity
    implements Fragment$TextActivity, Query$HomeActivities$Page$activities {
  Query$HomeActivities$Page$activities$$TextActivity({
    required this.id,
    this.userId,
    this.type,
    required this.replyCount,
    this.text,
    this.isLocked,
    this.isSubscribed,
    this.isLiked,
    required this.likeCount,
    required this.createdAt,
    this.user,
    this.$__typename = 'TextActivity',
  });

  factory Query$HomeActivities$Page$activities$$TextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$type = json['type'];
    final l$replyCount = json['replyCount'];
    final l$text = json['text'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$HomeActivities$Page$activities$$TextActivity(
      id: (l$id as int),
      userId: (l$userId as int?),
      type: l$type == null
          ? null
          : fromJson$Enum$ActivityType((l$type as String)),
      replyCount: (l$replyCount as int),
      text: (l$text as String?),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? userId;

  final Enum$ActivityType? type;

  final int replyCount;

  final String? text;

  final bool? isLocked;

  final bool? isSubscribed;

  final bool? isLiked;

  final int likeCount;

  final int createdAt;

  final Fragment$UserFragment? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$ActivityType(l$type);
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$type = type;
    final l$replyCount = replyCount;
    final l$text = text;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$type,
      l$replyCount,
      l$text,
      l$isLocked,
      l$isSubscribed,
      l$isLiked,
      l$likeCount,
      l$createdAt,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$HomeActivities$Page$activities$$TextActivity ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
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

extension UtilityExtension$Query$HomeActivities$Page$activities$$TextActivity
    on Query$HomeActivities$Page$activities$$TextActivity {
  CopyWith$Query$HomeActivities$Page$activities$$TextActivity<
          Query$HomeActivities$Page$activities$$TextActivity>
      get copyWith =>
          CopyWith$Query$HomeActivities$Page$activities$$TextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$HomeActivities$Page$activities$$TextActivity<
    TRes> {
  factory CopyWith$Query$HomeActivities$Page$activities$$TextActivity(
    Query$HomeActivities$Page$activities$$TextActivity instance,
    TRes Function(Query$HomeActivities$Page$activities$$TextActivity) then,
  ) = _CopyWithImpl$Query$HomeActivities$Page$activities$$TextActivity;

  factory CopyWith$Query$HomeActivities$Page$activities$$TextActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$HomeActivities$Page$activities$$TextActivity;

  TRes call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    int? replyCount,
    String? text,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$UserFragment? user,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$HomeActivities$Page$activities$$TextActivity<TRes>
    implements
        CopyWith$Query$HomeActivities$Page$activities$$TextActivity<TRes> {
  _CopyWithImpl$Query$HomeActivities$Page$activities$$TextActivity(
    this._instance,
    this._then,
  );

  final Query$HomeActivities$Page$activities$$TextActivity _instance;

  final TRes Function(Query$HomeActivities$Page$activities$$TextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? replyCount = _undefined,
    Object? text = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$HomeActivities$Page$activities$$TextActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined ? _instance.userId : (userId as int?),
        type:
            type == _undefined ? _instance.type : (type as Enum$ActivityType?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        text: text == _undefined ? _instance.text : (text as String?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$HomeActivities$Page$activities$$TextActivity<TRes>
    implements
        CopyWith$Query$HomeActivities$Page$activities$$TextActivity<TRes> {
  _CopyWithStubImpl$Query$HomeActivities$Page$activities$$TextActivity(
      this._res);

  TRes _res;

  call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    int? replyCount,
    String? text,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$UserFragment? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$HomeActivities$Page$activities$$ListActivity
    implements Fragment$ListActivity, Query$HomeActivities$Page$activities {
  Query$HomeActivities$Page$activities$$ListActivity({
    required this.id,
    this.userId,
    this.type,
    this.status,
    this.progress,
    required this.replyCount,
    this.isLocked,
    this.isSubscribed,
    this.isLiked,
    required this.likeCount,
    required this.createdAt,
    this.user,
    this.media,
    this.$__typename = 'ListActivity',
  });

  factory Query$HomeActivities$Page$activities$$ListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$type = json['type'];
    final l$status = json['status'];
    final l$progress = json['progress'];
    final l$replyCount = json['replyCount'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$HomeActivities$Page$activities$$ListActivity(
      id: (l$id as int),
      userId: (l$userId as int?),
      type: l$type == null
          ? null
          : fromJson$Enum$ActivityType((l$type as String)),
      status: (l$status as String?),
      progress: (l$progress as String?),
      replyCount: (l$replyCount as int),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : Fragment$MediaFragment.fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? userId;

  final Enum$ActivityType? type;

  final String? status;

  final String? progress;

  final int replyCount;

  final bool? isLocked;

  final bool? isSubscribed;

  final bool? isLiked;

  final int likeCount;

  final int createdAt;

  final Fragment$UserFragment? user;

  final Fragment$MediaFragment? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$ActivityType(l$type);
    final l$status = status;
    _resultData['status'] = l$status;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
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
    final l$userId = userId;
    final l$type = type;
    final l$status = status;
    final l$progress = progress;
    final l$replyCount = replyCount;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$type,
      l$status,
      l$progress,
      l$replyCount,
      l$isLocked,
      l$isSubscribed,
      l$isLiked,
      l$likeCount,
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
    if (other is! Query$HomeActivities$Page$activities$$ListActivity ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
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

extension UtilityExtension$Query$HomeActivities$Page$activities$$ListActivity
    on Query$HomeActivities$Page$activities$$ListActivity {
  CopyWith$Query$HomeActivities$Page$activities$$ListActivity<
          Query$HomeActivities$Page$activities$$ListActivity>
      get copyWith =>
          CopyWith$Query$HomeActivities$Page$activities$$ListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$HomeActivities$Page$activities$$ListActivity<
    TRes> {
  factory CopyWith$Query$HomeActivities$Page$activities$$ListActivity(
    Query$HomeActivities$Page$activities$$ListActivity instance,
    TRes Function(Query$HomeActivities$Page$activities$$ListActivity) then,
  ) = _CopyWithImpl$Query$HomeActivities$Page$activities$$ListActivity;

  factory CopyWith$Query$HomeActivities$Page$activities$$ListActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$HomeActivities$Page$activities$$ListActivity;

  TRes call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    String? status,
    String? progress,
    int? replyCount,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$UserFragment? user,
    Fragment$MediaFragment? media,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get user;
  CopyWith$Fragment$MediaFragment<TRes> get media;
}

class _CopyWithImpl$Query$HomeActivities$Page$activities$$ListActivity<TRes>
    implements
        CopyWith$Query$HomeActivities$Page$activities$$ListActivity<TRes> {
  _CopyWithImpl$Query$HomeActivities$Page$activities$$ListActivity(
    this._instance,
    this._then,
  );

  final Query$HomeActivities$Page$activities$$ListActivity _instance;

  final TRes Function(Query$HomeActivities$Page$activities$$ListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? status = _undefined,
    Object? progress = _undefined,
    Object? replyCount = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$HomeActivities$Page$activities$$ListActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined ? _instance.userId : (userId as int?),
        type:
            type == _undefined ? _instance.type : (type as Enum$ActivityType?),
        status: status == _undefined ? _instance.status : (status as String?),
        progress:
            progress == _undefined ? _instance.progress : (progress as String?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$MediaFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }

  CopyWith$Fragment$MediaFragment<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$HomeActivities$Page$activities$$ListActivity<TRes>
    implements
        CopyWith$Query$HomeActivities$Page$activities$$ListActivity<TRes> {
  _CopyWithStubImpl$Query$HomeActivities$Page$activities$$ListActivity(
      this._res);

  TRes _res;

  call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    String? status,
    String? progress,
    int? replyCount,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$UserFragment? user,
    Fragment$MediaFragment? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);

  CopyWith$Fragment$MediaFragment<TRes> get media =>
      CopyWith$Fragment$MediaFragment.stub(_res);
}

class Query$HomeActivities$Page$activities$$MessageActivity
    implements Query$HomeActivities$Page$activities {
  Query$HomeActivities$Page$activities$$MessageActivity(
      {this.$__typename = 'MessageActivity'});

  factory Query$HomeActivities$Page$activities$$MessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$HomeActivities$Page$activities$$MessageActivity(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$HomeActivities$Page$activities$$MessageActivity ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$HomeActivities$Page$activities$$MessageActivity
    on Query$HomeActivities$Page$activities$$MessageActivity {
  CopyWith$Query$HomeActivities$Page$activities$$MessageActivity<
          Query$HomeActivities$Page$activities$$MessageActivity>
      get copyWith =>
          CopyWith$Query$HomeActivities$Page$activities$$MessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$HomeActivities$Page$activities$$MessageActivity<
    TRes> {
  factory CopyWith$Query$HomeActivities$Page$activities$$MessageActivity(
    Query$HomeActivities$Page$activities$$MessageActivity instance,
    TRes Function(Query$HomeActivities$Page$activities$$MessageActivity) then,
  ) = _CopyWithImpl$Query$HomeActivities$Page$activities$$MessageActivity;

  factory CopyWith$Query$HomeActivities$Page$activities$$MessageActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$HomeActivities$Page$activities$$MessageActivity;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$HomeActivities$Page$activities$$MessageActivity<TRes>
    implements
        CopyWith$Query$HomeActivities$Page$activities$$MessageActivity<TRes> {
  _CopyWithImpl$Query$HomeActivities$Page$activities$$MessageActivity(
    this._instance,
    this._then,
  );

  final Query$HomeActivities$Page$activities$$MessageActivity _instance;

  final TRes Function(Query$HomeActivities$Page$activities$$MessageActivity)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$HomeActivities$Page$activities$$MessageActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$HomeActivities$Page$activities$$MessageActivity<
        TRes>
    implements
        CopyWith$Query$HomeActivities$Page$activities$$MessageActivity<TRes> {
  _CopyWithStubImpl$Query$HomeActivities$Page$activities$$MessageActivity(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Variables$Mutation$ToggleLike {
  factory Variables$Mutation$ToggleLike({
    Enum$LikeableType? type,
    int? id,
  }) =>
      Variables$Mutation$ToggleLike._({
        if (type != null) r'type': type,
        if (id != null) r'id': id,
      });

  Variables$Mutation$ToggleLike._(this._$data);

  factory Variables$Mutation$ToggleLike.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$LikeableType((l$type as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Mutation$ToggleLike._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$LikeableType? get type => (_$data['type'] as Enum$LikeableType?);

  int? get id => (_$data['id'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$LikeableType(l$type);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ToggleLike<Variables$Mutation$ToggleLike>
      get copyWith => CopyWith$Variables$Mutation$ToggleLike(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ToggleLike ||
        runtimeType != other.runtimeType) {
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
    final l$type = type;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ToggleLike<TRes> {
  factory CopyWith$Variables$Mutation$ToggleLike(
    Variables$Mutation$ToggleLike instance,
    TRes Function(Variables$Mutation$ToggleLike) then,
  ) = _CopyWithImpl$Variables$Mutation$ToggleLike;

  factory CopyWith$Variables$Mutation$ToggleLike.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ToggleLike;

  TRes call({
    Enum$LikeableType? type,
    int? id,
  });
}

class _CopyWithImpl$Variables$Mutation$ToggleLike<TRes>
    implements CopyWith$Variables$Mutation$ToggleLike<TRes> {
  _CopyWithImpl$Variables$Mutation$ToggleLike(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ToggleLike _instance;

  final TRes Function(Variables$Mutation$ToggleLike) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Variables$Mutation$ToggleLike._({
        ..._instance._$data,
        if (type != _undefined) 'type': (type as Enum$LikeableType?),
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ToggleLike<TRes>
    implements CopyWith$Variables$Mutation$ToggleLike<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ToggleLike(this._res);

  TRes _res;

  call({
    Enum$LikeableType? type,
    int? id,
  }) =>
      _res;
}

class Mutation$ToggleLike {
  Mutation$ToggleLike({
    this.ToggleLikeV2,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ToggleLike.fromJson(Map<String, dynamic> json) {
    final l$ToggleLikeV2 = json['ToggleLikeV2'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleLike(
      ToggleLikeV2: l$ToggleLikeV2 == null
          ? null
          : Mutation$ToggleLike$ToggleLikeV2.fromJson(
              (l$ToggleLikeV2 as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleLike$ToggleLikeV2? ToggleLikeV2;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ToggleLikeV2 = ToggleLikeV2;
    _resultData['ToggleLikeV2'] = l$ToggleLikeV2?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ToggleLikeV2 = ToggleLikeV2;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ToggleLikeV2,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ToggleLike || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ToggleLikeV2 = ToggleLikeV2;
    final lOther$ToggleLikeV2 = other.ToggleLikeV2;
    if (l$ToggleLikeV2 != lOther$ToggleLikeV2) {
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

extension UtilityExtension$Mutation$ToggleLike on Mutation$ToggleLike {
  CopyWith$Mutation$ToggleLike<Mutation$ToggleLike> get copyWith =>
      CopyWith$Mutation$ToggleLike(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ToggleLike<TRes> {
  factory CopyWith$Mutation$ToggleLike(
    Mutation$ToggleLike instance,
    TRes Function(Mutation$ToggleLike) then,
  ) = _CopyWithImpl$Mutation$ToggleLike;

  factory CopyWith$Mutation$ToggleLike.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleLike;

  TRes call({
    Mutation$ToggleLike$ToggleLikeV2? ToggleLikeV2,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleLike$ToggleLikeV2<TRes> get ToggleLikeV2;
}

class _CopyWithImpl$Mutation$ToggleLike<TRes>
    implements CopyWith$Mutation$ToggleLike<TRes> {
  _CopyWithImpl$Mutation$ToggleLike(
    this._instance,
    this._then,
  );

  final Mutation$ToggleLike _instance;

  final TRes Function(Mutation$ToggleLike) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ToggleLikeV2 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleLike(
        ToggleLikeV2: ToggleLikeV2 == _undefined
            ? _instance.ToggleLikeV2
            : (ToggleLikeV2 as Mutation$ToggleLike$ToggleLikeV2?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleLike$ToggleLikeV2<TRes> get ToggleLikeV2 {
    final local$ToggleLikeV2 = _instance.ToggleLikeV2;
    return local$ToggleLikeV2 == null
        ? CopyWith$Mutation$ToggleLike$ToggleLikeV2.stub(_then(_instance))
        : CopyWith$Mutation$ToggleLike$ToggleLikeV2(
            local$ToggleLikeV2, (e) => call(ToggleLikeV2: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleLike<TRes>
    implements CopyWith$Mutation$ToggleLike<TRes> {
  _CopyWithStubImpl$Mutation$ToggleLike(this._res);

  TRes _res;

  call({
    Mutation$ToggleLike$ToggleLikeV2? ToggleLikeV2,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleLike$ToggleLikeV2<TRes> get ToggleLikeV2 =>
      CopyWith$Mutation$ToggleLike$ToggleLikeV2.stub(_res);
}

const documentNodeMutationToggleLike = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ToggleLike'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'type')),
        type: NamedTypeNode(
          name: NameNode(value: 'LikeableType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
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
        name: NameNode(value: 'ToggleLikeV2'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: VariableNode(name: NameNode(value: 'type')),
          ),
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ListActivity'),
              isNonNull: false,
            )),
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
                name: NameNode(value: 'likeCount'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MessageActivity'),
              isNonNull: false,
            )),
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
                name: NameNode(value: 'likeCount'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'TextActivity'),
              isNonNull: false,
            )),
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
                name: NameNode(value: 'likeCount'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ActivityReply'),
              isNonNull: false,
            )),
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
                name: NameNode(value: 'likeCount'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'Thread'),
              isNonNull: false,
            )),
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
                name: NameNode(value: 'likeCount'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ThreadComment'),
              isNonNull: false,
            )),
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
                name: NameNode(value: 'likeCount'),
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

class Mutation$ToggleLike$ToggleLikeV2 {
  Mutation$ToggleLike$ToggleLikeV2({required this.$__typename});

  factory Mutation$ToggleLike$ToggleLikeV2.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ListActivity":
        return Mutation$ToggleLike$ToggleLikeV2$$ListActivity.fromJson(json);

      case "MessageActivity":
        return Mutation$ToggleLike$ToggleLikeV2$$MessageActivity.fromJson(json);

      case "TextActivity":
        return Mutation$ToggleLike$ToggleLikeV2$$TextActivity.fromJson(json);

      case "ActivityReply":
        return Mutation$ToggleLike$ToggleLikeV2$$ActivityReply.fromJson(json);

      case "Thread":
        return Mutation$ToggleLike$ToggleLikeV2$$Thread.fromJson(json);

      case "ThreadComment":
        return Mutation$ToggleLike$ToggleLikeV2$$ThreadComment.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$ToggleLike$ToggleLikeV2(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ToggleLike$ToggleLikeV2 ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$ToggleLike$ToggleLikeV2
    on Mutation$ToggleLike$ToggleLikeV2 {
  CopyWith$Mutation$ToggleLike$ToggleLikeV2<Mutation$ToggleLike$ToggleLikeV2>
      get copyWith => CopyWith$Mutation$ToggleLike$ToggleLikeV2(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Mutation$ToggleLike$ToggleLikeV2$$ListActivity)
        listActivity,
    required _T Function(Mutation$ToggleLike$ToggleLikeV2$$MessageActivity)
        messageActivity,
    required _T Function(Mutation$ToggleLike$ToggleLikeV2$$TextActivity)
        textActivity,
    required _T Function(Mutation$ToggleLike$ToggleLikeV2$$ActivityReply)
        activityReply,
    required _T Function(Mutation$ToggleLike$ToggleLikeV2$$Thread) thread,
    required _T Function(Mutation$ToggleLike$ToggleLikeV2$$ThreadComment)
        threadComment,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        return listActivity(
            this as Mutation$ToggleLike$ToggleLikeV2$$ListActivity);

      case "MessageActivity":
        return messageActivity(
            this as Mutation$ToggleLike$ToggleLikeV2$$MessageActivity);

      case "TextActivity":
        return textActivity(
            this as Mutation$ToggleLike$ToggleLikeV2$$TextActivity);

      case "ActivityReply":
        return activityReply(
            this as Mutation$ToggleLike$ToggleLikeV2$$ActivityReply);

      case "Thread":
        return thread(this as Mutation$ToggleLike$ToggleLikeV2$$Thread);

      case "ThreadComment":
        return threadComment(
            this as Mutation$ToggleLike$ToggleLikeV2$$ThreadComment);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$ToggleLike$ToggleLikeV2$$ListActivity)? listActivity,
    _T Function(Mutation$ToggleLike$ToggleLikeV2$$MessageActivity)?
        messageActivity,
    _T Function(Mutation$ToggleLike$ToggleLikeV2$$TextActivity)? textActivity,
    _T Function(Mutation$ToggleLike$ToggleLikeV2$$ActivityReply)? activityReply,
    _T Function(Mutation$ToggleLike$ToggleLikeV2$$Thread)? thread,
    _T Function(Mutation$ToggleLike$ToggleLikeV2$$ThreadComment)? threadComment,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        if (listActivity != null) {
          return listActivity(
              this as Mutation$ToggleLike$ToggleLikeV2$$ListActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(
              this as Mutation$ToggleLike$ToggleLikeV2$$MessageActivity);
        } else {
          return orElse();
        }

      case "TextActivity":
        if (textActivity != null) {
          return textActivity(
              this as Mutation$ToggleLike$ToggleLikeV2$$TextActivity);
        } else {
          return orElse();
        }

      case "ActivityReply":
        if (activityReply != null) {
          return activityReply(
              this as Mutation$ToggleLike$ToggleLikeV2$$ActivityReply);
        } else {
          return orElse();
        }

      case "Thread":
        if (thread != null) {
          return thread(this as Mutation$ToggleLike$ToggleLikeV2$$Thread);
        } else {
          return orElse();
        }

      case "ThreadComment":
        if (threadComment != null) {
          return threadComment(
              this as Mutation$ToggleLike$ToggleLikeV2$$ThreadComment);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$ToggleLike$ToggleLikeV2<TRes> {
  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2(
    Mutation$ToggleLike$ToggleLikeV2 instance,
    TRes Function(Mutation$ToggleLike$ToggleLikeV2) then,
  ) = _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2;

  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2<TRes> {
  _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2(
    this._instance,
    this._then,
  );

  final Mutation$ToggleLike$ToggleLikeV2 _instance;

  final TRes Function(Mutation$ToggleLike$ToggleLikeV2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$ToggleLike$ToggleLikeV2(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2<TRes> {
  _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$ToggleLike$ToggleLikeV2$$ListActivity
    implements Mutation$ToggleLike$ToggleLikeV2 {
  Mutation$ToggleLike$ToggleLikeV2$$ListActivity({
    required this.id,
    required this.likeCount,
    this.isLiked,
    this.$__typename = 'ListActivity',
  });

  factory Mutation$ToggleLike$ToggleLikeV2$$ListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleLike$ToggleLikeV2$$ListActivity(
      id: (l$id as int),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int likeCount;

  final bool? isLiked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$likeCount,
      l$isLiked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ToggleLike$ToggleLikeV2$$ListActivity ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtension$Mutation$ToggleLike$ToggleLikeV2$$ListActivity
    on Mutation$ToggleLike$ToggleLikeV2$$ListActivity {
  CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ListActivity<
          Mutation$ToggleLike$ToggleLikeV2$$ListActivity>
      get copyWith => CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ListActivity<TRes> {
  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ListActivity(
    Mutation$ToggleLike$ToggleLikeV2$$ListActivity instance,
    TRes Function(Mutation$ToggleLike$ToggleLikeV2$$ListActivity) then,
  ) = _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$ListActivity;

  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ListActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$ListActivity;

  TRes call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$ListActivity<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ListActivity<TRes> {
  _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$ListActivity(
    this._instance,
    this._then,
  );

  final Mutation$ToggleLike$ToggleLikeV2$$ListActivity _instance;

  final TRes Function(Mutation$ToggleLike$ToggleLikeV2$$ListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleLike$ToggleLikeV2$$ListActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$ListActivity<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ListActivity<TRes> {
  _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$ListActivity(this._res);

  TRes _res;

  call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleLike$ToggleLikeV2$$MessageActivity
    implements Mutation$ToggleLike$ToggleLikeV2 {
  Mutation$ToggleLike$ToggleLikeV2$$MessageActivity({
    required this.id,
    required this.likeCount,
    this.isLiked,
    this.$__typename = 'MessageActivity',
  });

  factory Mutation$ToggleLike$ToggleLikeV2$$MessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleLike$ToggleLikeV2$$MessageActivity(
      id: (l$id as int),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int likeCount;

  final bool? isLiked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$likeCount,
      l$isLiked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ToggleLike$ToggleLikeV2$$MessageActivity ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtension$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity
    on Mutation$ToggleLike$ToggleLikeV2$$MessageActivity {
  CopyWith$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity<
          Mutation$ToggleLike$ToggleLikeV2$$MessageActivity>
      get copyWith =>
          CopyWith$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity<
    TRes> {
  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity(
    Mutation$ToggleLike$ToggleLikeV2$$MessageActivity instance,
    TRes Function(Mutation$ToggleLike$ToggleLikeV2$$MessageActivity) then,
  ) = _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity;

  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity;

  TRes call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity<TRes>
    implements
        CopyWith$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity<TRes> {
  _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity(
    this._instance,
    this._then,
  );

  final Mutation$ToggleLike$ToggleLikeV2$$MessageActivity _instance;

  final TRes Function(Mutation$ToggleLike$ToggleLikeV2$$MessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleLike$ToggleLikeV2$$MessageActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity<TRes>
    implements
        CopyWith$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity<TRes> {
  _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity(
      this._res);

  TRes _res;

  call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleLike$ToggleLikeV2$$TextActivity
    implements Mutation$ToggleLike$ToggleLikeV2 {
  Mutation$ToggleLike$ToggleLikeV2$$TextActivity({
    required this.id,
    required this.likeCount,
    this.isLiked,
    this.$__typename = 'TextActivity',
  });

  factory Mutation$ToggleLike$ToggleLikeV2$$TextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleLike$ToggleLikeV2$$TextActivity(
      id: (l$id as int),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int likeCount;

  final bool? isLiked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$likeCount,
      l$isLiked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ToggleLike$ToggleLikeV2$$TextActivity ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtension$Mutation$ToggleLike$ToggleLikeV2$$TextActivity
    on Mutation$ToggleLike$ToggleLikeV2$$TextActivity {
  CopyWith$Mutation$ToggleLike$ToggleLikeV2$$TextActivity<
          Mutation$ToggleLike$ToggleLikeV2$$TextActivity>
      get copyWith => CopyWith$Mutation$ToggleLike$ToggleLikeV2$$TextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleLike$ToggleLikeV2$$TextActivity<TRes> {
  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$TextActivity(
    Mutation$ToggleLike$ToggleLikeV2$$TextActivity instance,
    TRes Function(Mutation$ToggleLike$ToggleLikeV2$$TextActivity) then,
  ) = _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$TextActivity;

  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$TextActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$TextActivity;

  TRes call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$TextActivity<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$TextActivity<TRes> {
  _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$TextActivity(
    this._instance,
    this._then,
  );

  final Mutation$ToggleLike$ToggleLikeV2$$TextActivity _instance;

  final TRes Function(Mutation$ToggleLike$ToggleLikeV2$$TextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleLike$ToggleLikeV2$$TextActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$TextActivity<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$TextActivity<TRes> {
  _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$TextActivity(this._res);

  TRes _res;

  call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleLike$ToggleLikeV2$$ActivityReply
    implements Mutation$ToggleLike$ToggleLikeV2 {
  Mutation$ToggleLike$ToggleLikeV2$$ActivityReply({
    required this.id,
    required this.likeCount,
    this.isLiked,
    this.$__typename = 'ActivityReply',
  });

  factory Mutation$ToggleLike$ToggleLikeV2$$ActivityReply.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleLike$ToggleLikeV2$$ActivityReply(
      id: (l$id as int),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int likeCount;

  final bool? isLiked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$likeCount,
      l$isLiked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ToggleLike$ToggleLikeV2$$ActivityReply ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtension$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply
    on Mutation$ToggleLike$ToggleLikeV2$$ActivityReply {
  CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply<
          Mutation$ToggleLike$ToggleLikeV2$$ActivityReply>
      get copyWith => CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply<TRes> {
  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply(
    Mutation$ToggleLike$ToggleLikeV2$$ActivityReply instance,
    TRes Function(Mutation$ToggleLike$ToggleLikeV2$$ActivityReply) then,
  ) = _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply;

  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply;

  TRes call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply<TRes> {
  _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply(
    this._instance,
    this._then,
  );

  final Mutation$ToggleLike$ToggleLikeV2$$ActivityReply _instance;

  final TRes Function(Mutation$ToggleLike$ToggleLikeV2$$ActivityReply) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleLike$ToggleLikeV2$$ActivityReply(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply<TRes> {
  _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply(this._res);

  TRes _res;

  call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleLike$ToggleLikeV2$$Thread
    implements Mutation$ToggleLike$ToggleLikeV2 {
  Mutation$ToggleLike$ToggleLikeV2$$Thread({
    required this.id,
    required this.likeCount,
    this.isLiked,
    this.$__typename = 'Thread',
  });

  factory Mutation$ToggleLike$ToggleLikeV2$$Thread.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleLike$ToggleLikeV2$$Thread(
      id: (l$id as int),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int likeCount;

  final bool? isLiked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$likeCount,
      l$isLiked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ToggleLike$ToggleLikeV2$$Thread ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtension$Mutation$ToggleLike$ToggleLikeV2$$Thread
    on Mutation$ToggleLike$ToggleLikeV2$$Thread {
  CopyWith$Mutation$ToggleLike$ToggleLikeV2$$Thread<
          Mutation$ToggleLike$ToggleLikeV2$$Thread>
      get copyWith => CopyWith$Mutation$ToggleLike$ToggleLikeV2$$Thread(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleLike$ToggleLikeV2$$Thread<TRes> {
  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$Thread(
    Mutation$ToggleLike$ToggleLikeV2$$Thread instance,
    TRes Function(Mutation$ToggleLike$ToggleLikeV2$$Thread) then,
  ) = _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$Thread;

  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$Thread.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$Thread;

  TRes call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$Thread<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$Thread<TRes> {
  _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$Thread(
    this._instance,
    this._then,
  );

  final Mutation$ToggleLike$ToggleLikeV2$$Thread _instance;

  final TRes Function(Mutation$ToggleLike$ToggleLikeV2$$Thread) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleLike$ToggleLikeV2$$Thread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$Thread<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$Thread<TRes> {
  _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$Thread(this._res);

  TRes _res;

  call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleLike$ToggleLikeV2$$ThreadComment
    implements Mutation$ToggleLike$ToggleLikeV2 {
  Mutation$ToggleLike$ToggleLikeV2$$ThreadComment({
    required this.id,
    required this.likeCount,
    this.isLiked,
    this.$__typename = 'ThreadComment',
  });

  factory Mutation$ToggleLike$ToggleLikeV2$$ThreadComment.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleLike$ToggleLikeV2$$ThreadComment(
      id: (l$id as int),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int likeCount;

  final bool? isLiked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$likeCount,
      l$isLiked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ToggleLike$ToggleLikeV2$$ThreadComment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtension$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment
    on Mutation$ToggleLike$ToggleLikeV2$$ThreadComment {
  CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment<
          Mutation$ToggleLike$ToggleLikeV2$$ThreadComment>
      get copyWith => CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment<TRes> {
  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment(
    Mutation$ToggleLike$ToggleLikeV2$$ThreadComment instance,
    TRes Function(Mutation$ToggleLike$ToggleLikeV2$$ThreadComment) then,
  ) = _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment;

  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment;

  TRes call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment<TRes> {
  _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment(
    this._instance,
    this._then,
  );

  final Mutation$ToggleLike$ToggleLikeV2$$ThreadComment _instance;

  final TRes Function(Mutation$ToggleLike$ToggleLikeV2$$ThreadComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleLike$ToggleLikeV2$$ThreadComment(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment<TRes> {
  _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment(this._res);

  TRes _res;

  call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$SaveTextActivity {
  factory Variables$Mutation$SaveTextActivity({
    int? id,
    String? text,
  }) =>
      Variables$Mutation$SaveTextActivity._({
        if (id != null) r'id': id,
        if (text != null) r'text': text,
      });

  Variables$Mutation$SaveTextActivity._(this._$data);

  factory Variables$Mutation$SaveTextActivity.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    return Variables$Mutation$SaveTextActivity._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  String? get text => (_$data['text'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveTextActivity<
          Variables$Mutation$SaveTextActivity>
      get copyWith => CopyWith$Variables$Mutation$SaveTextActivity(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SaveTextActivity ||
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
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$text = text;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('text') ? l$text : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SaveTextActivity<TRes> {
  factory CopyWith$Variables$Mutation$SaveTextActivity(
    Variables$Mutation$SaveTextActivity instance,
    TRes Function(Variables$Mutation$SaveTextActivity) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveTextActivity;

  factory CopyWith$Variables$Mutation$SaveTextActivity.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveTextActivity;

  TRes call({
    int? id,
    String? text,
  });
}

class _CopyWithImpl$Variables$Mutation$SaveTextActivity<TRes>
    implements CopyWith$Variables$Mutation$SaveTextActivity<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveTextActivity(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveTextActivity _instance;

  final TRes Function(Variables$Mutation$SaveTextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? text = _undefined,
  }) =>
      _then(Variables$Mutation$SaveTextActivity._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (text != _undefined) 'text': (text as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SaveTextActivity<TRes>
    implements CopyWith$Variables$Mutation$SaveTextActivity<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveTextActivity(this._res);

  TRes _res;

  call({
    int? id,
    String? text,
  }) =>
      _res;
}

class Mutation$SaveTextActivity {
  Mutation$SaveTextActivity({
    this.SaveTextActivity,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveTextActivity.fromJson(Map<String, dynamic> json) {
    final l$SaveTextActivity = json['SaveTextActivity'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveTextActivity(
      SaveTextActivity: l$SaveTextActivity == null
          ? null
          : Mutation$SaveTextActivity$SaveTextActivity.fromJson(
              (l$SaveTextActivity as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SaveTextActivity$SaveTextActivity? SaveTextActivity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$SaveTextActivity = SaveTextActivity;
    _resultData['SaveTextActivity'] = l$SaveTextActivity?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$SaveTextActivity = SaveTextActivity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$SaveTextActivity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SaveTextActivity ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$SaveTextActivity = SaveTextActivity;
    final lOther$SaveTextActivity = other.SaveTextActivity;
    if (l$SaveTextActivity != lOther$SaveTextActivity) {
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

extension UtilityExtension$Mutation$SaveTextActivity
    on Mutation$SaveTextActivity {
  CopyWith$Mutation$SaveTextActivity<Mutation$SaveTextActivity> get copyWith =>
      CopyWith$Mutation$SaveTextActivity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SaveTextActivity<TRes> {
  factory CopyWith$Mutation$SaveTextActivity(
    Mutation$SaveTextActivity instance,
    TRes Function(Mutation$SaveTextActivity) then,
  ) = _CopyWithImpl$Mutation$SaveTextActivity;

  factory CopyWith$Mutation$SaveTextActivity.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveTextActivity;

  TRes call({
    Mutation$SaveTextActivity$SaveTextActivity? SaveTextActivity,
    String? $__typename,
  });
  CopyWith$Mutation$SaveTextActivity$SaveTextActivity<TRes>
      get SaveTextActivity;
}

class _CopyWithImpl$Mutation$SaveTextActivity<TRes>
    implements CopyWith$Mutation$SaveTextActivity<TRes> {
  _CopyWithImpl$Mutation$SaveTextActivity(
    this._instance,
    this._then,
  );

  final Mutation$SaveTextActivity _instance;

  final TRes Function(Mutation$SaveTextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? SaveTextActivity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveTextActivity(
        SaveTextActivity: SaveTextActivity == _undefined
            ? _instance.SaveTextActivity
            : (SaveTextActivity as Mutation$SaveTextActivity$SaveTextActivity?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SaveTextActivity$SaveTextActivity<TRes>
      get SaveTextActivity {
    final local$SaveTextActivity = _instance.SaveTextActivity;
    return local$SaveTextActivity == null
        ? CopyWith$Mutation$SaveTextActivity$SaveTextActivity.stub(
            _then(_instance))
        : CopyWith$Mutation$SaveTextActivity$SaveTextActivity(
            local$SaveTextActivity, (e) => call(SaveTextActivity: e));
  }
}

class _CopyWithStubImpl$Mutation$SaveTextActivity<TRes>
    implements CopyWith$Mutation$SaveTextActivity<TRes> {
  _CopyWithStubImpl$Mutation$SaveTextActivity(this._res);

  TRes _res;

  call({
    Mutation$SaveTextActivity$SaveTextActivity? SaveTextActivity,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SaveTextActivity$SaveTextActivity<TRes>
      get SaveTextActivity =>
          CopyWith$Mutation$SaveTextActivity$SaveTextActivity.stub(_res);
}

const documentNodeMutationSaveTextActivity = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SaveTextActivity'),
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
        variable: VariableNode(name: NameNode(value: 'text')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'SaveTextActivity'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'text'),
            value: VariableNode(name: NameNode(value: 'text')),
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
            name: NameNode(value: 'userId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'type'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'replyCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'text'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isLocked'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isSubscribed'),
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
  fragmentDefinitionUserFragment,
]);

class Mutation$SaveTextActivity$SaveTextActivity {
  Mutation$SaveTextActivity$SaveTextActivity({
    required this.id,
    this.userId,
    this.type,
    required this.replyCount,
    this.text,
    this.isLocked,
    this.isSubscribed,
    this.isLiked,
    required this.likeCount,
    required this.createdAt,
    this.user,
    this.$__typename = 'TextActivity',
  });

  factory Mutation$SaveTextActivity$SaveTextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$type = json['type'];
    final l$replyCount = json['replyCount'];
    final l$text = json['text'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveTextActivity$SaveTextActivity(
      id: (l$id as int),
      userId: (l$userId as int?),
      type: l$type == null
          ? null
          : fromJson$Enum$ActivityType((l$type as String)),
      replyCount: (l$replyCount as int),
      text: (l$text as String?),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? userId;

  final Enum$ActivityType? type;

  final int replyCount;

  final String? text;

  final bool? isLocked;

  final bool? isSubscribed;

  final bool? isLiked;

  final int likeCount;

  final int createdAt;

  final Fragment$UserFragment? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$ActivityType(l$type);
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$type = type;
    final l$replyCount = replyCount;
    final l$text = text;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$type,
      l$replyCount,
      l$text,
      l$isLocked,
      l$isSubscribed,
      l$isLiked,
      l$likeCount,
      l$createdAt,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SaveTextActivity$SaveTextActivity ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
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

extension UtilityExtension$Mutation$SaveTextActivity$SaveTextActivity
    on Mutation$SaveTextActivity$SaveTextActivity {
  CopyWith$Mutation$SaveTextActivity$SaveTextActivity<
          Mutation$SaveTextActivity$SaveTextActivity>
      get copyWith => CopyWith$Mutation$SaveTextActivity$SaveTextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveTextActivity$SaveTextActivity<TRes> {
  factory CopyWith$Mutation$SaveTextActivity$SaveTextActivity(
    Mutation$SaveTextActivity$SaveTextActivity instance,
    TRes Function(Mutation$SaveTextActivity$SaveTextActivity) then,
  ) = _CopyWithImpl$Mutation$SaveTextActivity$SaveTextActivity;

  factory CopyWith$Mutation$SaveTextActivity$SaveTextActivity.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveTextActivity$SaveTextActivity;

  TRes call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    int? replyCount,
    String? text,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$UserFragment? user,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Mutation$SaveTextActivity$SaveTextActivity<TRes>
    implements CopyWith$Mutation$SaveTextActivity$SaveTextActivity<TRes> {
  _CopyWithImpl$Mutation$SaveTextActivity$SaveTextActivity(
    this._instance,
    this._then,
  );

  final Mutation$SaveTextActivity$SaveTextActivity _instance;

  final TRes Function(Mutation$SaveTextActivity$SaveTextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? replyCount = _undefined,
    Object? text = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveTextActivity$SaveTextActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined ? _instance.userId : (userId as int?),
        type:
            type == _undefined ? _instance.type : (type as Enum$ActivityType?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        text: text == _undefined ? _instance.text : (text as String?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$SaveTextActivity$SaveTextActivity<TRes>
    implements CopyWith$Mutation$SaveTextActivity$SaveTextActivity<TRes> {
  _CopyWithStubImpl$Mutation$SaveTextActivity$SaveTextActivity(this._res);

  TRes _res;

  call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    int? replyCount,
    String? text,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$UserFragment? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}
