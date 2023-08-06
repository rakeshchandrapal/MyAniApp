// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Fragment$FuzzyDate {
  Fragment$FuzzyDate({
    this.day,
    this.month,
    this.year,
    this.$__typename = 'FuzzyDate',
  });

  factory Fragment$FuzzyDate.fromJson(Map<String, dynamic> json) {
    final l$day = json['day'];
    final l$month = json['month'];
    final l$year = json['year'];
    final l$$__typename = json['__typename'];
    return Fragment$FuzzyDate(
      day: (l$day as int?),
      month: (l$month as int?),
      year: (l$year as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? day;

  final int? month;

  final int? year;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$day = day;
    _resultData['day'] = l$day;
    final l$month = month;
    _resultData['month'] = l$month;
    final l$year = year;
    _resultData['year'] = l$year;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$month = month;
    final l$year = year;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$day,
      l$month,
      l$year,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$FuzzyDate) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
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

extension UtilityExtension$Fragment$FuzzyDate on Fragment$FuzzyDate {
  CopyWith$Fragment$FuzzyDate<Fragment$FuzzyDate> get copyWith =>
      CopyWith$Fragment$FuzzyDate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$FuzzyDate<TRes> {
  factory CopyWith$Fragment$FuzzyDate(
    Fragment$FuzzyDate instance,
    TRes Function(Fragment$FuzzyDate) then,
  ) = _CopyWithImpl$Fragment$FuzzyDate;

  factory CopyWith$Fragment$FuzzyDate.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FuzzyDate;

  TRes call({
    int? day,
    int? month,
    int? year,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FuzzyDate<TRes>
    implements CopyWith$Fragment$FuzzyDate<TRes> {
  _CopyWithImpl$Fragment$FuzzyDate(
    this._instance,
    this._then,
  );

  final Fragment$FuzzyDate _instance;

  final TRes Function(Fragment$FuzzyDate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? month = _undefined,
    Object? year = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FuzzyDate(
        day: day == _undefined ? _instance.day : (day as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        year: year == _undefined ? _instance.year : (year as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FuzzyDate<TRes>
    implements CopyWith$Fragment$FuzzyDate<TRes> {
  _CopyWithStubImpl$Fragment$FuzzyDate(this._res);

  TRes _res;

  call({
    int? day,
    int? month,
    int? year,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionFuzzyDate = FragmentDefinitionNode(
  name: NameNode(value: 'FuzzyDate'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'FuzzyDate'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'day'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'month'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'year'),
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
);
const documentNodeFragmentFuzzyDate = DocumentNode(definitions: [
  fragmentDefinitionFuzzyDate,
]);

extension ClientExtension$Fragment$FuzzyDate on graphql.GraphQLClient {
  void writeFragment$FuzzyDate({
    required Fragment$FuzzyDate data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'FuzzyDate',
            document: documentNodeFragmentFuzzyDate,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$FuzzyDate? readFragment$FuzzyDate({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'FuzzyDate',
          document: documentNodeFragmentFuzzyDate,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$FuzzyDate.fromJson(result);
  }
}

class Fragment$PageInfo {
  Fragment$PageInfo({
    this.currentPage,
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Fragment$PageInfo.fromJson(Map<String, dynamic> json) {
    final l$currentPage = json['currentPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Fragment$PageInfo(
      currentPage: (l$currentPage as int?),
      hasNextPage: (l$hasNextPage as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? currentPage;

  final bool? hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$currentPage = currentPage;
    _resultData['currentPage'] = l$currentPage;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currentPage = currentPage;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$currentPage,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PageInfo) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$currentPage = currentPage;
    final lOther$currentPage = other.currentPage;
    if (l$currentPage != lOther$currentPage) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
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

extension UtilityExtension$Fragment$PageInfo on Fragment$PageInfo {
  CopyWith$Fragment$PageInfo<Fragment$PageInfo> get copyWith =>
      CopyWith$Fragment$PageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PageInfo<TRes> {
  factory CopyWith$Fragment$PageInfo(
    Fragment$PageInfo instance,
    TRes Function(Fragment$PageInfo) then,
  ) = _CopyWithImpl$Fragment$PageInfo;

  factory CopyWith$Fragment$PageInfo.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PageInfo;

  TRes call({
    int? currentPage,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PageInfo<TRes>
    implements CopyWith$Fragment$PageInfo<TRes> {
  _CopyWithImpl$Fragment$PageInfo(
    this._instance,
    this._then,
  );

  final Fragment$PageInfo _instance;

  final TRes Function(Fragment$PageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PageInfo(
        currentPage: currentPage == _undefined
            ? _instance.currentPage
            : (currentPage as int?),
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PageInfo<TRes>
    implements CopyWith$Fragment$PageInfo<TRes> {
  _CopyWithStubImpl$Fragment$PageInfo(this._res);

  TRes _res;

  call({
    int? currentPage,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionPageInfo = FragmentDefinitionNode(
  name: NameNode(value: 'PageInfo'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'PageInfo'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'currentPage'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'hasNextPage'),
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
);
const documentNodeFragmentPageInfo = DocumentNode(definitions: [
  fragmentDefinitionPageInfo,
]);

extension ClientExtension$Fragment$PageInfo on graphql.GraphQLClient {
  void writeFragment$PageInfo({
    required Fragment$PageInfo data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PageInfo',
            document: documentNodeFragmentPageInfo,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PageInfo? readFragment$PageInfo({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PageInfo',
          document: documentNodeFragmentPageInfo,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PageInfo.fromJson(result);
  }
}

class Fragment$UserFragment {
  Fragment$UserFragment({
    required this.id,
    required this.name,
    this.donatorTier,
    this.donatorBadge,
    this.moderatorRoles,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Fragment$UserFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$donatorTier = json['donatorTier'];
    final l$donatorBadge = json['donatorBadge'];
    final l$moderatorRoles = json['moderatorRoles'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Fragment$UserFragment(
      id: (l$id as int),
      name: (l$name as String),
      donatorTier: (l$donatorTier as int?),
      donatorBadge: (l$donatorBadge as String?),
      moderatorRoles: (l$moderatorRoles as List<dynamic>?)
          ?.map((e) => e == null ? null : fromJson$Enum$ModRole((e as String)))
          .toList(),
      avatar: l$avatar == null
          ? null
          : Fragment$UserFragment$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final int? donatorTier;

  final String? donatorBadge;

  final List<Enum$ModRole?>? moderatorRoles;

  final Fragment$UserFragment$avatar? avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$donatorTier = donatorTier;
    _resultData['donatorTier'] = l$donatorTier;
    final l$donatorBadge = donatorBadge;
    _resultData['donatorBadge'] = l$donatorBadge;
    final l$moderatorRoles = moderatorRoles;
    _resultData['moderatorRoles'] = l$moderatorRoles
        ?.map((e) => e == null ? null : toJson$Enum$ModRole(e))
        .toList();
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$donatorTier = donatorTier;
    final l$donatorBadge = donatorBadge;
    final l$moderatorRoles = moderatorRoles;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$donatorTier,
      l$donatorBadge,
      l$moderatorRoles == null
          ? null
          : Object.hashAll(l$moderatorRoles.map((v) => v)),
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UserFragment) || runtimeType != other.runtimeType) {
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
    final l$donatorTier = donatorTier;
    final lOther$donatorTier = other.donatorTier;
    if (l$donatorTier != lOther$donatorTier) {
      return false;
    }
    final l$donatorBadge = donatorBadge;
    final lOther$donatorBadge = other.donatorBadge;
    if (l$donatorBadge != lOther$donatorBadge) {
      return false;
    }
    final l$moderatorRoles = moderatorRoles;
    final lOther$moderatorRoles = other.moderatorRoles;
    if (l$moderatorRoles != null && lOther$moderatorRoles != null) {
      if (l$moderatorRoles.length != lOther$moderatorRoles.length) {
        return false;
      }
      for (int i = 0; i < l$moderatorRoles.length; i++) {
        final l$moderatorRoles$entry = l$moderatorRoles[i];
        final lOther$moderatorRoles$entry = lOther$moderatorRoles[i];
        if (l$moderatorRoles$entry != lOther$moderatorRoles$entry) {
          return false;
        }
      }
    } else if (l$moderatorRoles != lOther$moderatorRoles) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtension$Fragment$UserFragment on Fragment$UserFragment {
  CopyWith$Fragment$UserFragment<Fragment$UserFragment> get copyWith =>
      CopyWith$Fragment$UserFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UserFragment<TRes> {
  factory CopyWith$Fragment$UserFragment(
    Fragment$UserFragment instance,
    TRes Function(Fragment$UserFragment) then,
  ) = _CopyWithImpl$Fragment$UserFragment;

  factory CopyWith$Fragment$UserFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserFragment;

  TRes call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Fragment$UserFragment$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment$avatar<TRes> get avatar;
}

class _CopyWithImpl$Fragment$UserFragment<TRes>
    implements CopyWith$Fragment$UserFragment<TRes> {
  _CopyWithImpl$Fragment$UserFragment(
    this._instance,
    this._then,
  );

  final Fragment$UserFragment _instance;

  final TRes Function(Fragment$UserFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? donatorTier = _undefined,
    Object? donatorBadge = _undefined,
    Object? moderatorRoles = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserFragment(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        donatorTier: donatorTier == _undefined
            ? _instance.donatorTier
            : (donatorTier as int?),
        donatorBadge: donatorBadge == _undefined
            ? _instance.donatorBadge
            : (donatorBadge as String?),
        moderatorRoles: moderatorRoles == _undefined
            ? _instance.moderatorRoles
            : (moderatorRoles as List<Enum$ModRole?>?),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Fragment$UserFragment$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$UserFragment$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Fragment$UserFragment$avatar.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Fragment$UserFragment<TRes>
    implements CopyWith$Fragment$UserFragment<TRes> {
  _CopyWithStubImpl$Fragment$UserFragment(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Fragment$UserFragment$avatar? avatar,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$UserFragment$avatar<TRes> get avatar =>
      CopyWith$Fragment$UserFragment$avatar.stub(_res);
}

const fragmentDefinitionUserFragment = FragmentDefinitionNode(
  name: NameNode(value: 'UserFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
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
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'donatorTier'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'donatorBadge'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'moderatorRoles'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'avatar'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'large'),
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
);
const documentNodeFragmentUserFragment = DocumentNode(definitions: [
  fragmentDefinitionUserFragment,
]);

extension ClientExtension$Fragment$UserFragment on graphql.GraphQLClient {
  void writeFragment$UserFragment({
    required Fragment$UserFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'UserFragment',
            document: documentNodeFragmentUserFragment,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$UserFragment? readFragment$UserFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'UserFragment',
          document: documentNodeFragmentUserFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$UserFragment.fromJson(result);
  }
}

class Fragment$UserFragment$avatar {
  Fragment$UserFragment$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Fragment$UserFragment$avatar.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$UserFragment$avatar(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UserFragment$avatar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtension$Fragment$UserFragment$avatar
    on Fragment$UserFragment$avatar {
  CopyWith$Fragment$UserFragment$avatar<Fragment$UserFragment$avatar>
      get copyWith => CopyWith$Fragment$UserFragment$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserFragment$avatar<TRes> {
  factory CopyWith$Fragment$UserFragment$avatar(
    Fragment$UserFragment$avatar instance,
    TRes Function(Fragment$UserFragment$avatar) then,
  ) = _CopyWithImpl$Fragment$UserFragment$avatar;

  factory CopyWith$Fragment$UserFragment$avatar.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserFragment$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserFragment$avatar<TRes>
    implements CopyWith$Fragment$UserFragment$avatar<TRes> {
  _CopyWithImpl$Fragment$UserFragment$avatar(
    this._instance,
    this._then,
  );

  final Fragment$UserFragment$avatar _instance;

  final TRes Function(Fragment$UserFragment$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserFragment$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserFragment$avatar<TRes>
    implements CopyWith$Fragment$UserFragment$avatar<TRes> {
  _CopyWithStubImpl$Fragment$UserFragment$avatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ReleasingMedia implements Fragment$MediaFragment {
  Fragment$ReleasingMedia({
    required this.id,
    this.type,
    this.isAdult,
    this.genres,
    this.format,
    this.description,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
    this.nextAiringEpisode,
    this.airingSchedule,
  });

  factory Fragment$ReleasingMedia.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$isAdult = json['isAdult'];
    final l$genres = json['genres'];
    final l$format = json['format'];
    final l$description = json['description'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    final l$nextAiringEpisode = json['nextAiringEpisode'];
    final l$airingSchedule = json['airingSchedule'];
    return Fragment$ReleasingMedia(
      id: (l$id as int),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      isAdult: (l$isAdult as bool?),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      description: (l$description as String?),
      title: l$title == null
          ? null
          : Fragment$ReleasingMedia$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Fragment$ReleasingMedia$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      nextAiringEpisode: l$nextAiringEpisode == null
          ? null
          : Fragment$ReleasingMedia$nextAiringEpisode.fromJson(
              (l$nextAiringEpisode as Map<String, dynamic>)),
      airingSchedule: l$airingSchedule == null
          ? null
          : Fragment$ReleasingMedia$airingSchedule.fromJson(
              (l$airingSchedule as Map<String, dynamic>)),
    );
  }

  final int id;

  final Enum$MediaType? type;

  final bool? isAdult;

  final List<String?>? genres;

  final Enum$MediaFormat? format;

  final String? description;

  final Fragment$ReleasingMedia$title? title;

  final Fragment$ReleasingMedia$coverImage? coverImage;

  final String $__typename;

  final Fragment$ReleasingMedia$nextAiringEpisode? nextAiringEpisode;

  final Fragment$ReleasingMedia$airingSchedule? airingSchedule;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$description = description;
    _resultData['description'] = l$description;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$nextAiringEpisode = nextAiringEpisode;
    _resultData['nextAiringEpisode'] = l$nextAiringEpisode?.toJson();
    final l$airingSchedule = airingSchedule;
    _resultData['airingSchedule'] = l$airingSchedule?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$isAdult = isAdult;
    final l$genres = genres;
    final l$format = format;
    final l$description = description;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    final l$nextAiringEpisode = nextAiringEpisode;
    final l$airingSchedule = airingSchedule;
    return Object.hashAll([
      l$id,
      l$type,
      l$isAdult,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$format,
      l$description,
      l$title,
      l$coverImage,
      l$$__typename,
      l$nextAiringEpisode,
      l$airingSchedule,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReleasingMedia) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (l$isAdult != lOther$isAdult) {
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
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
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
    final l$nextAiringEpisode = nextAiringEpisode;
    final lOther$nextAiringEpisode = other.nextAiringEpisode;
    if (l$nextAiringEpisode != lOther$nextAiringEpisode) {
      return false;
    }
    final l$airingSchedule = airingSchedule;
    final lOther$airingSchedule = other.airingSchedule;
    if (l$airingSchedule != lOther$airingSchedule) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ReleasingMedia on Fragment$ReleasingMedia {
  CopyWith$Fragment$ReleasingMedia<Fragment$ReleasingMedia> get copyWith =>
      CopyWith$Fragment$ReleasingMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ReleasingMedia<TRes> {
  factory CopyWith$Fragment$ReleasingMedia(
    Fragment$ReleasingMedia instance,
    TRes Function(Fragment$ReleasingMedia) then,
  ) = _CopyWithImpl$Fragment$ReleasingMedia;

  factory CopyWith$Fragment$ReleasingMedia.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReleasingMedia;

  TRes call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    Enum$MediaFormat? format,
    String? description,
    Fragment$ReleasingMedia$title? title,
    Fragment$ReleasingMedia$coverImage? coverImage,
    String? $__typename,
    Fragment$ReleasingMedia$nextAiringEpisode? nextAiringEpisode,
    Fragment$ReleasingMedia$airingSchedule? airingSchedule,
  });
  CopyWith$Fragment$ReleasingMedia$title<TRes> get title;
  CopyWith$Fragment$ReleasingMedia$coverImage<TRes> get coverImage;
  CopyWith$Fragment$ReleasingMedia$nextAiringEpisode<TRes>
      get nextAiringEpisode;
  CopyWith$Fragment$ReleasingMedia$airingSchedule<TRes> get airingSchedule;
}

class _CopyWithImpl$Fragment$ReleasingMedia<TRes>
    implements CopyWith$Fragment$ReleasingMedia<TRes> {
  _CopyWithImpl$Fragment$ReleasingMedia(
    this._instance,
    this._then,
  );

  final Fragment$ReleasingMedia _instance;

  final TRes Function(Fragment$ReleasingMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? isAdult = _undefined,
    Object? genres = _undefined,
    Object? format = _undefined,
    Object? description = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
    Object? nextAiringEpisode = _undefined,
    Object? airingSchedule = _undefined,
  }) =>
      _then(Fragment$ReleasingMedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$ReleasingMedia$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$ReleasingMedia$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        nextAiringEpisode: nextAiringEpisode == _undefined
            ? _instance.nextAiringEpisode
            : (nextAiringEpisode as Fragment$ReleasingMedia$nextAiringEpisode?),
        airingSchedule: airingSchedule == _undefined
            ? _instance.airingSchedule
            : (airingSchedule as Fragment$ReleasingMedia$airingSchedule?),
      ));
  CopyWith$Fragment$ReleasingMedia$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$ReleasingMedia$title.stub(_then(_instance))
        : CopyWith$Fragment$ReleasingMedia$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$ReleasingMedia$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$ReleasingMedia$coverImage.stub(_then(_instance))
        : CopyWith$Fragment$ReleasingMedia$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Fragment$ReleasingMedia$nextAiringEpisode<TRes>
      get nextAiringEpisode {
    final local$nextAiringEpisode = _instance.nextAiringEpisode;
    return local$nextAiringEpisode == null
        ? CopyWith$Fragment$ReleasingMedia$nextAiringEpisode.stub(
            _then(_instance))
        : CopyWith$Fragment$ReleasingMedia$nextAiringEpisode(
            local$nextAiringEpisode, (e) => call(nextAiringEpisode: e));
  }

  CopyWith$Fragment$ReleasingMedia$airingSchedule<TRes> get airingSchedule {
    final local$airingSchedule = _instance.airingSchedule;
    return local$airingSchedule == null
        ? CopyWith$Fragment$ReleasingMedia$airingSchedule.stub(_then(_instance))
        : CopyWith$Fragment$ReleasingMedia$airingSchedule(
            local$airingSchedule, (e) => call(airingSchedule: e));
  }
}

class _CopyWithStubImpl$Fragment$ReleasingMedia<TRes>
    implements CopyWith$Fragment$ReleasingMedia<TRes> {
  _CopyWithStubImpl$Fragment$ReleasingMedia(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    Enum$MediaFormat? format,
    String? description,
    Fragment$ReleasingMedia$title? title,
    Fragment$ReleasingMedia$coverImage? coverImage,
    String? $__typename,
    Fragment$ReleasingMedia$nextAiringEpisode? nextAiringEpisode,
    Fragment$ReleasingMedia$airingSchedule? airingSchedule,
  }) =>
      _res;
  CopyWith$Fragment$ReleasingMedia$title<TRes> get title =>
      CopyWith$Fragment$ReleasingMedia$title.stub(_res);
  CopyWith$Fragment$ReleasingMedia$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$ReleasingMedia$coverImage.stub(_res);
  CopyWith$Fragment$ReleasingMedia$nextAiringEpisode<TRes>
      get nextAiringEpisode =>
          CopyWith$Fragment$ReleasingMedia$nextAiringEpisode.stub(_res);
  CopyWith$Fragment$ReleasingMedia$airingSchedule<TRes> get airingSchedule =>
      CopyWith$Fragment$ReleasingMedia$airingSchedule.stub(_res);
}

const fragmentDefinitionReleasingMedia = FragmentDefinitionNode(
  name: NameNode(value: 'ReleasingMedia'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'MediaFragment'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: 'nextAiringEpisode'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'airingAt'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'timeUntilAiring'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'episode'),
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
      name: NameNode(value: 'airingSchedule'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'notYetAired'),
          value: BooleanValueNode(value: false),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'edges'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'node'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                  name: NameNode(value: 'airingAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'timeUntilAiring'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'episode'),
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
);
const documentNodeFragmentReleasingMedia = DocumentNode(definitions: [
  fragmentDefinitionReleasingMedia,
  fragmentDefinitionMediaFragment,
]);

extension ClientExtension$Fragment$ReleasingMedia on graphql.GraphQLClient {
  void writeFragment$ReleasingMedia({
    required Fragment$ReleasingMedia data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ReleasingMedia',
            document: documentNodeFragmentReleasingMedia,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ReleasingMedia? readFragment$ReleasingMedia({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ReleasingMedia',
          document: documentNodeFragmentReleasingMedia,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ReleasingMedia.fromJson(result);
  }
}

class Fragment$ReleasingMedia$title implements Fragment$MediaFragment$title {
  Fragment$ReleasingMedia$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$ReleasingMedia$title.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$ReleasingMedia$title(
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
    if (!(other is Fragment$ReleasingMedia$title) ||
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

extension UtilityExtension$Fragment$ReleasingMedia$title
    on Fragment$ReleasingMedia$title {
  CopyWith$Fragment$ReleasingMedia$title<Fragment$ReleasingMedia$title>
      get copyWith => CopyWith$Fragment$ReleasingMedia$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReleasingMedia$title<TRes> {
  factory CopyWith$Fragment$ReleasingMedia$title(
    Fragment$ReleasingMedia$title instance,
    TRes Function(Fragment$ReleasingMedia$title) then,
  ) = _CopyWithImpl$Fragment$ReleasingMedia$title;

  factory CopyWith$Fragment$ReleasingMedia$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReleasingMedia$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ReleasingMedia$title<TRes>
    implements CopyWith$Fragment$ReleasingMedia$title<TRes> {
  _CopyWithImpl$Fragment$ReleasingMedia$title(
    this._instance,
    this._then,
  );

  final Fragment$ReleasingMedia$title _instance;

  final TRes Function(Fragment$ReleasingMedia$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReleasingMedia$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ReleasingMedia$title<TRes>
    implements CopyWith$Fragment$ReleasingMedia$title<TRes> {
  _CopyWithStubImpl$Fragment$ReleasingMedia$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ReleasingMedia$coverImage
    implements Fragment$MediaFragment$coverImage {
  Fragment$ReleasingMedia$coverImage({
    this.extraLarge,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$ReleasingMedia$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$$__typename = json['__typename'];
    return Fragment$ReleasingMedia$coverImage(
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
    if (!(other is Fragment$ReleasingMedia$coverImage) ||
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

extension UtilityExtension$Fragment$ReleasingMedia$coverImage
    on Fragment$ReleasingMedia$coverImage {
  CopyWith$Fragment$ReleasingMedia$coverImage<
          Fragment$ReleasingMedia$coverImage>
      get copyWith => CopyWith$Fragment$ReleasingMedia$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReleasingMedia$coverImage<TRes> {
  factory CopyWith$Fragment$ReleasingMedia$coverImage(
    Fragment$ReleasingMedia$coverImage instance,
    TRes Function(Fragment$ReleasingMedia$coverImage) then,
  ) = _CopyWithImpl$Fragment$ReleasingMedia$coverImage;

  factory CopyWith$Fragment$ReleasingMedia$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReleasingMedia$coverImage;

  TRes call({
    String? extraLarge,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ReleasingMedia$coverImage<TRes>
    implements CopyWith$Fragment$ReleasingMedia$coverImage<TRes> {
  _CopyWithImpl$Fragment$ReleasingMedia$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$ReleasingMedia$coverImage _instance;

  final TRes Function(Fragment$ReleasingMedia$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? extraLarge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReleasingMedia$coverImage(
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ReleasingMedia$coverImage<TRes>
    implements CopyWith$Fragment$ReleasingMedia$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$ReleasingMedia$coverImage(this._res);

  TRes _res;

  call({
    String? extraLarge,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ReleasingMedia$nextAiringEpisode {
  Fragment$ReleasingMedia$nextAiringEpisode({
    required this.airingAt,
    required this.timeUntilAiring,
    required this.episode,
    this.$__typename = 'AiringSchedule',
  });

  factory Fragment$ReleasingMedia$nextAiringEpisode.fromJson(
      Map<String, dynamic> json) {
    final l$airingAt = json['airingAt'];
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Fragment$ReleasingMedia$nextAiringEpisode(
      airingAt: (l$airingAt as int),
      timeUntilAiring: (l$timeUntilAiring as int),
      episode: (l$episode as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int airingAt;

  final int timeUntilAiring;

  final int episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$airingAt = airingAt;
    _resultData['airingAt'] = l$airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    _resultData['timeUntilAiring'] = l$timeUntilAiring;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$airingAt = airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$airingAt,
      l$timeUntilAiring,
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReleasingMedia$nextAiringEpisode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$airingAt = airingAt;
    final lOther$airingAt = other.airingAt;
    if (l$airingAt != lOther$airingAt) {
      return false;
    }
    final l$timeUntilAiring = timeUntilAiring;
    final lOther$timeUntilAiring = other.timeUntilAiring;
    if (l$timeUntilAiring != lOther$timeUntilAiring) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
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

extension UtilityExtension$Fragment$ReleasingMedia$nextAiringEpisode
    on Fragment$ReleasingMedia$nextAiringEpisode {
  CopyWith$Fragment$ReleasingMedia$nextAiringEpisode<
          Fragment$ReleasingMedia$nextAiringEpisode>
      get copyWith => CopyWith$Fragment$ReleasingMedia$nextAiringEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReleasingMedia$nextAiringEpisode<TRes> {
  factory CopyWith$Fragment$ReleasingMedia$nextAiringEpisode(
    Fragment$ReleasingMedia$nextAiringEpisode instance,
    TRes Function(Fragment$ReleasingMedia$nextAiringEpisode) then,
  ) = _CopyWithImpl$Fragment$ReleasingMedia$nextAiringEpisode;

  factory CopyWith$Fragment$ReleasingMedia$nextAiringEpisode.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReleasingMedia$nextAiringEpisode;

  TRes call({
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ReleasingMedia$nextAiringEpisode<TRes>
    implements CopyWith$Fragment$ReleasingMedia$nextAiringEpisode<TRes> {
  _CopyWithImpl$Fragment$ReleasingMedia$nextAiringEpisode(
    this._instance,
    this._then,
  );

  final Fragment$ReleasingMedia$nextAiringEpisode _instance;

  final TRes Function(Fragment$ReleasingMedia$nextAiringEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? airingAt = _undefined,
    Object? timeUntilAiring = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReleasingMedia$nextAiringEpisode(
        airingAt: airingAt == _undefined || airingAt == null
            ? _instance.airingAt
            : (airingAt as int),
        timeUntilAiring:
            timeUntilAiring == _undefined || timeUntilAiring == null
                ? _instance.timeUntilAiring
                : (timeUntilAiring as int),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ReleasingMedia$nextAiringEpisode<TRes>
    implements CopyWith$Fragment$ReleasingMedia$nextAiringEpisode<TRes> {
  _CopyWithStubImpl$Fragment$ReleasingMedia$nextAiringEpisode(this._res);

  TRes _res;

  call({
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ReleasingMedia$airingSchedule {
  Fragment$ReleasingMedia$airingSchedule({
    this.edges,
    this.$__typename = 'AiringScheduleConnection',
  });

  factory Fragment$ReleasingMedia$airingSchedule.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$ReleasingMedia$airingSchedule(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ReleasingMedia$airingSchedule$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ReleasingMedia$airingSchedule$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReleasingMedia$airingSchedule) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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

extension UtilityExtension$Fragment$ReleasingMedia$airingSchedule
    on Fragment$ReleasingMedia$airingSchedule {
  CopyWith$Fragment$ReleasingMedia$airingSchedule<
          Fragment$ReleasingMedia$airingSchedule>
      get copyWith => CopyWith$Fragment$ReleasingMedia$airingSchedule(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReleasingMedia$airingSchedule<TRes> {
  factory CopyWith$Fragment$ReleasingMedia$airingSchedule(
    Fragment$ReleasingMedia$airingSchedule instance,
    TRes Function(Fragment$ReleasingMedia$airingSchedule) then,
  ) = _CopyWithImpl$Fragment$ReleasingMedia$airingSchedule;

  factory CopyWith$Fragment$ReleasingMedia$airingSchedule.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReleasingMedia$airingSchedule;

  TRes call({
    List<Fragment$ReleasingMedia$airingSchedule$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$ReleasingMedia$airingSchedule$edges?>? Function(
              Iterable<
                  CopyWith$Fragment$ReleasingMedia$airingSchedule$edges<
                      Fragment$ReleasingMedia$airingSchedule$edges>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$ReleasingMedia$airingSchedule<TRes>
    implements CopyWith$Fragment$ReleasingMedia$airingSchedule<TRes> {
  _CopyWithImpl$Fragment$ReleasingMedia$airingSchedule(
    this._instance,
    this._then,
  );

  final Fragment$ReleasingMedia$airingSchedule _instance;

  final TRes Function(Fragment$ReleasingMedia$airingSchedule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReleasingMedia$airingSchedule(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Fragment$ReleasingMedia$airingSchedule$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Fragment$ReleasingMedia$airingSchedule$edges?>? Function(
                  Iterable<
                      CopyWith$Fragment$ReleasingMedia$airingSchedule$edges<
                          Fragment$ReleasingMedia$airingSchedule$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Fragment$ReleasingMedia$airingSchedule$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$ReleasingMedia$airingSchedule<TRes>
    implements CopyWith$Fragment$ReleasingMedia$airingSchedule<TRes> {
  _CopyWithStubImpl$Fragment$ReleasingMedia$airingSchedule(this._res);

  TRes _res;

  call({
    List<Fragment$ReleasingMedia$airingSchedule$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Fragment$ReleasingMedia$airingSchedule$edges {
  Fragment$ReleasingMedia$airingSchedule$edges({
    this.node,
    this.$__typename = 'AiringScheduleEdge',
  });

  factory Fragment$ReleasingMedia$airingSchedule$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$ReleasingMedia$airingSchedule$edges(
      node: l$node == null
          ? null
          : Fragment$ReleasingMedia$airingSchedule$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ReleasingMedia$airingSchedule$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReleasingMedia$airingSchedule$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Fragment$ReleasingMedia$airingSchedule$edges
    on Fragment$ReleasingMedia$airingSchedule$edges {
  CopyWith$Fragment$ReleasingMedia$airingSchedule$edges<
          Fragment$ReleasingMedia$airingSchedule$edges>
      get copyWith => CopyWith$Fragment$ReleasingMedia$airingSchedule$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReleasingMedia$airingSchedule$edges<TRes> {
  factory CopyWith$Fragment$ReleasingMedia$airingSchedule$edges(
    Fragment$ReleasingMedia$airingSchedule$edges instance,
    TRes Function(Fragment$ReleasingMedia$airingSchedule$edges) then,
  ) = _CopyWithImpl$Fragment$ReleasingMedia$airingSchedule$edges;

  factory CopyWith$Fragment$ReleasingMedia$airingSchedule$edges.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReleasingMedia$airingSchedule$edges;

  TRes call({
    Fragment$ReleasingMedia$airingSchedule$edges$node? node,
    String? $__typename,
  });
  CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node<TRes> get node;
}

class _CopyWithImpl$Fragment$ReleasingMedia$airingSchedule$edges<TRes>
    implements CopyWith$Fragment$ReleasingMedia$airingSchedule$edges<TRes> {
  _CopyWithImpl$Fragment$ReleasingMedia$airingSchedule$edges(
    this._instance,
    this._then,
  );

  final Fragment$ReleasingMedia$airingSchedule$edges _instance;

  final TRes Function(Fragment$ReleasingMedia$airingSchedule$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReleasingMedia$airingSchedule$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$ReleasingMedia$airingSchedule$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node.stub(
            _then(_instance))
        : CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$ReleasingMedia$airingSchedule$edges<TRes>
    implements CopyWith$Fragment$ReleasingMedia$airingSchedule$edges<TRes> {
  _CopyWithStubImpl$Fragment$ReleasingMedia$airingSchedule$edges(this._res);

  TRes _res;

  call({
    Fragment$ReleasingMedia$airingSchedule$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node<TRes> get node =>
      CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node.stub(_res);
}

class Fragment$ReleasingMedia$airingSchedule$edges$node {
  Fragment$ReleasingMedia$airingSchedule$edges$node({
    required this.airingAt,
    required this.timeUntilAiring,
    required this.episode,
    this.$__typename = 'AiringSchedule',
  });

  factory Fragment$ReleasingMedia$airingSchedule$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$airingAt = json['airingAt'];
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Fragment$ReleasingMedia$airingSchedule$edges$node(
      airingAt: (l$airingAt as int),
      timeUntilAiring: (l$timeUntilAiring as int),
      episode: (l$episode as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int airingAt;

  final int timeUntilAiring;

  final int episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$airingAt = airingAt;
    _resultData['airingAt'] = l$airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    _resultData['timeUntilAiring'] = l$timeUntilAiring;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$airingAt = airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$airingAt,
      l$timeUntilAiring,
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReleasingMedia$airingSchedule$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$airingAt = airingAt;
    final lOther$airingAt = other.airingAt;
    if (l$airingAt != lOther$airingAt) {
      return false;
    }
    final l$timeUntilAiring = timeUntilAiring;
    final lOther$timeUntilAiring = other.timeUntilAiring;
    if (l$timeUntilAiring != lOther$timeUntilAiring) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
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

extension UtilityExtension$Fragment$ReleasingMedia$airingSchedule$edges$node
    on Fragment$ReleasingMedia$airingSchedule$edges$node {
  CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node<
          Fragment$ReleasingMedia$airingSchedule$edges$node>
      get copyWith =>
          CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node<
    TRes> {
  factory CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node(
    Fragment$ReleasingMedia$airingSchedule$edges$node instance,
    TRes Function(Fragment$ReleasingMedia$airingSchedule$edges$node) then,
  ) = _CopyWithImpl$Fragment$ReleasingMedia$airingSchedule$edges$node;

  factory CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$ReleasingMedia$airingSchedule$edges$node;

  TRes call({
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ReleasingMedia$airingSchedule$edges$node<TRes>
    implements
        CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node<TRes> {
  _CopyWithImpl$Fragment$ReleasingMedia$airingSchedule$edges$node(
    this._instance,
    this._then,
  );

  final Fragment$ReleasingMedia$airingSchedule$edges$node _instance;

  final TRes Function(Fragment$ReleasingMedia$airingSchedule$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? airingAt = _undefined,
    Object? timeUntilAiring = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReleasingMedia$airingSchedule$edges$node(
        airingAt: airingAt == _undefined || airingAt == null
            ? _instance.airingAt
            : (airingAt as int),
        timeUntilAiring:
            timeUntilAiring == _undefined || timeUntilAiring == null
                ? _instance.timeUntilAiring
                : (timeUntilAiring as int),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ReleasingMedia$airingSchedule$edges$node<TRes>
    implements
        CopyWith$Fragment$ReleasingMedia$airingSchedule$edges$node<TRes> {
  _CopyWithStubImpl$Fragment$ReleasingMedia$airingSchedule$edges$node(
      this._res);

  TRes _res;

  call({
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ListGroup {
  Fragment$ListGroup({
    this.name,
    this.isCustomList,
    this.isSplitCompletedList,
    this.status,
    this.entries,
    this.$__typename = 'MediaListGroup',
  });

  factory Fragment$ListGroup.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$isCustomList = json['isCustomList'];
    final l$isSplitCompletedList = json['isSplitCompletedList'];
    final l$status = json['status'];
    final l$entries = json['entries'];
    final l$$__typename = json['__typename'];
    return Fragment$ListGroup(
      name: (l$name as String?),
      isCustomList: (l$isCustomList as bool?),
      isSplitCompletedList: (l$isSplitCompletedList as bool?),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      entries: (l$entries as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaListEntry.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final bool? isCustomList;

  final bool? isSplitCompletedList;

  final Enum$MediaListStatus? status;

  final List<Fragment$MediaListEntry?>? entries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$isCustomList = isCustomList;
    _resultData['isCustomList'] = l$isCustomList;
    final l$isSplitCompletedList = isSplitCompletedList;
    _resultData['isSplitCompletedList'] = l$isSplitCompletedList;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$entries = entries;
    _resultData['entries'] = l$entries?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$isCustomList = isCustomList;
    final l$isSplitCompletedList = isSplitCompletedList;
    final l$status = status;
    final l$entries = entries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$isCustomList,
      l$isSplitCompletedList,
      l$status,
      l$entries == null ? null : Object.hashAll(l$entries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ListGroup) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$isCustomList = isCustomList;
    final lOther$isCustomList = other.isCustomList;
    if (l$isCustomList != lOther$isCustomList) {
      return false;
    }
    final l$isSplitCompletedList = isSplitCompletedList;
    final lOther$isSplitCompletedList = other.isSplitCompletedList;
    if (l$isSplitCompletedList != lOther$isSplitCompletedList) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$entries = entries;
    final lOther$entries = other.entries;
    if (l$entries != null && lOther$entries != null) {
      if (l$entries.length != lOther$entries.length) {
        return false;
      }
      for (int i = 0; i < l$entries.length; i++) {
        final l$entries$entry = l$entries[i];
        final lOther$entries$entry = lOther$entries[i];
        if (l$entries$entry != lOther$entries$entry) {
          return false;
        }
      }
    } else if (l$entries != lOther$entries) {
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

extension UtilityExtension$Fragment$ListGroup on Fragment$ListGroup {
  CopyWith$Fragment$ListGroup<Fragment$ListGroup> get copyWith =>
      CopyWith$Fragment$ListGroup(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ListGroup<TRes> {
  factory CopyWith$Fragment$ListGroup(
    Fragment$ListGroup instance,
    TRes Function(Fragment$ListGroup) then,
  ) = _CopyWithImpl$Fragment$ListGroup;

  factory CopyWith$Fragment$ListGroup.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ListGroup;

  TRes call({
    String? name,
    bool? isCustomList,
    bool? isSplitCompletedList,
    Enum$MediaListStatus? status,
    List<Fragment$MediaListEntry?>? entries,
    String? $__typename,
  });
  TRes entries(
      Iterable<Fragment$MediaListEntry?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaListEntry<Fragment$MediaListEntry>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$ListGroup<TRes>
    implements CopyWith$Fragment$ListGroup<TRes> {
  _CopyWithImpl$Fragment$ListGroup(
    this._instance,
    this._then,
  );

  final Fragment$ListGroup _instance;

  final TRes Function(Fragment$ListGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? isCustomList = _undefined,
    Object? isSplitCompletedList = _undefined,
    Object? status = _undefined,
    Object? entries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ListGroup(
        name: name == _undefined ? _instance.name : (name as String?),
        isCustomList: isCustomList == _undefined
            ? _instance.isCustomList
            : (isCustomList as bool?),
        isSplitCompletedList: isSplitCompletedList == _undefined
            ? _instance.isSplitCompletedList
            : (isSplitCompletedList as bool?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        entries: entries == _undefined
            ? _instance.entries
            : (entries as List<Fragment$MediaListEntry?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes entries(
          Iterable<Fragment$MediaListEntry?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaListEntry<
                          Fragment$MediaListEntry>?>?)
              _fn) =>
      call(
          entries: _fn(_instance.entries?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaListEntry(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$ListGroup<TRes>
    implements CopyWith$Fragment$ListGroup<TRes> {
  _CopyWithStubImpl$Fragment$ListGroup(this._res);

  TRes _res;

  call({
    String? name,
    bool? isCustomList,
    bool? isSplitCompletedList,
    Enum$MediaListStatus? status,
    List<Fragment$MediaListEntry?>? entries,
    String? $__typename,
  }) =>
      _res;
  entries(_fn) => _res;
}

const fragmentDefinitionListGroup = FragmentDefinitionNode(
  name: NameNode(value: 'ListGroup'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'MediaListGroup'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'isCustomList'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isSplitCompletedList'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'entries'),
      alias: null,
      arguments: [],
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
);
const documentNodeFragmentListGroup = DocumentNode(definitions: [
  fragmentDefinitionListGroup,
  fragmentDefinitionMediaListEntry,
  fragmentDefinitionFuzzyDate,
  fragmentDefinitionMediaFragment,
]);

extension ClientExtension$Fragment$ListGroup on graphql.GraphQLClient {
  void writeFragment$ListGroup({
    required Fragment$ListGroup data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ListGroup',
            document: documentNodeFragmentListGroup,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ListGroup? readFragment$ListGroup({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ListGroup',
          document: documentNodeFragmentListGroup,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ListGroup.fromJson(result);
  }
}

class Fragment$MediaListEntry {
  Fragment$MediaListEntry({
    required this.id,
    required this.mediaId,
    this.status,
    this.updatedAt,
    this.progress,
    this.progressVolumes,
    this.priority,
    this.notes,
    this.hiddenFromStatusLists,
    this.private,
    this.repeat,
    this.score,
    this.customLists,
    this.startedAt,
    this.completedAt,
    this.media,
    this.$__typename = 'MediaList',
  });

  factory Fragment$MediaListEntry.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$mediaId = json['mediaId'];
    final l$status = json['status'];
    final l$updatedAt = json['updatedAt'];
    final l$progress = json['progress'];
    final l$progressVolumes = json['progressVolumes'];
    final l$priority = json['priority'];
    final l$notes = json['notes'];
    final l$hiddenFromStatusLists = json['hiddenFromStatusLists'];
    final l$private = json['private'];
    final l$repeat = json['repeat'];
    final l$score = json['score'];
    final l$customLists = json['customLists'];
    final l$startedAt = json['startedAt'];
    final l$completedAt = json['completedAt'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaListEntry(
      id: (l$id as int),
      mediaId: (l$mediaId as int),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      updatedAt: (l$updatedAt as int?),
      progress: (l$progress as int?),
      progressVolumes: (l$progressVolumes as int?),
      priority: (l$priority as int?),
      notes: (l$notes as String?),
      hiddenFromStatusLists: (l$hiddenFromStatusLists as bool?),
      private: (l$private as bool?),
      repeat: (l$repeat as int?),
      score: (l$score as num?)?.toDouble(),
      customLists: (l$customLists as dynamic?),
      startedAt: l$startedAt == null
          ? null
          : Fragment$FuzzyDate.fromJson((l$startedAt as Map<String, dynamic>)),
      completedAt: l$completedAt == null
          ? null
          : Fragment$FuzzyDate.fromJson(
              (l$completedAt as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : Fragment$MediaListEntry$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int mediaId;

  final Enum$MediaListStatus? status;

  final int? updatedAt;

  final int? progress;

  final int? progressVolumes;

  final int? priority;

  final String? notes;

  final bool? hiddenFromStatusLists;

  final bool? private;

  final int? repeat;

  final double? score;

  final dynamic? customLists;

  final Fragment$FuzzyDate? startedAt;

  final Fragment$FuzzyDate? completedAt;

  final Fragment$MediaListEntry$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$mediaId = mediaId;
    _resultData['mediaId'] = l$mediaId;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$progressVolumes = progressVolumes;
    _resultData['progressVolumes'] = l$progressVolumes;
    final l$priority = priority;
    _resultData['priority'] = l$priority;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$hiddenFromStatusLists = hiddenFromStatusLists;
    _resultData['hiddenFromStatusLists'] = l$hiddenFromStatusLists;
    final l$private = private;
    _resultData['private'] = l$private;
    final l$repeat = repeat;
    _resultData['repeat'] = l$repeat;
    final l$score = score;
    _resultData['score'] = l$score;
    final l$customLists = customLists;
    _resultData['customLists'] = l$customLists;
    final l$startedAt = startedAt;
    _resultData['startedAt'] = l$startedAt?.toJson();
    final l$completedAt = completedAt;
    _resultData['completedAt'] = l$completedAt?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$mediaId = mediaId;
    final l$status = status;
    final l$updatedAt = updatedAt;
    final l$progress = progress;
    final l$progressVolumes = progressVolumes;
    final l$priority = priority;
    final l$notes = notes;
    final l$hiddenFromStatusLists = hiddenFromStatusLists;
    final l$private = private;
    final l$repeat = repeat;
    final l$score = score;
    final l$customLists = customLists;
    final l$startedAt = startedAt;
    final l$completedAt = completedAt;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$mediaId,
      l$status,
      l$updatedAt,
      l$progress,
      l$progressVolumes,
      l$priority,
      l$notes,
      l$hiddenFromStatusLists,
      l$private,
      l$repeat,
      l$score,
      l$customLists,
      l$startedAt,
      l$completedAt,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaListEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$progressVolumes = progressVolumes;
    final lOther$progressVolumes = other.progressVolumes;
    if (l$progressVolumes != lOther$progressVolumes) {
      return false;
    }
    final l$priority = priority;
    final lOther$priority = other.priority;
    if (l$priority != lOther$priority) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$hiddenFromStatusLists = hiddenFromStatusLists;
    final lOther$hiddenFromStatusLists = other.hiddenFromStatusLists;
    if (l$hiddenFromStatusLists != lOther$hiddenFromStatusLists) {
      return false;
    }
    final l$private = private;
    final lOther$private = other.private;
    if (l$private != lOther$private) {
      return false;
    }
    final l$repeat = repeat;
    final lOther$repeat = other.repeat;
    if (l$repeat != lOther$repeat) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
      return false;
    }
    final l$customLists = customLists;
    final lOther$customLists = other.customLists;
    if (l$customLists != lOther$customLists) {
      return false;
    }
    final l$startedAt = startedAt;
    final lOther$startedAt = other.startedAt;
    if (l$startedAt != lOther$startedAt) {
      return false;
    }
    final l$completedAt = completedAt;
    final lOther$completedAt = other.completedAt;
    if (l$completedAt != lOther$completedAt) {
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

extension UtilityExtension$Fragment$MediaListEntry on Fragment$MediaListEntry {
  CopyWith$Fragment$MediaListEntry<Fragment$MediaListEntry> get copyWith =>
      CopyWith$Fragment$MediaListEntry(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MediaListEntry<TRes> {
  factory CopyWith$Fragment$MediaListEntry(
    Fragment$MediaListEntry instance,
    TRes Function(Fragment$MediaListEntry) then,
  ) = _CopyWithImpl$Fragment$MediaListEntry;

  factory CopyWith$Fragment$MediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaListEntry;

  TRes call({
    int? id,
    int? mediaId,
    Enum$MediaListStatus? status,
    int? updatedAt,
    int? progress,
    int? progressVolumes,
    int? priority,
    String? notes,
    bool? hiddenFromStatusLists,
    bool? private,
    int? repeat,
    double? score,
    dynamic? customLists,
    Fragment$FuzzyDate? startedAt,
    Fragment$FuzzyDate? completedAt,
    Fragment$MediaListEntry$media? media,
    String? $__typename,
  });
  CopyWith$Fragment$FuzzyDate<TRes> get startedAt;
  CopyWith$Fragment$FuzzyDate<TRes> get completedAt;
  CopyWith$Fragment$MediaListEntry$media<TRes> get media;
}

class _CopyWithImpl$Fragment$MediaListEntry<TRes>
    implements CopyWith$Fragment$MediaListEntry<TRes> {
  _CopyWithImpl$Fragment$MediaListEntry(
    this._instance,
    this._then,
  );

  final Fragment$MediaListEntry _instance;

  final TRes Function(Fragment$MediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? mediaId = _undefined,
    Object? status = _undefined,
    Object? updatedAt = _undefined,
    Object? progress = _undefined,
    Object? progressVolumes = _undefined,
    Object? priority = _undefined,
    Object? notes = _undefined,
    Object? hiddenFromStatusLists = _undefined,
    Object? private = _undefined,
    Object? repeat = _undefined,
    Object? score = _undefined,
    Object? customLists = _undefined,
    Object? startedAt = _undefined,
    Object? completedAt = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaListEntry(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        mediaId: mediaId == _undefined || mediaId == null
            ? _instance.mediaId
            : (mediaId as int),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        progress:
            progress == _undefined ? _instance.progress : (progress as int?),
        progressVolumes: progressVolumes == _undefined
            ? _instance.progressVolumes
            : (progressVolumes as int?),
        priority:
            priority == _undefined ? _instance.priority : (priority as int?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        hiddenFromStatusLists: hiddenFromStatusLists == _undefined
            ? _instance.hiddenFromStatusLists
            : (hiddenFromStatusLists as bool?),
        private: private == _undefined ? _instance.private : (private as bool?),
        repeat: repeat == _undefined ? _instance.repeat : (repeat as int?),
        score: score == _undefined ? _instance.score : (score as double?),
        customLists: customLists == _undefined
            ? _instance.customLists
            : (customLists as dynamic?),
        startedAt: startedAt == _undefined
            ? _instance.startedAt
            : (startedAt as Fragment$FuzzyDate?),
        completedAt: completedAt == _undefined
            ? _instance.completedAt
            : (completedAt as Fragment$FuzzyDate?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$MediaListEntry$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$FuzzyDate<TRes> get startedAt {
    final local$startedAt = _instance.startedAt;
    return local$startedAt == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$startedAt, (e) => call(startedAt: e));
  }

  CopyWith$Fragment$FuzzyDate<TRes> get completedAt {
    final local$completedAt = _instance.completedAt;
    return local$completedAt == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$completedAt, (e) => call(completedAt: e));
  }

  CopyWith$Fragment$MediaListEntry$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$MediaListEntry$media.stub(_then(_instance))
        : CopyWith$Fragment$MediaListEntry$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$MediaListEntry<TRes>
    implements CopyWith$Fragment$MediaListEntry<TRes> {
  _CopyWithStubImpl$Fragment$MediaListEntry(this._res);

  TRes _res;

  call({
    int? id,
    int? mediaId,
    Enum$MediaListStatus? status,
    int? updatedAt,
    int? progress,
    int? progressVolumes,
    int? priority,
    String? notes,
    bool? hiddenFromStatusLists,
    bool? private,
    int? repeat,
    double? score,
    dynamic? customLists,
    Fragment$FuzzyDate? startedAt,
    Fragment$FuzzyDate? completedAt,
    Fragment$MediaListEntry$media? media,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$FuzzyDate<TRes> get startedAt =>
      CopyWith$Fragment$FuzzyDate.stub(_res);
  CopyWith$Fragment$FuzzyDate<TRes> get completedAt =>
      CopyWith$Fragment$FuzzyDate.stub(_res);
  CopyWith$Fragment$MediaListEntry$media<TRes> get media =>
      CopyWith$Fragment$MediaListEntry$media.stub(_res);
}

const fragmentDefinitionMediaListEntry = FragmentDefinitionNode(
  name: NameNode(value: 'MediaListEntry'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'MediaList'),
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
      name: NameNode(value: 'mediaId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'updatedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'progress'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'progressVolumes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'priority'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'notes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'hiddenFromStatusLists'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'private'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'repeat'),
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
      name: NameNode(value: 'customLists'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'asArray'),
          value: BooleanValueNode(value: true),
        )
      ],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'startedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'FuzzyDate'),
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
      name: NameNode(value: 'completedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'FuzzyDate'),
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
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'MediaFragment'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: 'episodes'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chapters'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'status'),
          alias: null,
          arguments: [
            ArgumentNode(
              name: NameNode(value: 'version'),
              value: IntValueNode(value: '2'),
            )
          ],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'averageScore'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'popularity'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'startDate'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'FuzzyDate'),
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
);
const documentNodeFragmentMediaListEntry = DocumentNode(definitions: [
  fragmentDefinitionMediaListEntry,
  fragmentDefinitionFuzzyDate,
  fragmentDefinitionMediaFragment,
]);

extension ClientExtension$Fragment$MediaListEntry on graphql.GraphQLClient {
  void writeFragment$MediaListEntry({
    required Fragment$MediaListEntry data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MediaListEntry',
            document: documentNodeFragmentMediaListEntry,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MediaListEntry? readFragment$MediaListEntry({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MediaListEntry',
          document: documentNodeFragmentMediaListEntry,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MediaListEntry.fromJson(result);
  }
}

class Fragment$MediaListEntry$media implements Fragment$MediaFragment {
  Fragment$MediaListEntry$media({
    required this.id,
    this.type,
    this.isAdult,
    this.genres,
    this.format,
    this.description,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
    this.episodes,
    this.chapters,
    this.status,
    this.averageScore,
    this.popularity,
    this.startDate,
  });

  factory Fragment$MediaListEntry$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$isAdult = json['isAdult'];
    final l$genres = json['genres'];
    final l$format = json['format'];
    final l$description = json['description'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    final l$episodes = json['episodes'];
    final l$chapters = json['chapters'];
    final l$status = json['status'];
    final l$averageScore = json['averageScore'];
    final l$popularity = json['popularity'];
    final l$startDate = json['startDate'];
    return Fragment$MediaListEntry$media(
      id: (l$id as int),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      isAdult: (l$isAdult as bool?),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      description: (l$description as String?),
      title: l$title == null
          ? null
          : Fragment$MediaListEntry$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Fragment$MediaListEntry$media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      episodes: (l$episodes as int?),
      chapters: (l$chapters as int?),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaStatus((l$status as String)),
      averageScore: (l$averageScore as int?),
      popularity: (l$popularity as int?),
      startDate: l$startDate == null
          ? null
          : Fragment$FuzzyDate.fromJson((l$startDate as Map<String, dynamic>)),
    );
  }

  final int id;

  final Enum$MediaType? type;

  final bool? isAdult;

  final List<String?>? genres;

  final Enum$MediaFormat? format;

  final String? description;

  final Fragment$MediaListEntry$media$title? title;

  final Fragment$MediaListEntry$media$coverImage? coverImage;

  final String $__typename;

  final int? episodes;

  final int? chapters;

  final Enum$MediaStatus? status;

  final int? averageScore;

  final int? popularity;

  final Fragment$FuzzyDate? startDate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$description = description;
    _resultData['description'] = l$description;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaStatus(l$status);
    final l$averageScore = averageScore;
    _resultData['averageScore'] = l$averageScore;
    final l$popularity = popularity;
    _resultData['popularity'] = l$popularity;
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$isAdult = isAdult;
    final l$genres = genres;
    final l$format = format;
    final l$description = description;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    final l$episodes = episodes;
    final l$chapters = chapters;
    final l$status = status;
    final l$averageScore = averageScore;
    final l$popularity = popularity;
    final l$startDate = startDate;
    return Object.hashAll([
      l$id,
      l$type,
      l$isAdult,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$format,
      l$description,
      l$title,
      l$coverImage,
      l$$__typename,
      l$episodes,
      l$chapters,
      l$status,
      l$averageScore,
      l$popularity,
      l$startDate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaListEntry$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (l$isAdult != lOther$isAdult) {
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
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
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
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$averageScore = averageScore;
    final lOther$averageScore = other.averageScore;
    if (l$averageScore != lOther$averageScore) {
      return false;
    }
    final l$popularity = popularity;
    final lOther$popularity = other.popularity;
    if (l$popularity != lOther$popularity) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$MediaListEntry$media
    on Fragment$MediaListEntry$media {
  CopyWith$Fragment$MediaListEntry$media<Fragment$MediaListEntry$media>
      get copyWith => CopyWith$Fragment$MediaListEntry$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaListEntry$media<TRes> {
  factory CopyWith$Fragment$MediaListEntry$media(
    Fragment$MediaListEntry$media instance,
    TRes Function(Fragment$MediaListEntry$media) then,
  ) = _CopyWithImpl$Fragment$MediaListEntry$media;

  factory CopyWith$Fragment$MediaListEntry$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaListEntry$media;

  TRes call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    Enum$MediaFormat? format,
    String? description,
    Fragment$MediaListEntry$media$title? title,
    Fragment$MediaListEntry$media$coverImage? coverImage,
    String? $__typename,
    int? episodes,
    int? chapters,
    Enum$MediaStatus? status,
    int? averageScore,
    int? popularity,
    Fragment$FuzzyDate? startDate,
  });
  CopyWith$Fragment$MediaListEntry$media$title<TRes> get title;
  CopyWith$Fragment$MediaListEntry$media$coverImage<TRes> get coverImage;
  CopyWith$Fragment$FuzzyDate<TRes> get startDate;
}

class _CopyWithImpl$Fragment$MediaListEntry$media<TRes>
    implements CopyWith$Fragment$MediaListEntry$media<TRes> {
  _CopyWithImpl$Fragment$MediaListEntry$media(
    this._instance,
    this._then,
  );

  final Fragment$MediaListEntry$media _instance;

  final TRes Function(Fragment$MediaListEntry$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? isAdult = _undefined,
    Object? genres = _undefined,
    Object? format = _undefined,
    Object? description = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
    Object? episodes = _undefined,
    Object? chapters = _undefined,
    Object? status = _undefined,
    Object? averageScore = _undefined,
    Object? popularity = _undefined,
    Object? startDate = _undefined,
  }) =>
      _then(Fragment$MediaListEntry$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$MediaListEntry$media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$MediaListEntry$media$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaStatus?),
        averageScore: averageScore == _undefined
            ? _instance.averageScore
            : (averageScore as int?),
        popularity: popularity == _undefined
            ? _instance.popularity
            : (popularity as int?),
        startDate: startDate == _undefined
            ? _instance.startDate
            : (startDate as Fragment$FuzzyDate?),
      ));
  CopyWith$Fragment$MediaListEntry$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$MediaListEntry$media$title.stub(_then(_instance))
        : CopyWith$Fragment$MediaListEntry$media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$MediaListEntry$media$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$MediaListEntry$media$coverImage.stub(
            _then(_instance))
        : CopyWith$Fragment$MediaListEntry$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Fragment$FuzzyDate<TRes> get startDate {
    final local$startDate = _instance.startDate;
    return local$startDate == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$startDate, (e) => call(startDate: e));
  }
}

class _CopyWithStubImpl$Fragment$MediaListEntry$media<TRes>
    implements CopyWith$Fragment$MediaListEntry$media<TRes> {
  _CopyWithStubImpl$Fragment$MediaListEntry$media(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    Enum$MediaFormat? format,
    String? description,
    Fragment$MediaListEntry$media$title? title,
    Fragment$MediaListEntry$media$coverImage? coverImage,
    String? $__typename,
    int? episodes,
    int? chapters,
    Enum$MediaStatus? status,
    int? averageScore,
    int? popularity,
    Fragment$FuzzyDate? startDate,
  }) =>
      _res;
  CopyWith$Fragment$MediaListEntry$media$title<TRes> get title =>
      CopyWith$Fragment$MediaListEntry$media$title.stub(_res);
  CopyWith$Fragment$MediaListEntry$media$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$MediaListEntry$media$coverImage.stub(_res);
  CopyWith$Fragment$FuzzyDate<TRes> get startDate =>
      CopyWith$Fragment$FuzzyDate.stub(_res);
}

class Fragment$MediaListEntry$media$title
    implements Fragment$MediaFragment$title {
  Fragment$MediaListEntry$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$MediaListEntry$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaListEntry$media$title(
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
    if (!(other is Fragment$MediaListEntry$media$title) ||
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

extension UtilityExtension$Fragment$MediaListEntry$media$title
    on Fragment$MediaListEntry$media$title {
  CopyWith$Fragment$MediaListEntry$media$title<
          Fragment$MediaListEntry$media$title>
      get copyWith => CopyWith$Fragment$MediaListEntry$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaListEntry$media$title<TRes> {
  factory CopyWith$Fragment$MediaListEntry$media$title(
    Fragment$MediaListEntry$media$title instance,
    TRes Function(Fragment$MediaListEntry$media$title) then,
  ) = _CopyWithImpl$Fragment$MediaListEntry$media$title;

  factory CopyWith$Fragment$MediaListEntry$media$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaListEntry$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaListEntry$media$title<TRes>
    implements CopyWith$Fragment$MediaListEntry$media$title<TRes> {
  _CopyWithImpl$Fragment$MediaListEntry$media$title(
    this._instance,
    this._then,
  );

  final Fragment$MediaListEntry$media$title _instance;

  final TRes Function(Fragment$MediaListEntry$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaListEntry$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaListEntry$media$title<TRes>
    implements CopyWith$Fragment$MediaListEntry$media$title<TRes> {
  _CopyWithStubImpl$Fragment$MediaListEntry$media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaListEntry$media$coverImage
    implements Fragment$MediaFragment$coverImage {
  Fragment$MediaListEntry$media$coverImage({
    this.extraLarge,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$MediaListEntry$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaListEntry$media$coverImage(
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
    if (!(other is Fragment$MediaListEntry$media$coverImage) ||
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

extension UtilityExtension$Fragment$MediaListEntry$media$coverImage
    on Fragment$MediaListEntry$media$coverImage {
  CopyWith$Fragment$MediaListEntry$media$coverImage<
          Fragment$MediaListEntry$media$coverImage>
      get copyWith => CopyWith$Fragment$MediaListEntry$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaListEntry$media$coverImage<TRes> {
  factory CopyWith$Fragment$MediaListEntry$media$coverImage(
    Fragment$MediaListEntry$media$coverImage instance,
    TRes Function(Fragment$MediaListEntry$media$coverImage) then,
  ) = _CopyWithImpl$Fragment$MediaListEntry$media$coverImage;

  factory CopyWith$Fragment$MediaListEntry$media$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaListEntry$media$coverImage;

  TRes call({
    String? extraLarge,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaListEntry$media$coverImage<TRes>
    implements CopyWith$Fragment$MediaListEntry$media$coverImage<TRes> {
  _CopyWithImpl$Fragment$MediaListEntry$media$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$MediaListEntry$media$coverImage _instance;

  final TRes Function(Fragment$MediaListEntry$media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? extraLarge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaListEntry$media$coverImage(
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaListEntry$media$coverImage<TRes>
    implements CopyWith$Fragment$MediaListEntry$media$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$MediaListEntry$media$coverImage(this._res);

  TRes _res;

  call({
    String? extraLarge,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$CustomList {
  Fragment$CustomList({
    this.name,
    this.enabled,
    this.$__typename = 'CustomList',
  });

  factory Fragment$CustomList.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Fragment$CustomList(
      name: (l$name as String?),
      enabled: (l$enabled as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final bool? enabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$enabled = enabled;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$enabled,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CustomList) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Fragment$CustomList on Fragment$CustomList {
  CopyWith$Fragment$CustomList<Fragment$CustomList> get copyWith =>
      CopyWith$Fragment$CustomList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$CustomList<TRes> {
  factory CopyWith$Fragment$CustomList(
    Fragment$CustomList instance,
    TRes Function(Fragment$CustomList) then,
  ) = _CopyWithImpl$Fragment$CustomList;

  factory CopyWith$Fragment$CustomList.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CustomList;

  TRes call({
    String? name,
    bool? enabled,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CustomList<TRes>
    implements CopyWith$Fragment$CustomList<TRes> {
  _CopyWithImpl$Fragment$CustomList(
    this._instance,
    this._then,
  );

  final Fragment$CustomList _instance;

  final TRes Function(Fragment$CustomList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CustomList(
        name: name == _undefined ? _instance.name : (name as String?),
        enabled: enabled == _undefined ? _instance.enabled : (enabled as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CustomList<TRes>
    implements CopyWith$Fragment$CustomList<TRes> {
  _CopyWithStubImpl$Fragment$CustomList(this._res);

  TRes _res;

  call({
    String? name,
    bool? enabled,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionCustomList = FragmentDefinitionNode(
  name: NameNode(value: 'CustomList'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'CustomList'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'enabled'),
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
);
const documentNodeFragmentCustomList = DocumentNode(definitions: [
  fragmentDefinitionCustomList,
]);

extension ClientExtension$Fragment$CustomList on graphql.GraphQLClient {
  void writeFragment$CustomList({
    required Fragment$CustomList data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'CustomList',
            document: documentNodeFragmentCustomList,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$CustomList? readFragment$CustomList({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'CustomList',
          document: documentNodeFragmentCustomList,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$CustomList.fromJson(result);
  }
}

class Fragment$MediaFragment {
  Fragment$MediaFragment({
    required this.id,
    this.type,
    this.isAdult,
    this.genres,
    this.format,
    this.description,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory Fragment$MediaFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$isAdult = json['isAdult'];
    final l$genres = json['genres'];
    final l$format = json['format'];
    final l$description = json['description'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaFragment(
      id: (l$id as int),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      isAdult: (l$isAdult as bool?),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      description: (l$description as String?),
      title: l$title == null
          ? null
          : Fragment$MediaFragment$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Fragment$MediaFragment$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$MediaType? type;

  final bool? isAdult;

  final List<String?>? genres;

  final Enum$MediaFormat? format;

  final String? description;

  final Fragment$MediaFragment$title? title;

  final Fragment$MediaFragment$coverImage? coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
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
    final l$id = id;
    final l$type = type;
    final l$isAdult = isAdult;
    final l$genres = genres;
    final l$format = format;
    final l$description = description;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$isAdult,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$format,
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
    if (!(other is Fragment$MediaFragment) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (l$isAdult != lOther$isAdult) {
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
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
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

extension UtilityExtension$Fragment$MediaFragment on Fragment$MediaFragment {
  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment> get copyWith =>
      CopyWith$Fragment$MediaFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MediaFragment<TRes> {
  factory CopyWith$Fragment$MediaFragment(
    Fragment$MediaFragment instance,
    TRes Function(Fragment$MediaFragment) then,
  ) = _CopyWithImpl$Fragment$MediaFragment;

  factory CopyWith$Fragment$MediaFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaFragment;

  TRes call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    Enum$MediaFormat? format,
    String? description,
    Fragment$MediaFragment$title? title,
    Fragment$MediaFragment$coverImage? coverImage,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFragment$title<TRes> get title;
  CopyWith$Fragment$MediaFragment$coverImage<TRes> get coverImage;
}

class _CopyWithImpl$Fragment$MediaFragment<TRes>
    implements CopyWith$Fragment$MediaFragment<TRes> {
  _CopyWithImpl$Fragment$MediaFragment(
    this._instance,
    this._then,
  );

  final Fragment$MediaFragment _instance;

  final TRes Function(Fragment$MediaFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? isAdult = _undefined,
    Object? genres = _undefined,
    Object? format = _undefined,
    Object? description = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaFragment(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$MediaFragment$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$MediaFragment$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$MediaFragment$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$MediaFragment$title.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$MediaFragment$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$MediaFragment$coverImage.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Fragment$MediaFragment<TRes>
    implements CopyWith$Fragment$MediaFragment<TRes> {
  _CopyWithStubImpl$Fragment$MediaFragment(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    Enum$MediaFormat? format,
    String? description,
    Fragment$MediaFragment$title? title,
    Fragment$MediaFragment$coverImage? coverImage,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$MediaFragment$title<TRes> get title =>
      CopyWith$Fragment$MediaFragment$title.stub(_res);
  CopyWith$Fragment$MediaFragment$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$MediaFragment$coverImage.stub(_res);
}

const fragmentDefinitionMediaFragment = FragmentDefinitionNode(
  name: NameNode(value: 'MediaFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
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
      name: NameNode(value: 'type'),
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
      name: NameNode(value: 'genres'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'format'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
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
);
const documentNodeFragmentMediaFragment = DocumentNode(definitions: [
  fragmentDefinitionMediaFragment,
]);

extension ClientExtension$Fragment$MediaFragment on graphql.GraphQLClient {
  void writeFragment$MediaFragment({
    required Fragment$MediaFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MediaFragment',
            document: documentNodeFragmentMediaFragment,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MediaFragment? readFragment$MediaFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MediaFragment',
          document: documentNodeFragmentMediaFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MediaFragment.fromJson(result);
  }
}

class Fragment$MediaFragment$title {
  Fragment$MediaFragment$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$MediaFragment$title.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaFragment$title(
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
    if (!(other is Fragment$MediaFragment$title) ||
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

extension UtilityExtension$Fragment$MediaFragment$title
    on Fragment$MediaFragment$title {
  CopyWith$Fragment$MediaFragment$title<Fragment$MediaFragment$title>
      get copyWith => CopyWith$Fragment$MediaFragment$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaFragment$title<TRes> {
  factory CopyWith$Fragment$MediaFragment$title(
    Fragment$MediaFragment$title instance,
    TRes Function(Fragment$MediaFragment$title) then,
  ) = _CopyWithImpl$Fragment$MediaFragment$title;

  factory CopyWith$Fragment$MediaFragment$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaFragment$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaFragment$title<TRes>
    implements CopyWith$Fragment$MediaFragment$title<TRes> {
  _CopyWithImpl$Fragment$MediaFragment$title(
    this._instance,
    this._then,
  );

  final Fragment$MediaFragment$title _instance;

  final TRes Function(Fragment$MediaFragment$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaFragment$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaFragment$title<TRes>
    implements CopyWith$Fragment$MediaFragment$title<TRes> {
  _CopyWithStubImpl$Fragment$MediaFragment$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaFragment$coverImage {
  Fragment$MediaFragment$coverImage({
    this.extraLarge,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$MediaFragment$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaFragment$coverImage(
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
    if (!(other is Fragment$MediaFragment$coverImage) ||
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

extension UtilityExtension$Fragment$MediaFragment$coverImage
    on Fragment$MediaFragment$coverImage {
  CopyWith$Fragment$MediaFragment$coverImage<Fragment$MediaFragment$coverImage>
      get copyWith => CopyWith$Fragment$MediaFragment$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaFragment$coverImage<TRes> {
  factory CopyWith$Fragment$MediaFragment$coverImage(
    Fragment$MediaFragment$coverImage instance,
    TRes Function(Fragment$MediaFragment$coverImage) then,
  ) = _CopyWithImpl$Fragment$MediaFragment$coverImage;

  factory CopyWith$Fragment$MediaFragment$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaFragment$coverImage;

  TRes call({
    String? extraLarge,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaFragment$coverImage<TRes>
    implements CopyWith$Fragment$MediaFragment$coverImage<TRes> {
  _CopyWithImpl$Fragment$MediaFragment$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$MediaFragment$coverImage _instance;

  final TRes Function(Fragment$MediaFragment$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? extraLarge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaFragment$coverImage(
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaFragment$coverImage<TRes>
    implements CopyWith$Fragment$MediaFragment$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$MediaFragment$coverImage(this._res);

  TRes _res;

  call({
    String? extraLarge,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ThreadFragment {
  Fragment$ThreadFragment({
    required this.id,
    this.title,
    this.replyCount,
    this.viewCount,
    this.replyCommentId,
    this.repliedAt,
    required this.createdAt,
    this.isSticky,
    this.mediaCategories,
    this.categories,
    this.user,
    this.replyUser,
    this.$__typename = 'Thread',
  });

  factory Fragment$ThreadFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$replyCount = json['replyCount'];
    final l$viewCount = json['viewCount'];
    final l$replyCommentId = json['replyCommentId'];
    final l$repliedAt = json['repliedAt'];
    final l$createdAt = json['createdAt'];
    final l$isSticky = json['isSticky'];
    final l$mediaCategories = json['mediaCategories'];
    final l$categories = json['categories'];
    final l$user = json['user'];
    final l$replyUser = json['replyUser'];
    final l$$__typename = json['__typename'];
    return Fragment$ThreadFragment(
      id: (l$id as int),
      title: (l$title as String?),
      replyCount: (l$replyCount as int?),
      viewCount: (l$viewCount as int?),
      replyCommentId: (l$replyCommentId as int?),
      repliedAt: (l$repliedAt as int?),
      createdAt: (l$createdAt as int),
      isSticky: (l$isSticky as bool?),
      mediaCategories: (l$mediaCategories as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      categories: (l$categories as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ThreadFragment$categories.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      replyUser: l$replyUser == null
          ? null
          : Fragment$UserFragment.fromJson(
              (l$replyUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? title;

  final int? replyCount;

  final int? viewCount;

  final int? replyCommentId;

  final int? repliedAt;

  final int createdAt;

  final bool? isSticky;

  final List<Fragment$MediaFragment?>? mediaCategories;

  final List<Fragment$ThreadFragment$categories?>? categories;

  final Fragment$UserFragment? user;

  final Fragment$UserFragment? replyUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$viewCount = viewCount;
    _resultData['viewCount'] = l$viewCount;
    final l$replyCommentId = replyCommentId;
    _resultData['replyCommentId'] = l$replyCommentId;
    final l$repliedAt = repliedAt;
    _resultData['repliedAt'] = l$repliedAt;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$isSticky = isSticky;
    _resultData['isSticky'] = l$isSticky;
    final l$mediaCategories = mediaCategories;
    _resultData['mediaCategories'] =
        l$mediaCategories?.map((e) => e?.toJson()).toList();
    final l$categories = categories;
    _resultData['categories'] = l$categories?.map((e) => e?.toJson()).toList();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$replyUser = replyUser;
    _resultData['replyUser'] = l$replyUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$replyCount = replyCount;
    final l$viewCount = viewCount;
    final l$replyCommentId = replyCommentId;
    final l$repliedAt = repliedAt;
    final l$createdAt = createdAt;
    final l$isSticky = isSticky;
    final l$mediaCategories = mediaCategories;
    final l$categories = categories;
    final l$user = user;
    final l$replyUser = replyUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$replyCount,
      l$viewCount,
      l$replyCommentId,
      l$repliedAt,
      l$createdAt,
      l$isSticky,
      l$mediaCategories == null
          ? null
          : Object.hashAll(l$mediaCategories.map((v) => v)),
      l$categories == null ? null : Object.hashAll(l$categories.map((v) => v)),
      l$user,
      l$replyUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ThreadFragment) ||
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
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$viewCount = viewCount;
    final lOther$viewCount = other.viewCount;
    if (l$viewCount != lOther$viewCount) {
      return false;
    }
    final l$replyCommentId = replyCommentId;
    final lOther$replyCommentId = other.replyCommentId;
    if (l$replyCommentId != lOther$replyCommentId) {
      return false;
    }
    final l$repliedAt = repliedAt;
    final lOther$repliedAt = other.repliedAt;
    if (l$repliedAt != lOther$repliedAt) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$isSticky = isSticky;
    final lOther$isSticky = other.isSticky;
    if (l$isSticky != lOther$isSticky) {
      return false;
    }
    final l$mediaCategories = mediaCategories;
    final lOther$mediaCategories = other.mediaCategories;
    if (l$mediaCategories != null && lOther$mediaCategories != null) {
      if (l$mediaCategories.length != lOther$mediaCategories.length) {
        return false;
      }
      for (int i = 0; i < l$mediaCategories.length; i++) {
        final l$mediaCategories$entry = l$mediaCategories[i];
        final lOther$mediaCategories$entry = lOther$mediaCategories[i];
        if (l$mediaCategories$entry != lOther$mediaCategories$entry) {
          return false;
        }
      }
    } else if (l$mediaCategories != lOther$mediaCategories) {
      return false;
    }
    final l$categories = categories;
    final lOther$categories = other.categories;
    if (l$categories != null && lOther$categories != null) {
      if (l$categories.length != lOther$categories.length) {
        return false;
      }
      for (int i = 0; i < l$categories.length; i++) {
        final l$categories$entry = l$categories[i];
        final lOther$categories$entry = lOther$categories[i];
        if (l$categories$entry != lOther$categories$entry) {
          return false;
        }
      }
    } else if (l$categories != lOther$categories) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$replyUser = replyUser;
    final lOther$replyUser = other.replyUser;
    if (l$replyUser != lOther$replyUser) {
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

extension UtilityExtension$Fragment$ThreadFragment on Fragment$ThreadFragment {
  CopyWith$Fragment$ThreadFragment<Fragment$ThreadFragment> get copyWith =>
      CopyWith$Fragment$ThreadFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ThreadFragment<TRes> {
  factory CopyWith$Fragment$ThreadFragment(
    Fragment$ThreadFragment instance,
    TRes Function(Fragment$ThreadFragment) then,
  ) = _CopyWithImpl$Fragment$ThreadFragment;

  factory CopyWith$Fragment$ThreadFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ThreadFragment;

  TRes call({
    int? id,
    String? title,
    int? replyCount,
    int? viewCount,
    int? replyCommentId,
    int? repliedAt,
    int? createdAt,
    bool? isSticky,
    List<Fragment$MediaFragment?>? mediaCategories,
    List<Fragment$ThreadFragment$categories?>? categories,
    Fragment$UserFragment? user,
    Fragment$UserFragment? replyUser,
    String? $__typename,
  });
  TRes mediaCategories(
      Iterable<Fragment$MediaFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>?>?)
          _fn);
  TRes categories(
      Iterable<Fragment$ThreadFragment$categories?>? Function(
              Iterable<
                  CopyWith$Fragment$ThreadFragment$categories<
                      Fragment$ThreadFragment$categories>?>?)
          _fn);
  CopyWith$Fragment$UserFragment<TRes> get user;
  CopyWith$Fragment$UserFragment<TRes> get replyUser;
}

class _CopyWithImpl$Fragment$ThreadFragment<TRes>
    implements CopyWith$Fragment$ThreadFragment<TRes> {
  _CopyWithImpl$Fragment$ThreadFragment(
    this._instance,
    this._then,
  );

  final Fragment$ThreadFragment _instance;

  final TRes Function(Fragment$ThreadFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? replyCount = _undefined,
    Object? viewCount = _undefined,
    Object? replyCommentId = _undefined,
    Object? repliedAt = _undefined,
    Object? createdAt = _undefined,
    Object? isSticky = _undefined,
    Object? mediaCategories = _undefined,
    Object? categories = _undefined,
    Object? user = _undefined,
    Object? replyUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ThreadFragment(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined ? _instance.title : (title as String?),
        replyCount: replyCount == _undefined
            ? _instance.replyCount
            : (replyCount as int?),
        viewCount:
            viewCount == _undefined ? _instance.viewCount : (viewCount as int?),
        replyCommentId: replyCommentId == _undefined
            ? _instance.replyCommentId
            : (replyCommentId as int?),
        repliedAt:
            repliedAt == _undefined ? _instance.repliedAt : (repliedAt as int?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        isSticky:
            isSticky == _undefined ? _instance.isSticky : (isSticky as bool?),
        mediaCategories: mediaCategories == _undefined
            ? _instance.mediaCategories
            : (mediaCategories as List<Fragment$MediaFragment?>?),
        categories: categories == _undefined
            ? _instance.categories
            : (categories as List<Fragment$ThreadFragment$categories?>?),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        replyUser: replyUser == _undefined
            ? _instance.replyUser
            : (replyUser as Fragment$UserFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes mediaCategories(
          Iterable<Fragment$MediaFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFragment<
                          Fragment$MediaFragment>?>?)
              _fn) =>
      call(
          mediaCategories: _fn(_instance.mediaCategories?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaFragment(
                  e,
                  (i) => i,
                )))?.toList());
  TRes categories(
          Iterable<Fragment$ThreadFragment$categories?>? Function(
                  Iterable<
                      CopyWith$Fragment$ThreadFragment$categories<
                          Fragment$ThreadFragment$categories>?>?)
              _fn) =>
      call(
          categories: _fn(_instance.categories?.map((e) => e == null
              ? null
              : CopyWith$Fragment$ThreadFragment$categories(
                  e,
                  (i) => i,
                )))?.toList());
  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }

  CopyWith$Fragment$UserFragment<TRes> get replyUser {
    final local$replyUser = _instance.replyUser;
    return local$replyUser == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(
            local$replyUser, (e) => call(replyUser: e));
  }
}

class _CopyWithStubImpl$Fragment$ThreadFragment<TRes>
    implements CopyWith$Fragment$ThreadFragment<TRes> {
  _CopyWithStubImpl$Fragment$ThreadFragment(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    int? replyCount,
    int? viewCount,
    int? replyCommentId,
    int? repliedAt,
    int? createdAt,
    bool? isSticky,
    List<Fragment$MediaFragment?>? mediaCategories,
    List<Fragment$ThreadFragment$categories?>? categories,
    Fragment$UserFragment? user,
    Fragment$UserFragment? replyUser,
    String? $__typename,
  }) =>
      _res;
  mediaCategories(_fn) => _res;
  categories(_fn) => _res;
  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
  CopyWith$Fragment$UserFragment<TRes> get replyUser =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

const fragmentDefinitionThreadFragment = FragmentDefinitionNode(
  name: NameNode(value: 'ThreadFragment'),
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
      name: NameNode(value: 'title'),
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
      name: NameNode(value: 'viewCount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'replyCommentId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'repliedAt'),
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
      name: NameNode(value: 'isSticky'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'mediaCategories'),
      alias: null,
      arguments: [],
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
      name: NameNode(value: 'categories'),
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
      name: NameNode(value: 'replyUser'),
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
);
const documentNodeFragmentThreadFragment = DocumentNode(definitions: [
  fragmentDefinitionThreadFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionUserFragment,
]);

extension ClientExtension$Fragment$ThreadFragment on graphql.GraphQLClient {
  void writeFragment$ThreadFragment({
    required Fragment$ThreadFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ThreadFragment',
            document: documentNodeFragmentThreadFragment,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ThreadFragment? readFragment$ThreadFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ThreadFragment',
          document: documentNodeFragmentThreadFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ThreadFragment.fromJson(result);
  }
}

class Fragment$ThreadFragment$categories {
  Fragment$ThreadFragment$categories({
    required this.id,
    required this.name,
    this.$__typename = 'ThreadCategory',
  });

  factory Fragment$ThreadFragment$categories.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$ThreadFragment$categories(
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
    if (!(other is Fragment$ThreadFragment$categories) ||
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

extension UtilityExtension$Fragment$ThreadFragment$categories
    on Fragment$ThreadFragment$categories {
  CopyWith$Fragment$ThreadFragment$categories<
          Fragment$ThreadFragment$categories>
      get copyWith => CopyWith$Fragment$ThreadFragment$categories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ThreadFragment$categories<TRes> {
  factory CopyWith$Fragment$ThreadFragment$categories(
    Fragment$ThreadFragment$categories instance,
    TRes Function(Fragment$ThreadFragment$categories) then,
  ) = _CopyWithImpl$Fragment$ThreadFragment$categories;

  factory CopyWith$Fragment$ThreadFragment$categories.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ThreadFragment$categories;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ThreadFragment$categories<TRes>
    implements CopyWith$Fragment$ThreadFragment$categories<TRes> {
  _CopyWithImpl$Fragment$ThreadFragment$categories(
    this._instance,
    this._then,
  );

  final Fragment$ThreadFragment$categories _instance;

  final TRes Function(Fragment$ThreadFragment$categories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ThreadFragment$categories(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ThreadFragment$categories<TRes>
    implements CopyWith$Fragment$ThreadFragment$categories<TRes> {
  _CopyWithStubImpl$Fragment$ThreadFragment$categories(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$TextActivity {
  Fragment$TextActivity({
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

  factory Fragment$TextActivity.fromJson(Map<String, dynamic> json) {
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
    return Fragment$TextActivity(
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
    if (!(other is Fragment$TextActivity) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$TextActivity on Fragment$TextActivity {
  CopyWith$Fragment$TextActivity<Fragment$TextActivity> get copyWith =>
      CopyWith$Fragment$TextActivity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$TextActivity<TRes> {
  factory CopyWith$Fragment$TextActivity(
    Fragment$TextActivity instance,
    TRes Function(Fragment$TextActivity) then,
  ) = _CopyWithImpl$Fragment$TextActivity;

  factory CopyWith$Fragment$TextActivity.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TextActivity;

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

class _CopyWithImpl$Fragment$TextActivity<TRes>
    implements CopyWith$Fragment$TextActivity<TRes> {
  _CopyWithImpl$Fragment$TextActivity(
    this._instance,
    this._then,
  );

  final Fragment$TextActivity _instance;

  final TRes Function(Fragment$TextActivity) _then;

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
      _then(Fragment$TextActivity(
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

class _CopyWithStubImpl$Fragment$TextActivity<TRes>
    implements CopyWith$Fragment$TextActivity<TRes> {
  _CopyWithStubImpl$Fragment$TextActivity(this._res);

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

const fragmentDefinitionTextActivity = FragmentDefinitionNode(
  name: NameNode(value: 'TextActivity'),
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
);
const documentNodeFragmentTextActivity = DocumentNode(definitions: [
  fragmentDefinitionTextActivity,
  fragmentDefinitionUserFragment,
]);

extension ClientExtension$Fragment$TextActivity on graphql.GraphQLClient {
  void writeFragment$TextActivity({
    required Fragment$TextActivity data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'TextActivity',
            document: documentNodeFragmentTextActivity,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$TextActivity? readFragment$TextActivity({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'TextActivity',
          document: documentNodeFragmentTextActivity,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$TextActivity.fromJson(result);
  }
}

class Fragment$ListActivity {
  Fragment$ListActivity({
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

  factory Fragment$ListActivity.fromJson(Map<String, dynamic> json) {
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
    return Fragment$ListActivity(
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
    if (!(other is Fragment$ListActivity) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$ListActivity on Fragment$ListActivity {
  CopyWith$Fragment$ListActivity<Fragment$ListActivity> get copyWith =>
      CopyWith$Fragment$ListActivity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ListActivity<TRes> {
  factory CopyWith$Fragment$ListActivity(
    Fragment$ListActivity instance,
    TRes Function(Fragment$ListActivity) then,
  ) = _CopyWithImpl$Fragment$ListActivity;

  factory CopyWith$Fragment$ListActivity.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ListActivity;

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

class _CopyWithImpl$Fragment$ListActivity<TRes>
    implements CopyWith$Fragment$ListActivity<TRes> {
  _CopyWithImpl$Fragment$ListActivity(
    this._instance,
    this._then,
  );

  final Fragment$ListActivity _instance;

  final TRes Function(Fragment$ListActivity) _then;

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
      _then(Fragment$ListActivity(
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

class _CopyWithStubImpl$Fragment$ListActivity<TRes>
    implements CopyWith$Fragment$ListActivity<TRes> {
  _CopyWithStubImpl$Fragment$ListActivity(this._res);

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

const fragmentDefinitionListActivity = FragmentDefinitionNode(
  name: NameNode(value: 'ListActivity'),
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
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'progress'),
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
      name: NameNode(value: 'media'),
      alias: null,
      arguments: [],
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
);
const documentNodeFragmentListActivity = DocumentNode(definitions: [
  fragmentDefinitionListActivity,
  fragmentDefinitionUserFragment,
  fragmentDefinitionMediaFragment,
]);

extension ClientExtension$Fragment$ListActivity on graphql.GraphQLClient {
  void writeFragment$ListActivity({
    required Fragment$ListActivity data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ListActivity',
            document: documentNodeFragmentListActivity,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ListActivity? readFragment$ListActivity({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ListActivity',
          document: documentNodeFragmentListActivity,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ListActivity.fromJson(result);
  }
}

class Fragment$MessageActivity {
  Fragment$MessageActivity({
    required this.id,
    this.type,
    this.message,
    required this.replyCount,
    this.isPrivate,
    this.isLocked,
    this.isSubscribed,
    this.isLiked,
    required this.likeCount,
    required this.createdAt,
    this.userId,
    this.messenger,
    this.$__typename = 'MessageActivity',
  });

  factory Fragment$MessageActivity.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$message = json['message'];
    final l$replyCount = json['replyCount'];
    final l$isPrivate = json['isPrivate'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$createdAt = json['createdAt'];
    final l$userId = json['userId'];
    final l$messenger = json['messenger'];
    final l$$__typename = json['__typename'];
    return Fragment$MessageActivity(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$ActivityType((l$type as String)),
      message: (l$message as String?),
      replyCount: (l$replyCount as int),
      isPrivate: (l$isPrivate as bool?),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      userId: (l$userId as int?),
      messenger: l$messenger == null
          ? null
          : Fragment$MessageActivity$messenger.fromJson(
              (l$messenger as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$ActivityType? type;

  final String? message;

  final int replyCount;

  final bool? isPrivate;

  final bool? isLocked;

  final bool? isSubscribed;

  final bool? isLiked;

  final int likeCount;

  final int createdAt;

  final int? userId;

  final Fragment$MessageActivity$messenger? messenger;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$ActivityType(l$type);
    final l$message = message;
    _resultData['message'] = l$message;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$isPrivate = isPrivate;
    _resultData['isPrivate'] = l$isPrivate;
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
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$messenger = messenger;
    _resultData['messenger'] = l$messenger?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$message = message;
    final l$replyCount = replyCount;
    final l$isPrivate = isPrivate;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$createdAt = createdAt;
    final l$userId = userId;
    final l$messenger = messenger;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$message,
      l$replyCount,
      l$isPrivate,
      l$isLocked,
      l$isSubscribed,
      l$isLiked,
      l$likeCount,
      l$createdAt,
      l$userId,
      l$messenger,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MessageActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$isPrivate = isPrivate;
    final lOther$isPrivate = other.isPrivate;
    if (l$isPrivate != lOther$isPrivate) {
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
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$messenger = messenger;
    final lOther$messenger = other.messenger;
    if (l$messenger != lOther$messenger) {
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

extension UtilityExtension$Fragment$MessageActivity
    on Fragment$MessageActivity {
  CopyWith$Fragment$MessageActivity<Fragment$MessageActivity> get copyWith =>
      CopyWith$Fragment$MessageActivity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MessageActivity<TRes> {
  factory CopyWith$Fragment$MessageActivity(
    Fragment$MessageActivity instance,
    TRes Function(Fragment$MessageActivity) then,
  ) = _CopyWithImpl$Fragment$MessageActivity;

  factory CopyWith$Fragment$MessageActivity.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MessageActivity;

  TRes call({
    int? id,
    Enum$ActivityType? type,
    String? message,
    int? replyCount,
    bool? isPrivate,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    int? userId,
    Fragment$MessageActivity$messenger? messenger,
    String? $__typename,
  });
  CopyWith$Fragment$MessageActivity$messenger<TRes> get messenger;
}

class _CopyWithImpl$Fragment$MessageActivity<TRes>
    implements CopyWith$Fragment$MessageActivity<TRes> {
  _CopyWithImpl$Fragment$MessageActivity(
    this._instance,
    this._then,
  );

  final Fragment$MessageActivity _instance;

  final TRes Function(Fragment$MessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? message = _undefined,
    Object? replyCount = _undefined,
    Object? isPrivate = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? createdAt = _undefined,
    Object? userId = _undefined,
    Object? messenger = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MessageActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type:
            type == _undefined ? _instance.type : (type as Enum$ActivityType?),
        message:
            message == _undefined ? _instance.message : (message as String?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        isPrivate: isPrivate == _undefined
            ? _instance.isPrivate
            : (isPrivate as bool?),
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
        userId: userId == _undefined ? _instance.userId : (userId as int?),
        messenger: messenger == _undefined
            ? _instance.messenger
            : (messenger as Fragment$MessageActivity$messenger?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$MessageActivity$messenger<TRes> get messenger {
    final local$messenger = _instance.messenger;
    return local$messenger == null
        ? CopyWith$Fragment$MessageActivity$messenger.stub(_then(_instance))
        : CopyWith$Fragment$MessageActivity$messenger(
            local$messenger, (e) => call(messenger: e));
  }
}

class _CopyWithStubImpl$Fragment$MessageActivity<TRes>
    implements CopyWith$Fragment$MessageActivity<TRes> {
  _CopyWithStubImpl$Fragment$MessageActivity(this._res);

  TRes _res;

  call({
    int? id,
    Enum$ActivityType? type,
    String? message,
    int? replyCount,
    bool? isPrivate,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    int? userId,
    Fragment$MessageActivity$messenger? messenger,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$MessageActivity$messenger<TRes> get messenger =>
      CopyWith$Fragment$MessageActivity$messenger.stub(_res);
}

const fragmentDefinitionMessageActivity = FragmentDefinitionNode(
  name: NameNode(value: 'MessageActivity'),
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
      name: NameNode(value: 'type'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'message'),
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
      name: NameNode(value: 'isPrivate'),
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
      name: NameNode(value: 'messengerId'),
      alias: NameNode(value: 'userId'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'messenger'),
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
          name: NameNode(value: 'donatorTier'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'donatorBadge'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'moderatorRoles'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'avatar'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'large'),
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
);
const documentNodeFragmentMessageActivity = DocumentNode(definitions: [
  fragmentDefinitionMessageActivity,
]);

extension ClientExtension$Fragment$MessageActivity on graphql.GraphQLClient {
  void writeFragment$MessageActivity({
    required Fragment$MessageActivity data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MessageActivity',
            document: documentNodeFragmentMessageActivity,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MessageActivity? readFragment$MessageActivity({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MessageActivity',
          document: documentNodeFragmentMessageActivity,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MessageActivity.fromJson(result);
  }
}

class Fragment$MessageActivity$messenger {
  Fragment$MessageActivity$messenger({
    required this.id,
    required this.name,
    this.donatorTier,
    this.donatorBadge,
    this.moderatorRoles,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Fragment$MessageActivity$messenger.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$donatorTier = json['donatorTier'];
    final l$donatorBadge = json['donatorBadge'];
    final l$moderatorRoles = json['moderatorRoles'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Fragment$MessageActivity$messenger(
      id: (l$id as int),
      name: (l$name as String),
      donatorTier: (l$donatorTier as int?),
      donatorBadge: (l$donatorBadge as String?),
      moderatorRoles: (l$moderatorRoles as List<dynamic>?)
          ?.map((e) => e == null ? null : fromJson$Enum$ModRole((e as String)))
          .toList(),
      avatar: l$avatar == null
          ? null
          : Fragment$MessageActivity$messenger$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final int? donatorTier;

  final String? donatorBadge;

  final List<Enum$ModRole?>? moderatorRoles;

  final Fragment$MessageActivity$messenger$avatar? avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$donatorTier = donatorTier;
    _resultData['donatorTier'] = l$donatorTier;
    final l$donatorBadge = donatorBadge;
    _resultData['donatorBadge'] = l$donatorBadge;
    final l$moderatorRoles = moderatorRoles;
    _resultData['moderatorRoles'] = l$moderatorRoles
        ?.map((e) => e == null ? null : toJson$Enum$ModRole(e))
        .toList();
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$donatorTier = donatorTier;
    final l$donatorBadge = donatorBadge;
    final l$moderatorRoles = moderatorRoles;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$donatorTier,
      l$donatorBadge,
      l$moderatorRoles == null
          ? null
          : Object.hashAll(l$moderatorRoles.map((v) => v)),
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MessageActivity$messenger) ||
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
    final l$donatorTier = donatorTier;
    final lOther$donatorTier = other.donatorTier;
    if (l$donatorTier != lOther$donatorTier) {
      return false;
    }
    final l$donatorBadge = donatorBadge;
    final lOther$donatorBadge = other.donatorBadge;
    if (l$donatorBadge != lOther$donatorBadge) {
      return false;
    }
    final l$moderatorRoles = moderatorRoles;
    final lOther$moderatorRoles = other.moderatorRoles;
    if (l$moderatorRoles != null && lOther$moderatorRoles != null) {
      if (l$moderatorRoles.length != lOther$moderatorRoles.length) {
        return false;
      }
      for (int i = 0; i < l$moderatorRoles.length; i++) {
        final l$moderatorRoles$entry = l$moderatorRoles[i];
        final lOther$moderatorRoles$entry = lOther$moderatorRoles[i];
        if (l$moderatorRoles$entry != lOther$moderatorRoles$entry) {
          return false;
        }
      }
    } else if (l$moderatorRoles != lOther$moderatorRoles) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtension$Fragment$MessageActivity$messenger
    on Fragment$MessageActivity$messenger {
  CopyWith$Fragment$MessageActivity$messenger<
          Fragment$MessageActivity$messenger>
      get copyWith => CopyWith$Fragment$MessageActivity$messenger(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MessageActivity$messenger<TRes> {
  factory CopyWith$Fragment$MessageActivity$messenger(
    Fragment$MessageActivity$messenger instance,
    TRes Function(Fragment$MessageActivity$messenger) then,
  ) = _CopyWithImpl$Fragment$MessageActivity$messenger;

  factory CopyWith$Fragment$MessageActivity$messenger.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MessageActivity$messenger;

  TRes call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Fragment$MessageActivity$messenger$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Fragment$MessageActivity$messenger$avatar<TRes> get avatar;
}

class _CopyWithImpl$Fragment$MessageActivity$messenger<TRes>
    implements CopyWith$Fragment$MessageActivity$messenger<TRes> {
  _CopyWithImpl$Fragment$MessageActivity$messenger(
    this._instance,
    this._then,
  );

  final Fragment$MessageActivity$messenger _instance;

  final TRes Function(Fragment$MessageActivity$messenger) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? donatorTier = _undefined,
    Object? donatorBadge = _undefined,
    Object? moderatorRoles = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MessageActivity$messenger(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        donatorTier: donatorTier == _undefined
            ? _instance.donatorTier
            : (donatorTier as int?),
        donatorBadge: donatorBadge == _undefined
            ? _instance.donatorBadge
            : (donatorBadge as String?),
        moderatorRoles: moderatorRoles == _undefined
            ? _instance.moderatorRoles
            : (moderatorRoles as List<Enum$ModRole?>?),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Fragment$MessageActivity$messenger$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$MessageActivity$messenger$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Fragment$MessageActivity$messenger$avatar.stub(
            _then(_instance))
        : CopyWith$Fragment$MessageActivity$messenger$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Fragment$MessageActivity$messenger<TRes>
    implements CopyWith$Fragment$MessageActivity$messenger<TRes> {
  _CopyWithStubImpl$Fragment$MessageActivity$messenger(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Fragment$MessageActivity$messenger$avatar? avatar,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$MessageActivity$messenger$avatar<TRes> get avatar =>
      CopyWith$Fragment$MessageActivity$messenger$avatar.stub(_res);
}

class Fragment$MessageActivity$messenger$avatar {
  Fragment$MessageActivity$messenger$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Fragment$MessageActivity$messenger$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$MessageActivity$messenger$avatar(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MessageActivity$messenger$avatar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtension$Fragment$MessageActivity$messenger$avatar
    on Fragment$MessageActivity$messenger$avatar {
  CopyWith$Fragment$MessageActivity$messenger$avatar<
          Fragment$MessageActivity$messenger$avatar>
      get copyWith => CopyWith$Fragment$MessageActivity$messenger$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MessageActivity$messenger$avatar<TRes> {
  factory CopyWith$Fragment$MessageActivity$messenger$avatar(
    Fragment$MessageActivity$messenger$avatar instance,
    TRes Function(Fragment$MessageActivity$messenger$avatar) then,
  ) = _CopyWithImpl$Fragment$MessageActivity$messenger$avatar;

  factory CopyWith$Fragment$MessageActivity$messenger$avatar.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MessageActivity$messenger$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MessageActivity$messenger$avatar<TRes>
    implements CopyWith$Fragment$MessageActivity$messenger$avatar<TRes> {
  _CopyWithImpl$Fragment$MessageActivity$messenger$avatar(
    this._instance,
    this._then,
  );

  final Fragment$MessageActivity$messenger$avatar _instance;

  final TRes Function(Fragment$MessageActivity$messenger$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MessageActivity$messenger$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MessageActivity$messenger$avatar<TRes>
    implements CopyWith$Fragment$MessageActivity$messenger$avatar<TRes> {
  _CopyWithStubImpl$Fragment$MessageActivity$messenger$avatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaListOptions {
  Fragment$MediaListOptions({
    this.sectionOrder,
    this.customLists,
    this.$__typename = 'MediaListTypeOptions',
  });

  factory Fragment$MediaListOptions.fromJson(Map<String, dynamic> json) {
    final l$sectionOrder = json['sectionOrder'];
    final l$customLists = json['customLists'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaListOptions(
      sectionOrder: (l$sectionOrder as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      customLists: (l$customLists as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?>? sectionOrder;

  final List<String?>? customLists;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sectionOrder = sectionOrder;
    _resultData['sectionOrder'] = l$sectionOrder?.map((e) => e).toList();
    final l$customLists = customLists;
    _resultData['customLists'] = l$customLists?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sectionOrder = sectionOrder;
    final l$customLists = customLists;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sectionOrder == null
          ? null
          : Object.hashAll(l$sectionOrder.map((v) => v)),
      l$customLists == null
          ? null
          : Object.hashAll(l$customLists.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaListOptions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sectionOrder = sectionOrder;
    final lOther$sectionOrder = other.sectionOrder;
    if (l$sectionOrder != null && lOther$sectionOrder != null) {
      if (l$sectionOrder.length != lOther$sectionOrder.length) {
        return false;
      }
      for (int i = 0; i < l$sectionOrder.length; i++) {
        final l$sectionOrder$entry = l$sectionOrder[i];
        final lOther$sectionOrder$entry = lOther$sectionOrder[i];
        if (l$sectionOrder$entry != lOther$sectionOrder$entry) {
          return false;
        }
      }
    } else if (l$sectionOrder != lOther$sectionOrder) {
      return false;
    }
    final l$customLists = customLists;
    final lOther$customLists = other.customLists;
    if (l$customLists != null && lOther$customLists != null) {
      if (l$customLists.length != lOther$customLists.length) {
        return false;
      }
      for (int i = 0; i < l$customLists.length; i++) {
        final l$customLists$entry = l$customLists[i];
        final lOther$customLists$entry = lOther$customLists[i];
        if (l$customLists$entry != lOther$customLists$entry) {
          return false;
        }
      }
    } else if (l$customLists != lOther$customLists) {
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

extension UtilityExtension$Fragment$MediaListOptions
    on Fragment$MediaListOptions {
  CopyWith$Fragment$MediaListOptions<Fragment$MediaListOptions> get copyWith =>
      CopyWith$Fragment$MediaListOptions(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MediaListOptions<TRes> {
  factory CopyWith$Fragment$MediaListOptions(
    Fragment$MediaListOptions instance,
    TRes Function(Fragment$MediaListOptions) then,
  ) = _CopyWithImpl$Fragment$MediaListOptions;

  factory CopyWith$Fragment$MediaListOptions.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaListOptions;

  TRes call({
    List<String?>? sectionOrder,
    List<String?>? customLists,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaListOptions<TRes>
    implements CopyWith$Fragment$MediaListOptions<TRes> {
  _CopyWithImpl$Fragment$MediaListOptions(
    this._instance,
    this._then,
  );

  final Fragment$MediaListOptions _instance;

  final TRes Function(Fragment$MediaListOptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sectionOrder = _undefined,
    Object? customLists = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaListOptions(
        sectionOrder: sectionOrder == _undefined
            ? _instance.sectionOrder
            : (sectionOrder as List<String?>?),
        customLists: customLists == _undefined
            ? _instance.customLists
            : (customLists as List<String?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaListOptions<TRes>
    implements CopyWith$Fragment$MediaListOptions<TRes> {
  _CopyWithStubImpl$Fragment$MediaListOptions(this._res);

  TRes _res;

  call({
    List<String?>? sectionOrder,
    List<String?>? customLists,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionMediaListOptions = FragmentDefinitionNode(
  name: NameNode(value: 'MediaListOptions'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'MediaListTypeOptions'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'sectionOrder'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'customLists'),
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
);
const documentNodeFragmentMediaListOptions = DocumentNode(definitions: [
  fragmentDefinitionMediaListOptions,
]);

extension ClientExtension$Fragment$MediaListOptions on graphql.GraphQLClient {
  void writeFragment$MediaListOptions({
    required Fragment$MediaListOptions data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MediaListOptions',
            document: documentNodeFragmentMediaListOptions,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MediaListOptions? readFragment$MediaListOptions({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MediaListOptions',
          document: documentNodeFragmentMediaListOptions,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MediaListOptions.fromJson(result);
  }
}
