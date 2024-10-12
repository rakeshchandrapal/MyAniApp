import '../../graphql/fragments/character.graphql.dart';
import '../../graphql/fragments/fuzzy_date.graphql.dart';
import '../../graphql/fragments/media.graphql.dart';
import '../../graphql/fragments/page_info.graphql.dart';
import '../../graphql/fragments/staff.graphql.dart';
import '../../graphql/schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$Staff {
  factory Variables$Query$Staff({
    int? id,
    bool? onList,
    int? characterPage,
    int? staffPage,
  }) =>
      Variables$Query$Staff._({
        if (id != null) r'id': id,
        if (onList != null) r'onList': onList,
        if (characterPage != null) r'characterPage': characterPage,
        if (staffPage != null) r'staffPage': staffPage,
      });

  Variables$Query$Staff._(this._$data);

  factory Variables$Query$Staff.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('onList')) {
      final l$onList = data['onList'];
      result$data['onList'] = (l$onList as bool?);
    }
    if (data.containsKey('characterPage')) {
      final l$characterPage = data['characterPage'];
      result$data['characterPage'] = (l$characterPage as int?);
    }
    if (data.containsKey('staffPage')) {
      final l$staffPage = data['staffPage'];
      result$data['staffPage'] = (l$staffPage as int?);
    }
    return Variables$Query$Staff._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  bool? get onList => (_$data['onList'] as bool?);

  int? get characterPage => (_$data['characterPage'] as int?);

  int? get staffPage => (_$data['staffPage'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('onList')) {
      final l$onList = onList;
      result$data['onList'] = l$onList;
    }
    if (_$data.containsKey('characterPage')) {
      final l$characterPage = characterPage;
      result$data['characterPage'] = l$characterPage;
    }
    if (_$data.containsKey('staffPage')) {
      final l$staffPage = staffPage;
      result$data['staffPage'] = l$staffPage;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Staff<Variables$Query$Staff> get copyWith =>
      CopyWith$Variables$Query$Staff(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Staff || runtimeType != other.runtimeType) {
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
    final l$onList = onList;
    final lOther$onList = other.onList;
    if (_$data.containsKey('onList') != other._$data.containsKey('onList')) {
      return false;
    }
    if (l$onList != lOther$onList) {
      return false;
    }
    final l$characterPage = characterPage;
    final lOther$characterPage = other.characterPage;
    if (_$data.containsKey('characterPage') !=
        other._$data.containsKey('characterPage')) {
      return false;
    }
    if (l$characterPage != lOther$characterPage) {
      return false;
    }
    final l$staffPage = staffPage;
    final lOther$staffPage = other.staffPage;
    if (_$data.containsKey('staffPage') !=
        other._$data.containsKey('staffPage')) {
      return false;
    }
    if (l$staffPage != lOther$staffPage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$onList = onList;
    final l$characterPage = characterPage;
    final l$staffPage = staffPage;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('onList') ? l$onList : const {},
      _$data.containsKey('characterPage') ? l$characterPage : const {},
      _$data.containsKey('staffPage') ? l$staffPage : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Staff<TRes> {
  factory CopyWith$Variables$Query$Staff(
    Variables$Query$Staff instance,
    TRes Function(Variables$Query$Staff) then,
  ) = _CopyWithImpl$Variables$Query$Staff;

  factory CopyWith$Variables$Query$Staff.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Staff;

  TRes call({
    int? id,
    bool? onList,
    int? characterPage,
    int? staffPage,
  });
}

class _CopyWithImpl$Variables$Query$Staff<TRes>
    implements CopyWith$Variables$Query$Staff<TRes> {
  _CopyWithImpl$Variables$Query$Staff(
    this._instance,
    this._then,
  );

  final Variables$Query$Staff _instance;

  final TRes Function(Variables$Query$Staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? onList = _undefined,
    Object? characterPage = _undefined,
    Object? staffPage = _undefined,
  }) =>
      _then(Variables$Query$Staff._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (onList != _undefined) 'onList': (onList as bool?),
        if (characterPage != _undefined)
          'characterPage': (characterPage as int?),
        if (staffPage != _undefined) 'staffPage': (staffPage as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Staff<TRes>
    implements CopyWith$Variables$Query$Staff<TRes> {
  _CopyWithStubImpl$Variables$Query$Staff(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    bool? onList,
    int? characterPage,
    int? staffPage,
  }) =>
      _res;
}

class Query$Staff {
  Query$Staff({
    this.Staff,
    this.$__typename = 'Query',
  });

  factory Query$Staff.fromJson(Map<String, dynamic> json) {
    final l$Staff = json['Staff'];
    final l$$__typename = json['__typename'];
    return Query$Staff(
      Staff: l$Staff == null
          ? null
          : Query$Staff$Staff.fromJson((l$Staff as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Staff$Staff? Staff;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$Staff = Staff;
    resultData['Staff'] = l$Staff?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$Staff = Staff;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Staff,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Staff || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Staff = Staff;
    final lOther$Staff = other.Staff;
    if (l$Staff != lOther$Staff) {
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

extension UtilityExtension$Query$Staff on Query$Staff {
  CopyWith$Query$Staff<Query$Staff> get copyWith => CopyWith$Query$Staff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Staff<TRes> {
  factory CopyWith$Query$Staff(
    Query$Staff instance,
    TRes Function(Query$Staff) then,
  ) = _CopyWithImpl$Query$Staff;

  factory CopyWith$Query$Staff.stub(TRes res) = _CopyWithStubImpl$Query$Staff;

  TRes call({
    Query$Staff$Staff? Staff,
    String? $__typename,
  });
  CopyWith$Query$Staff$Staff<TRes> get Staff;
}

class _CopyWithImpl$Query$Staff<TRes> implements CopyWith$Query$Staff<TRes> {
  _CopyWithImpl$Query$Staff(
    this._instance,
    this._then,
  );

  final Query$Staff _instance;

  final TRes Function(Query$Staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? Staff = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff(
        Staff: Staff == _undefined
            ? _instance.Staff
            : (Staff as Query$Staff$Staff?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$Staff$Staff<TRes> get Staff {
    final local$Staff = _instance.Staff;
    return local$Staff == null
        ? CopyWith$Query$Staff$Staff.stub(_then(_instance))
        : CopyWith$Query$Staff$Staff(local$Staff, (e) => call(Staff: e));
  }
}

class _CopyWithStubImpl$Query$Staff<TRes>
    implements CopyWith$Query$Staff<TRes> {
  _CopyWithStubImpl$Query$Staff(this._res);

  final TRes _res;

  @override
  call({
    Query$Staff$Staff? Staff,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$Staff$Staff<TRes> get Staff =>
      CopyWith$Query$Staff$Staff.stub(_res);
}

const documentNodeQueryStaff = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Staff'),
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
        variable: VariableNode(name: NameNode(value: 'onList')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'characterPage')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'staffPage')),
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
        name: NameNode(value: 'Staff'),
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
            name: NameNode(value: 'StaffFragment'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'languageV2'),
            alias: NameNode(value: 'language'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'dateOfBirth'),
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
            name: NameNode(value: 'dateOfDeath'),
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
            name: NameNode(value: 'age'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'yearsActive'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'homeTown'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bloodType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isFavourite'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isFavouriteBlocked'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'characterMedia'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'characterPage')),
              ),
              ArgumentNode(
                name: NameNode(value: 'onList'),
                value: VariableNode(name: NameNode(value: 'onList')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'START_DATE_DESC'))
                ]),
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
                      FragmentSpreadNode(
                        name: NameNode(value: 'MediaFragment'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: 'startDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
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
                    name: NameNode(value: 'characters'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'CharacterFragment'),
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
            name: NameNode(value: 'staffMedia'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'staffPage')),
              ),
              ArgumentNode(
                name: NameNode(value: 'onList'),
                value: VariableNode(name: NameNode(value: 'onList')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'START_DATE_DESC'))
                ]),
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
                    name: NameNode(value: 'staffRole'),
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
  fragmentDefinitionStaffFragment,
  fragmentDefinitionFuzzyDate,
  fragmentDefinitionPageInfo,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionCharacterFragment,
]);

class Query$Staff$Staff implements Fragment$StaffFragment {
  Query$Staff$Staff({
    required this.id,
    this.name,
    this.image,
    this.$__typename = 'Staff',
    this.description,
    this.gender,
    this.language,
    this.dateOfBirth,
    this.dateOfDeath,
    this.age,
    this.yearsActive,
    this.homeTown,
    this.bloodType,
    required this.isFavourite,
    required this.isFavouriteBlocked,
    this.characterMedia,
    this.staffMedia,
  });

  factory Query$Staff$Staff.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    final l$description = json['description'];
    final l$gender = json['gender'];
    final l$language = json['language'];
    final l$dateOfBirth = json['dateOfBirth'];
    final l$dateOfDeath = json['dateOfDeath'];
    final l$age = json['age'];
    final l$yearsActive = json['yearsActive'];
    final l$homeTown = json['homeTown'];
    final l$bloodType = json['bloodType'];
    final l$isFavourite = json['isFavourite'];
    final l$isFavouriteBlocked = json['isFavouriteBlocked'];
    final l$characterMedia = json['characterMedia'];
    final l$staffMedia = json['staffMedia'];
    return Query$Staff$Staff(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Query$Staff$Staff$name.fromJson((l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Query$Staff$Staff$image.fromJson((l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      description: (l$description as String?),
      gender: (l$gender as String?),
      language: (l$language as String?),
      dateOfBirth: l$dateOfBirth == null
          ? null
          : Fragment$FuzzyDate.fromJson(
              (l$dateOfBirth as Map<String, dynamic>)),
      dateOfDeath: l$dateOfDeath == null
          ? null
          : Fragment$FuzzyDate.fromJson(
              (l$dateOfDeath as Map<String, dynamic>)),
      age: (l$age as int?),
      yearsActive:
          (l$yearsActive as List<dynamic>?)?.map((e) => (e as int?)).toList(),
      homeTown: (l$homeTown as String?),
      bloodType: (l$bloodType as String?),
      isFavourite: (l$isFavourite as bool),
      isFavouriteBlocked: (l$isFavouriteBlocked as bool),
      characterMedia: l$characterMedia == null
          ? null
          : Query$Staff$Staff$characterMedia.fromJson(
              (l$characterMedia as Map<String, dynamic>)),
      staffMedia: l$staffMedia == null
          ? null
          : Query$Staff$Staff$staffMedia.fromJson(
              (l$staffMedia as Map<String, dynamic>)),
    );
  }

  @override
  final int id;

  @override
  final Query$Staff$Staff$name? name;

  @override
  final Query$Staff$Staff$image? image;

  @override
  final String $__typename;

  final String? description;

  final String? gender;

  final String? language;

  final Fragment$FuzzyDate? dateOfBirth;

  final Fragment$FuzzyDate? dateOfDeath;

  final int? age;

  final List<int?>? yearsActive;

  final String? homeTown;

  final String? bloodType;

  final bool isFavourite;

  final bool isFavouriteBlocked;

  final Query$Staff$Staff$characterMedia? characterMedia;

  final Query$Staff$Staff$staffMedia? staffMedia;

  @override
  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name?.toJson();
    final l$image = image;
    resultData['image'] = l$image?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    final l$description = description;
    resultData['description'] = l$description;
    final l$gender = gender;
    resultData['gender'] = l$gender;
    final l$language = language;
    resultData['language'] = l$language;
    final l$dateOfBirth = dateOfBirth;
    resultData['dateOfBirth'] = l$dateOfBirth?.toJson();
    final l$dateOfDeath = dateOfDeath;
    resultData['dateOfDeath'] = l$dateOfDeath?.toJson();
    final l$age = age;
    resultData['age'] = l$age;
    final l$yearsActive = yearsActive;
    resultData['yearsActive'] = l$yearsActive?.map((e) => e).toList();
    final l$homeTown = homeTown;
    resultData['homeTown'] = l$homeTown;
    final l$bloodType = bloodType;
    resultData['bloodType'] = l$bloodType;
    final l$isFavourite = isFavourite;
    resultData['isFavourite'] = l$isFavourite;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    resultData['isFavouriteBlocked'] = l$isFavouriteBlocked;
    final l$characterMedia = characterMedia;
    resultData['characterMedia'] = l$characterMedia?.toJson();
    final l$staffMedia = staffMedia;
    resultData['staffMedia'] = l$staffMedia?.toJson();
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$$__typename = $__typename;
    final l$description = description;
    final l$gender = gender;
    final l$language = language;
    final l$dateOfBirth = dateOfBirth;
    final l$dateOfDeath = dateOfDeath;
    final l$age = age;
    final l$yearsActive = yearsActive;
    final l$homeTown = homeTown;
    final l$bloodType = bloodType;
    final l$isFavourite = isFavourite;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    final l$characterMedia = characterMedia;
    final l$staffMedia = staffMedia;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$$__typename,
      l$description,
      l$gender,
      l$language,
      l$dateOfBirth,
      l$dateOfDeath,
      l$age,
      l$yearsActive == null
          ? null
          : Object.hashAll(l$yearsActive.map((v) => v)),
      l$homeTown,
      l$bloodType,
      l$isFavourite,
      l$isFavouriteBlocked,
      l$characterMedia,
      l$staffMedia,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Staff$Staff || runtimeType != other.runtimeType) {
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
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$language = language;
    final lOther$language = other.language;
    if (l$language != lOther$language) {
      return false;
    }
    final l$dateOfBirth = dateOfBirth;
    final lOther$dateOfBirth = other.dateOfBirth;
    if (l$dateOfBirth != lOther$dateOfBirth) {
      return false;
    }
    final l$dateOfDeath = dateOfDeath;
    final lOther$dateOfDeath = other.dateOfDeath;
    if (l$dateOfDeath != lOther$dateOfDeath) {
      return false;
    }
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) {
      return false;
    }
    final l$yearsActive = yearsActive;
    final lOther$yearsActive = other.yearsActive;
    if (l$yearsActive != null && lOther$yearsActive != null) {
      if (l$yearsActive.length != lOther$yearsActive.length) {
        return false;
      }
      for (int i = 0; i < l$yearsActive.length; i++) {
        final l$yearsActive$entry = l$yearsActive[i];
        final lOther$yearsActive$entry = lOther$yearsActive[i];
        if (l$yearsActive$entry != lOther$yearsActive$entry) {
          return false;
        }
      }
    } else if (l$yearsActive != lOther$yearsActive) {
      return false;
    }
    final l$homeTown = homeTown;
    final lOther$homeTown = other.homeTown;
    if (l$homeTown != lOther$homeTown) {
      return false;
    }
    final l$bloodType = bloodType;
    final lOther$bloodType = other.bloodType;
    if (l$bloodType != lOther$bloodType) {
      return false;
    }
    final l$isFavourite = isFavourite;
    final lOther$isFavourite = other.isFavourite;
    if (l$isFavourite != lOther$isFavourite) {
      return false;
    }
    final l$isFavouriteBlocked = isFavouriteBlocked;
    final lOther$isFavouriteBlocked = other.isFavouriteBlocked;
    if (l$isFavouriteBlocked != lOther$isFavouriteBlocked) {
      return false;
    }
    final l$characterMedia = characterMedia;
    final lOther$characterMedia = other.characterMedia;
    if (l$characterMedia != lOther$characterMedia) {
      return false;
    }
    final l$staffMedia = staffMedia;
    final lOther$staffMedia = other.staffMedia;
    if (l$staffMedia != lOther$staffMedia) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Staff$Staff on Query$Staff$Staff {
  CopyWith$Query$Staff$Staff<Query$Staff$Staff> get copyWith =>
      CopyWith$Query$Staff$Staff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Staff$Staff<TRes> {
  factory CopyWith$Query$Staff$Staff(
    Query$Staff$Staff instance,
    TRes Function(Query$Staff$Staff) then,
  ) = _CopyWithImpl$Query$Staff$Staff;

  factory CopyWith$Query$Staff$Staff.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff;

  TRes call({
    int? id,
    Query$Staff$Staff$name? name,
    Query$Staff$Staff$image? image,
    String? $__typename,
    String? description,
    String? gender,
    String? language,
    Fragment$FuzzyDate? dateOfBirth,
    Fragment$FuzzyDate? dateOfDeath,
    int? age,
    List<int?>? yearsActive,
    String? homeTown,
    String? bloodType,
    bool? isFavourite,
    bool? isFavouriteBlocked,
    Query$Staff$Staff$characterMedia? characterMedia,
    Query$Staff$Staff$staffMedia? staffMedia,
  });
  CopyWith$Query$Staff$Staff$name<TRes> get name;
  CopyWith$Query$Staff$Staff$image<TRes> get image;
  CopyWith$Fragment$FuzzyDate<TRes> get dateOfBirth;
  CopyWith$Fragment$FuzzyDate<TRes> get dateOfDeath;
  CopyWith$Query$Staff$Staff$characterMedia<TRes> get characterMedia;
  CopyWith$Query$Staff$Staff$staffMedia<TRes> get staffMedia;
}

class _CopyWithImpl$Query$Staff$Staff<TRes>
    implements CopyWith$Query$Staff$Staff<TRes> {
  _CopyWithImpl$Query$Staff$Staff(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff _instance;

  final TRes Function(Query$Staff$Staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
    Object? description = _undefined,
    Object? gender = _undefined,
    Object? language = _undefined,
    Object? dateOfBirth = _undefined,
    Object? dateOfDeath = _undefined,
    Object? age = _undefined,
    Object? yearsActive = _undefined,
    Object? homeTown = _undefined,
    Object? bloodType = _undefined,
    Object? isFavourite = _undefined,
    Object? isFavouriteBlocked = _undefined,
    Object? characterMedia = _undefined,
    Object? staffMedia = _undefined,
  }) =>
      _then(Query$Staff$Staff(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as Query$Staff$Staff$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Query$Staff$Staff$image?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        gender: gender == _undefined ? _instance.gender : (gender as String?),
        language:
            language == _undefined ? _instance.language : (language as String?),
        dateOfBirth: dateOfBirth == _undefined
            ? _instance.dateOfBirth
            : (dateOfBirth as Fragment$FuzzyDate?),
        dateOfDeath: dateOfDeath == _undefined
            ? _instance.dateOfDeath
            : (dateOfDeath as Fragment$FuzzyDate?),
        age: age == _undefined ? _instance.age : (age as int?),
        yearsActive: yearsActive == _undefined
            ? _instance.yearsActive
            : (yearsActive as List<int?>?),
        homeTown:
            homeTown == _undefined ? _instance.homeTown : (homeTown as String?),
        bloodType: bloodType == _undefined
            ? _instance.bloodType
            : (bloodType as String?),
        isFavourite: isFavourite == _undefined || isFavourite == null
            ? _instance.isFavourite
            : (isFavourite as bool),
        isFavouriteBlocked:
            isFavouriteBlocked == _undefined || isFavouriteBlocked == null
                ? _instance.isFavouriteBlocked
                : (isFavouriteBlocked as bool),
        characterMedia: characterMedia == _undefined
            ? _instance.characterMedia
            : (characterMedia as Query$Staff$Staff$characterMedia?),
        staffMedia: staffMedia == _undefined
            ? _instance.staffMedia
            : (staffMedia as Query$Staff$Staff$staffMedia?),
      ));

  @override
  CopyWith$Query$Staff$Staff$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$Staff$Staff$name.stub(_then(_instance))
        : CopyWith$Query$Staff$Staff$name(local$name, (e) => call(name: e));
  }

  @override
  CopyWith$Query$Staff$Staff$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$Staff$Staff$image.stub(_then(_instance))
        : CopyWith$Query$Staff$Staff$image(local$image, (e) => call(image: e));
  }

  @override
  CopyWith$Fragment$FuzzyDate<TRes> get dateOfBirth {
    final local$dateOfBirth = _instance.dateOfBirth;
    return local$dateOfBirth == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$dateOfBirth, (e) => call(dateOfBirth: e));
  }

  @override
  CopyWith$Fragment$FuzzyDate<TRes> get dateOfDeath {
    final local$dateOfDeath = _instance.dateOfDeath;
    return local$dateOfDeath == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$dateOfDeath, (e) => call(dateOfDeath: e));
  }

  @override
  CopyWith$Query$Staff$Staff$characterMedia<TRes> get characterMedia {
    final local$characterMedia = _instance.characterMedia;
    return local$characterMedia == null
        ? CopyWith$Query$Staff$Staff$characterMedia.stub(_then(_instance))
        : CopyWith$Query$Staff$Staff$characterMedia(
            local$characterMedia, (e) => call(characterMedia: e));
  }

  @override
  CopyWith$Query$Staff$Staff$staffMedia<TRes> get staffMedia {
    final local$staffMedia = _instance.staffMedia;
    return local$staffMedia == null
        ? CopyWith$Query$Staff$Staff$staffMedia.stub(_then(_instance))
        : CopyWith$Query$Staff$Staff$staffMedia(
            local$staffMedia, (e) => call(staffMedia: e));
  }
}

class _CopyWithStubImpl$Query$Staff$Staff<TRes>
    implements CopyWith$Query$Staff$Staff<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    Query$Staff$Staff$name? name,
    Query$Staff$Staff$image? image,
    String? $__typename,
    String? description,
    String? gender,
    String? language,
    Fragment$FuzzyDate? dateOfBirth,
    Fragment$FuzzyDate? dateOfDeath,
    int? age,
    List<int?>? yearsActive,
    String? homeTown,
    String? bloodType,
    bool? isFavourite,
    bool? isFavouriteBlocked,
    Query$Staff$Staff$characterMedia? characterMedia,
    Query$Staff$Staff$staffMedia? staffMedia,
  }) =>
      _res;

  @override
  CopyWith$Query$Staff$Staff$name<TRes> get name =>
      CopyWith$Query$Staff$Staff$name.stub(_res);

  @override
  CopyWith$Query$Staff$Staff$image<TRes> get image =>
      CopyWith$Query$Staff$Staff$image.stub(_res);

  @override
  CopyWith$Fragment$FuzzyDate<TRes> get dateOfBirth =>
      CopyWith$Fragment$FuzzyDate.stub(_res);

  @override
  CopyWith$Fragment$FuzzyDate<TRes> get dateOfDeath =>
      CopyWith$Fragment$FuzzyDate.stub(_res);

  @override
  CopyWith$Query$Staff$Staff$characterMedia<TRes> get characterMedia =>
      CopyWith$Query$Staff$Staff$characterMedia.stub(_res);

  @override
  CopyWith$Query$Staff$Staff$staffMedia<TRes> get staffMedia =>
      CopyWith$Query$Staff$Staff$staffMedia.stub(_res);
}

class Query$Staff$Staff$name implements Fragment$StaffFragment$name {
  Query$Staff$Staff$name({
    this.userPreferred,
    this.$__typename = 'StaffName',
  });

  factory Query$Staff$Staff$name.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$name(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  @override
  final String? userPreferred;

  @override
  final String $__typename;

  @override
  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Query$Staff$Staff$name ||
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

extension UtilityExtension$Query$Staff$Staff$name on Query$Staff$Staff$name {
  CopyWith$Query$Staff$Staff$name<Query$Staff$Staff$name> get copyWith =>
      CopyWith$Query$Staff$Staff$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Staff$Staff$name<TRes> {
  factory CopyWith$Query$Staff$Staff$name(
    Query$Staff$Staff$name instance,
    TRes Function(Query$Staff$Staff$name) then,
  ) = _CopyWithImpl$Query$Staff$Staff$name;

  factory CopyWith$Query$Staff$Staff$name.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Staff$Staff$name<TRes>
    implements CopyWith$Query$Staff$Staff$name<TRes> {
  _CopyWithImpl$Query$Staff$Staff$name(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$name _instance;

  final TRes Function(Query$Staff$Staff$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Staff$Staff$name<TRes>
    implements CopyWith$Query$Staff$Staff$name<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$name(this._res);

  final TRes _res;

  @override
  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Staff$Staff$image implements Fragment$StaffFragment$image {
  Query$Staff$Staff$image({
    this.large,
    this.$__typename = 'StaffImage',
  });

  factory Query$Staff$Staff$image.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$image(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  @override
  final String? large;

  @override
  final String $__typename;

  @override
  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$large = large;
    resultData['large'] = l$large;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Query$Staff$Staff$image ||
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

extension UtilityExtension$Query$Staff$Staff$image on Query$Staff$Staff$image {
  CopyWith$Query$Staff$Staff$image<Query$Staff$Staff$image> get copyWith =>
      CopyWith$Query$Staff$Staff$image(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Staff$Staff$image<TRes> {
  factory CopyWith$Query$Staff$Staff$image(
    Query$Staff$Staff$image instance,
    TRes Function(Query$Staff$Staff$image) then,
  ) = _CopyWithImpl$Query$Staff$Staff$image;

  factory CopyWith$Query$Staff$Staff$image.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Staff$Staff$image<TRes>
    implements CopyWith$Query$Staff$Staff$image<TRes> {
  _CopyWithImpl$Query$Staff$Staff$image(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$image _instance;

  final TRes Function(Query$Staff$Staff$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Staff$Staff$image<TRes>
    implements CopyWith$Query$Staff$Staff$image<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$image(this._res);

  final TRes _res;

  @override
  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$Staff$Staff$characterMedia {
  Query$Staff$Staff$characterMedia({
    this.pageInfo,
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$Staff$Staff$characterMedia.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$characterMedia(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Staff$Staff$characterMedia$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$Staff$Staff$characterMedia$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$edges = edges;
    resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Staff$Staff$characterMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$Staff$Staff$characterMedia
    on Query$Staff$Staff$characterMedia {
  CopyWith$Query$Staff$Staff$characterMedia<Query$Staff$Staff$characterMedia>
      get copyWith => CopyWith$Query$Staff$Staff$characterMedia(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$characterMedia<TRes> {
  factory CopyWith$Query$Staff$Staff$characterMedia(
    Query$Staff$Staff$characterMedia instance,
    TRes Function(Query$Staff$Staff$characterMedia) then,
  ) = _CopyWithImpl$Query$Staff$Staff$characterMedia;

  factory CopyWith$Query$Staff$Staff$characterMedia.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$characterMedia;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$Staff$Staff$characterMedia$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$Staff$Staff$characterMedia$edges?>? Function(
              Iterable<
                  CopyWith$Query$Staff$Staff$characterMedia$edges<
                      Query$Staff$Staff$characterMedia$edges>?>?)
          fn);
}

class _CopyWithImpl$Query$Staff$Staff$characterMedia<TRes>
    implements CopyWith$Query$Staff$Staff$characterMedia<TRes> {
  _CopyWithImpl$Query$Staff$Staff$characterMedia(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$characterMedia _instance;

  final TRes Function(Query$Staff$Staff$characterMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$characterMedia(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$Staff$Staff$characterMedia$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Fragment$PageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Fragment$PageInfo.stub(_then(_instance))
        : CopyWith$Fragment$PageInfo(local$pageInfo, (e) => call(pageInfo: e));
  }

  @override
  TRes edges(
          Iterable<Query$Staff$Staff$characterMedia$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Staff$Staff$characterMedia$edges<
                          Query$Staff$Staff$characterMedia$edges>?>?)
              fn) =>
      call(
          edges: fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Staff$Staff$characterMedia$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Staff$Staff$characterMedia<TRes>
    implements CopyWith$Query$Staff$Staff$characterMedia<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$characterMedia(this._res);

  final TRes _res;

  @override
  call({
    Fragment$PageInfo? pageInfo,
    List<Query$Staff$Staff$characterMedia$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  @override
  edges(fn) => _res;
}

class Query$Staff$Staff$characterMedia$edges {
  Query$Staff$Staff$characterMedia$edges({
    this.node,
    this.characters,
    this.$__typename = 'MediaEdge',
  });

  factory Query$Staff$Staff$characterMedia$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$characterMedia$edges(
      node: l$node == null
          ? null
          : Query$Staff$Staff$characterMedia$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      characters: (l$characters as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$CharacterFragment.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Staff$Staff$characterMedia$edges$node? node;

  final List<Fragment$CharacterFragment?>? characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$node = node;
    resultData['node'] = l$node?.toJson();
    final l$characters = characters;
    resultData['characters'] = l$characters?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$characters == null ? null : Object.hashAll(l$characters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Staff$Staff$characterMedia$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != null && lOther$characters != null) {
      if (l$characters.length != lOther$characters.length) {
        return false;
      }
      for (int i = 0; i < l$characters.length; i++) {
        final l$characters$entry = l$characters[i];
        final lOther$characters$entry = lOther$characters[i];
        if (l$characters$entry != lOther$characters$entry) {
          return false;
        }
      }
    } else if (l$characters != lOther$characters) {
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

extension UtilityExtension$Query$Staff$Staff$characterMedia$edges
    on Query$Staff$Staff$characterMedia$edges {
  CopyWith$Query$Staff$Staff$characterMedia$edges<
          Query$Staff$Staff$characterMedia$edges>
      get copyWith => CopyWith$Query$Staff$Staff$characterMedia$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$characterMedia$edges<TRes> {
  factory CopyWith$Query$Staff$Staff$characterMedia$edges(
    Query$Staff$Staff$characterMedia$edges instance,
    TRes Function(Query$Staff$Staff$characterMedia$edges) then,
  ) = _CopyWithImpl$Query$Staff$Staff$characterMedia$edges;

  factory CopyWith$Query$Staff$Staff$characterMedia$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges;

  TRes call({
    Query$Staff$Staff$characterMedia$edges$node? node,
    List<Fragment$CharacterFragment?>? characters,
    String? $__typename,
  });
  CopyWith$Query$Staff$Staff$characterMedia$edges$node<TRes> get node;
  TRes characters(
      Iterable<Fragment$CharacterFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$CharacterFragment<
                      Fragment$CharacterFragment>?>?)
          fn);
}

class _CopyWithImpl$Query$Staff$Staff$characterMedia$edges<TRes>
    implements CopyWith$Query$Staff$Staff$characterMedia$edges<TRes> {
  _CopyWithImpl$Query$Staff$Staff$characterMedia$edges(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$characterMedia$edges _instance;

  final TRes Function(Query$Staff$Staff$characterMedia$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? node = _undefined,
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$characterMedia$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$Staff$Staff$characterMedia$edges$node?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters as List<Fragment$CharacterFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$Staff$Staff$characterMedia$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$Staff$Staff$characterMedia$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$Staff$Staff$characterMedia$edges$node(
            local$node, (e) => call(node: e));
  }

  @override
  TRes characters(
          Iterable<Fragment$CharacterFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$CharacterFragment<
                          Fragment$CharacterFragment>?>?)
              fn) =>
      call(
          characters: fn(_instance.characters?.map((e) => e == null
              ? null
              : CopyWith$Fragment$CharacterFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges<TRes>
    implements CopyWith$Query$Staff$Staff$characterMedia$edges<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges(this._res);

  final TRes _res;

  @override
  call({
    Query$Staff$Staff$characterMedia$edges$node? node,
    List<Fragment$CharacterFragment?>? characters,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$Staff$Staff$characterMedia$edges$node<TRes> get node =>
      CopyWith$Query$Staff$Staff$characterMedia$edges$node.stub(_res);

  @override
  characters(fn) => _res;
}

class Query$Staff$Staff$characterMedia$edges$node
    implements Fragment$MediaFragment {
  Query$Staff$Staff$characterMedia$edges$node({
    required this.id,
    this.type,
    this.isAdult,
    this.genres,
    this.format,
    this.description,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
    this.startDate,
  });

  factory Query$Staff$Staff$characterMedia$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$isAdult = json['isAdult'];
    final l$genres = json['genres'];
    final l$format = json['format'];
    final l$description = json['description'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    final l$startDate = json['startDate'];
    return Query$Staff$Staff$characterMedia$edges$node(
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
          : Query$Staff$Staff$characterMedia$edges$node$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Query$Staff$Staff$characterMedia$edges$node$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      startDate: l$startDate == null
          ? null
          : Query$Staff$Staff$characterMedia$edges$node$startDate.fromJson(
              (l$startDate as Map<String, dynamic>)),
    );
  }

  @override
  final int id;

  @override
  final Enum$MediaType? type;

  @override
  final bool? isAdult;

  @override
  final List<String?>? genres;

  @override
  final Enum$MediaFormat? format;

  @override
  final String? description;

  @override
  final Query$Staff$Staff$characterMedia$edges$node$title? title;

  @override
  final Query$Staff$Staff$characterMedia$edges$node$coverImage? coverImage;

  @override
  final String $__typename;

  final Query$Staff$Staff$characterMedia$edges$node$startDate? startDate;

  @override
  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$type = type;
    resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$isAdult = isAdult;
    resultData['isAdult'] = l$isAdult;
    final l$genres = genres;
    resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$format = format;
    resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$description = description;
    resultData['description'] = l$description;
    final l$title = title;
    resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    final l$startDate = startDate;
    resultData['startDate'] = l$startDate?.toJson();
    return resultData;
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
      l$startDate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Staff$Staff$characterMedia$edges$node ||
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
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Staff$Staff$characterMedia$edges$node
    on Query$Staff$Staff$characterMedia$edges$node {
  CopyWith$Query$Staff$Staff$characterMedia$edges$node<
          Query$Staff$Staff$characterMedia$edges$node>
      get copyWith => CopyWith$Query$Staff$Staff$characterMedia$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$characterMedia$edges$node<TRes> {
  factory CopyWith$Query$Staff$Staff$characterMedia$edges$node(
    Query$Staff$Staff$characterMedia$edges$node instance,
    TRes Function(Query$Staff$Staff$characterMedia$edges$node) then,
  ) = _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node;

  factory CopyWith$Query$Staff$Staff$characterMedia$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node;

  TRes call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    Enum$MediaFormat? format,
    String? description,
    Query$Staff$Staff$characterMedia$edges$node$title? title,
    Query$Staff$Staff$characterMedia$edges$node$coverImage? coverImage,
    String? $__typename,
    Query$Staff$Staff$characterMedia$edges$node$startDate? startDate,
  });
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$title<TRes> get title;
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage<TRes>
      get coverImage;
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate<TRes>
      get startDate;
}

class _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node<TRes>
    implements CopyWith$Query$Staff$Staff$characterMedia$edges$node<TRes> {
  _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$characterMedia$edges$node _instance;

  final TRes Function(Query$Staff$Staff$characterMedia$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
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
    Object? startDate = _undefined,
  }) =>
      _then(Query$Staff$Staff$characterMedia$edges$node(
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
            : (title as Query$Staff$Staff$characterMedia$edges$node$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as Query$Staff$Staff$characterMedia$edges$node$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        startDate: startDate == _undefined
            ? _instance.startDate
            : (startDate
                as Query$Staff$Staff$characterMedia$edges$node$startDate?),
      ));

  @override
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$Staff$Staff$characterMedia$edges$node$title.stub(
            _then(_instance))
        : CopyWith$Query$Staff$Staff$characterMedia$edges$node$title(
            local$title, (e) => call(title: e));
  }

  @override
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage<TRes>
      get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage.stub(
            _then(_instance))
        : CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  @override
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate<TRes>
      get startDate {
    final local$startDate = _instance.startDate;
    return local$startDate == null
        ? CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate.stub(
            _then(_instance))
        : CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate(
            local$startDate, (e) => call(startDate: e));
  }
}

class _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node<TRes>
    implements CopyWith$Query$Staff$Staff$characterMedia$edges$node<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    Enum$MediaFormat? format,
    String? description,
    Query$Staff$Staff$characterMedia$edges$node$title? title,
    Query$Staff$Staff$characterMedia$edges$node$coverImage? coverImage,
    String? $__typename,
    Query$Staff$Staff$characterMedia$edges$node$startDate? startDate,
  }) =>
      _res;

  @override
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$title<TRes> get title =>
      CopyWith$Query$Staff$Staff$characterMedia$edges$node$title.stub(_res);

  @override
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage<TRes>
      get coverImage =>
          CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage.stub(
              _res);

  @override
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate<TRes>
      get startDate =>
          CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate.stub(
              _res);
}

class Query$Staff$Staff$characterMedia$edges$node$title
    implements Fragment$MediaFragment$title {
  Query$Staff$Staff$characterMedia$edges$node$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$Staff$Staff$characterMedia$edges$node$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$characterMedia$edges$node$title(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  @override
  final String? userPreferred;

  @override
  final String $__typename;

  @override
  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Query$Staff$Staff$characterMedia$edges$node$title ||
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

extension UtilityExtension$Query$Staff$Staff$characterMedia$edges$node$title
    on Query$Staff$Staff$characterMedia$edges$node$title {
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$title<
          Query$Staff$Staff$characterMedia$edges$node$title>
      get copyWith =>
          CopyWith$Query$Staff$Staff$characterMedia$edges$node$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$characterMedia$edges$node$title<
    TRes> {
  factory CopyWith$Query$Staff$Staff$characterMedia$edges$node$title(
    Query$Staff$Staff$characterMedia$edges$node$title instance,
    TRes Function(Query$Staff$Staff$characterMedia$edges$node$title) then,
  ) = _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node$title;

  factory CopyWith$Query$Staff$Staff$characterMedia$edges$node$title.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node$title<TRes>
    implements
        CopyWith$Query$Staff$Staff$characterMedia$edges$node$title<TRes> {
  _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node$title(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$characterMedia$edges$node$title _instance;

  final TRes Function(Query$Staff$Staff$characterMedia$edges$node$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$characterMedia$edges$node$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node$title<TRes>
    implements
        CopyWith$Query$Staff$Staff$characterMedia$edges$node$title<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node$title(
      this._res);

  final TRes _res;

  @override
  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Staff$Staff$characterMedia$edges$node$coverImage
    implements Fragment$MediaFragment$coverImage {
  Query$Staff$Staff$characterMedia$edges$node$coverImage({
    this.extraLarge,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$Staff$Staff$characterMedia$edges$node$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$characterMedia$edges$node$coverImage(
      extraLarge: (l$extraLarge as String?),
      $__typename: (l$$__typename as String),
    );
  }

  @override
  final String? extraLarge;

  @override
  final String $__typename;

  @override
  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$extraLarge = extraLarge;
    resultData['extraLarge'] = l$extraLarge;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Query$Staff$Staff$characterMedia$edges$node$coverImage ||
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

extension UtilityExtension$Query$Staff$Staff$characterMedia$edges$node$coverImage
    on Query$Staff$Staff$characterMedia$edges$node$coverImage {
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage<
          Query$Staff$Staff$characterMedia$edges$node$coverImage>
      get copyWith =>
          CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage<
    TRes> {
  factory CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage(
    Query$Staff$Staff$characterMedia$edges$node$coverImage instance,
    TRes Function(Query$Staff$Staff$characterMedia$edges$node$coverImage) then,
  ) = _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node$coverImage;

  factory CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node$coverImage;

  TRes call({
    String? extraLarge,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node$coverImage<TRes>
    implements
        CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage<TRes> {
  _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node$coverImage(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$characterMedia$edges$node$coverImage _instance;

  final TRes Function(Query$Staff$Staff$characterMedia$edges$node$coverImage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? extraLarge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$characterMedia$edges$node$coverImage(
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node$coverImage<
        TRes>
    implements
        CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node$coverImage(
      this._res);

  final TRes _res;

  @override
  call({
    String? extraLarge,
    String? $__typename,
  }) =>
      _res;
}

class Query$Staff$Staff$characterMedia$edges$node$startDate {
  Query$Staff$Staff$characterMedia$edges$node$startDate({
    this.year,
    this.$__typename = 'FuzzyDate',
  });

  factory Query$Staff$Staff$characterMedia$edges$node$startDate.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$characterMedia$edges$node$startDate(
      year: (l$year as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? year;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$year = year;
    resultData['year'] = l$year;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$year = year;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$year,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Staff$Staff$characterMedia$edges$node$startDate ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Staff$Staff$characterMedia$edges$node$startDate
    on Query$Staff$Staff$characterMedia$edges$node$startDate {
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate<
          Query$Staff$Staff$characterMedia$edges$node$startDate>
      get copyWith =>
          CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate<
    TRes> {
  factory CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate(
    Query$Staff$Staff$characterMedia$edges$node$startDate instance,
    TRes Function(Query$Staff$Staff$characterMedia$edges$node$startDate) then,
  ) = _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node$startDate;

  factory CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node$startDate;

  TRes call({
    int? year,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node$startDate<TRes>
    implements
        CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate<TRes> {
  _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node$startDate(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$characterMedia$edges$node$startDate _instance;

  final TRes Function(Query$Staff$Staff$characterMedia$edges$node$startDate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? year = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$characterMedia$edges$node$startDate(
        year: year == _undefined ? _instance.year : (year as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node$startDate<
        TRes>
    implements
        CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node$startDate(
      this._res);

  final TRes _res;

  @override
  call({
    int? year,
    String? $__typename,
  }) =>
      _res;
}

class Query$Staff$Staff$staffMedia {
  Query$Staff$Staff$staffMedia({
    this.pageInfo,
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$Staff$Staff$staffMedia.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$staffMedia(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Staff$Staff$staffMedia$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$Staff$Staff$staffMedia$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$edges = edges;
    resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Staff$Staff$staffMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$Staff$Staff$staffMedia
    on Query$Staff$Staff$staffMedia {
  CopyWith$Query$Staff$Staff$staffMedia<Query$Staff$Staff$staffMedia>
      get copyWith => CopyWith$Query$Staff$Staff$staffMedia(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$staffMedia<TRes> {
  factory CopyWith$Query$Staff$Staff$staffMedia(
    Query$Staff$Staff$staffMedia instance,
    TRes Function(Query$Staff$Staff$staffMedia) then,
  ) = _CopyWithImpl$Query$Staff$Staff$staffMedia;

  factory CopyWith$Query$Staff$Staff$staffMedia.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$staffMedia;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$Staff$Staff$staffMedia$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$Staff$Staff$staffMedia$edges?>? Function(
              Iterable<
                  CopyWith$Query$Staff$Staff$staffMedia$edges<
                      Query$Staff$Staff$staffMedia$edges>?>?)
          fn);
}

class _CopyWithImpl$Query$Staff$Staff$staffMedia<TRes>
    implements CopyWith$Query$Staff$Staff$staffMedia<TRes> {
  _CopyWithImpl$Query$Staff$Staff$staffMedia(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$staffMedia _instance;

  final TRes Function(Query$Staff$Staff$staffMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$staffMedia(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$Staff$Staff$staffMedia$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Fragment$PageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Fragment$PageInfo.stub(_then(_instance))
        : CopyWith$Fragment$PageInfo(local$pageInfo, (e) => call(pageInfo: e));
  }

  @override
  TRes edges(
          Iterable<Query$Staff$Staff$staffMedia$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Staff$Staff$staffMedia$edges<
                          Query$Staff$Staff$staffMedia$edges>?>?)
              fn) =>
      call(
          edges: fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Staff$Staff$staffMedia$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Staff$Staff$staffMedia<TRes>
    implements CopyWith$Query$Staff$Staff$staffMedia<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$staffMedia(this._res);

  final TRes _res;

  @override
  call({
    Fragment$PageInfo? pageInfo,
    List<Query$Staff$Staff$staffMedia$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  @override
  edges(fn) => _res;
}

class Query$Staff$Staff$staffMedia$edges {
  Query$Staff$Staff$staffMedia$edges({
    this.node,
    this.staffRole,
    this.$__typename = 'MediaEdge',
  });

  factory Query$Staff$Staff$staffMedia$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$staffRole = json['staffRole'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$staffMedia$edges(
      node: l$node == null
          ? null
          : Fragment$MediaFragment.fromJson((l$node as Map<String, dynamic>)),
      staffRole: (l$staffRole as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MediaFragment? node;

  final String? staffRole;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$node = node;
    resultData['node'] = l$node?.toJson();
    final l$staffRole = staffRole;
    resultData['staffRole'] = l$staffRole;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$staffRole = staffRole;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$staffRole,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Staff$Staff$staffMedia$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$staffRole = staffRole;
    final lOther$staffRole = other.staffRole;
    if (l$staffRole != lOther$staffRole) {
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

extension UtilityExtension$Query$Staff$Staff$staffMedia$edges
    on Query$Staff$Staff$staffMedia$edges {
  CopyWith$Query$Staff$Staff$staffMedia$edges<
          Query$Staff$Staff$staffMedia$edges>
      get copyWith => CopyWith$Query$Staff$Staff$staffMedia$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$staffMedia$edges<TRes> {
  factory CopyWith$Query$Staff$Staff$staffMedia$edges(
    Query$Staff$Staff$staffMedia$edges instance,
    TRes Function(Query$Staff$Staff$staffMedia$edges) then,
  ) = _CopyWithImpl$Query$Staff$Staff$staffMedia$edges;

  factory CopyWith$Query$Staff$Staff$staffMedia$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$staffMedia$edges;

  TRes call({
    Fragment$MediaFragment? node,
    String? staffRole,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFragment<TRes> get node;
}

class _CopyWithImpl$Query$Staff$Staff$staffMedia$edges<TRes>
    implements CopyWith$Query$Staff$Staff$staffMedia$edges<TRes> {
  _CopyWithImpl$Query$Staff$Staff$staffMedia$edges(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$staffMedia$edges _instance;

  final TRes Function(Query$Staff$Staff$staffMedia$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? node = _undefined,
    Object? staffRole = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$staffMedia$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$MediaFragment?),
        staffRole: staffRole == _undefined
            ? _instance.staffRole
            : (staffRole as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Fragment$MediaFragment<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Staff$Staff$staffMedia$edges<TRes>
    implements CopyWith$Query$Staff$Staff$staffMedia$edges<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$staffMedia$edges(this._res);

  final TRes _res;

  @override
  call({
    Fragment$MediaFragment? node,
    String? staffRole,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Fragment$MediaFragment<TRes> get node =>
      CopyWith$Fragment$MediaFragment.stub(_res);
}
