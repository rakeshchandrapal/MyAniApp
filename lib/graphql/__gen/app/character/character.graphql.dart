import '../../graphql/fragments/character.graphql.dart';
import '../../graphql/fragments/fuzzy_date.graphql.dart';
import '../../graphql/fragments/media.graphql.dart';
import '../../graphql/fragments/page_info.graphql.dart';
import '../../graphql/fragments/staff.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$Character {
  factory Variables$Query$Character({
    int? id,
    int? page,
    bool? onList,
  }) =>
      Variables$Query$Character._({
        if (id != null) r'id': id,
        if (page != null) r'page': page,
        if (onList != null) r'onList': onList,
      });

  Variables$Query$Character._(this._$data);

  factory Variables$Query$Character.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('onList')) {
      final l$onList = data['onList'];
      result$data['onList'] = (l$onList as bool?);
    }
    return Variables$Query$Character._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  int? get page => (_$data['page'] as int?);

  bool? get onList => (_$data['onList'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('onList')) {
      final l$onList = onList;
      result$data['onList'] = l$onList;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Character<Variables$Query$Character> get copyWith =>
      CopyWith$Variables$Query$Character(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Character) ||
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
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$page = page;
    final l$onList = onList;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('onList') ? l$onList : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Character<TRes> {
  factory CopyWith$Variables$Query$Character(
    Variables$Query$Character instance,
    TRes Function(Variables$Query$Character) then,
  ) = _CopyWithImpl$Variables$Query$Character;

  factory CopyWith$Variables$Query$Character.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Character;

  TRes call({
    int? id,
    int? page,
    bool? onList,
  });
}

class _CopyWithImpl$Variables$Query$Character<TRes>
    implements CopyWith$Variables$Query$Character<TRes> {
  _CopyWithImpl$Variables$Query$Character(
    this._instance,
    this._then,
  );

  final Variables$Query$Character _instance;

  final TRes Function(Variables$Query$Character) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? page = _undefined,
    Object? onList = _undefined,
  }) =>
      _then(Variables$Query$Character._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (page != _undefined) 'page': (page as int?),
        if (onList != _undefined) 'onList': (onList as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Character<TRes>
    implements CopyWith$Variables$Query$Character<TRes> {
  _CopyWithStubImpl$Variables$Query$Character(this._res);

  TRes _res;

  call({
    int? id,
    int? page,
    bool? onList,
  }) =>
      _res;
}

class Query$Character {
  Query$Character({
    this.Character,
    this.$__typename = 'Query',
  });

  factory Query$Character.fromJson(Map<String, dynamic> json) {
    final l$Character = json['Character'];
    final l$$__typename = json['__typename'];
    return Query$Character(
      Character: l$Character == null
          ? null
          : Query$Character$Character.fromJson(
              (l$Character as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Character$Character? Character;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Character = Character;
    _resultData['Character'] = l$Character?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Character = Character;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Character,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Character) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Character = Character;
    final lOther$Character = other.Character;
    if (l$Character != lOther$Character) {
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

extension UtilityExtension$Query$Character on Query$Character {
  CopyWith$Query$Character<Query$Character> get copyWith =>
      CopyWith$Query$Character(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Character<TRes> {
  factory CopyWith$Query$Character(
    Query$Character instance,
    TRes Function(Query$Character) then,
  ) = _CopyWithImpl$Query$Character;

  factory CopyWith$Query$Character.stub(TRes res) =
      _CopyWithStubImpl$Query$Character;

  TRes call({
    Query$Character$Character? Character,
    String? $__typename,
  });
  CopyWith$Query$Character$Character<TRes> get Character;
}

class _CopyWithImpl$Query$Character<TRes>
    implements CopyWith$Query$Character<TRes> {
  _CopyWithImpl$Query$Character(
    this._instance,
    this._then,
  );

  final Query$Character _instance;

  final TRes Function(Query$Character) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Character = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Character(
        Character: Character == _undefined
            ? _instance.Character
            : (Character as Query$Character$Character?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Character$Character<TRes> get Character {
    final local$Character = _instance.Character;
    return local$Character == null
        ? CopyWith$Query$Character$Character.stub(_then(_instance))
        : CopyWith$Query$Character$Character(
            local$Character, (e) => call(Character: e));
  }
}

class _CopyWithStubImpl$Query$Character<TRes>
    implements CopyWith$Query$Character<TRes> {
  _CopyWithStubImpl$Query$Character(this._res);

  TRes _res;

  call({
    Query$Character$Character? Character,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Character$Character<TRes> get Character =>
      CopyWith$Query$Character$Character.stub(_res);
}

const documentNodeQueryCharacter = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Character'),
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
        variable: VariableNode(name: NameNode(value: 'page')),
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
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Character'),
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
            name: NameNode(value: 'CharacterFragment'),
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
            name: NameNode(value: 'age'),
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
            name: NameNode(value: 'siteUrl'),
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
            name: NameNode(value: 'favourites'),
            alias: null,
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
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'POPULARITY_DESC'))
                ]),
              ),
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'onList'),
                value: VariableNode(name: NameNode(value: 'onList')),
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
                    name: NameNode(value: 'voiceActorRoles'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'sort'),
                        value: EnumValueNode(name: NameNode(value: 'LANGUAGE')),
                      )
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'roleNotes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'dubGroup'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'voiceActor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                            name: NameNode(value: 'StaffFragment'),
                            directives: [],
                          ),
                          FieldNode(
                            name: NameNode(value: 'languageV2'),
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
  fragmentDefinitionCharacterFragment,
  fragmentDefinitionFuzzyDate,
  fragmentDefinitionPageInfo,
  fragmentDefinitionStaffFragment,
  fragmentDefinitionMediaFragment,
]);

class Query$Character$Character implements Fragment$CharacterFragment {
  Query$Character$Character({
    required this.id,
    this.name,
    this.image,
    this.$__typename = 'Character',
    this.description,
    this.gender,
    this.age,
    this.bloodType,
    required this.isFavourite,
    this.siteUrl,
    required this.isFavouriteBlocked,
    this.favourites,
    this.dateOfBirth,
    this.media,
  });

  factory Query$Character$Character.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    final l$description = json['description'];
    final l$gender = json['gender'];
    final l$age = json['age'];
    final l$bloodType = json['bloodType'];
    final l$isFavourite = json['isFavourite'];
    final l$siteUrl = json['siteUrl'];
    final l$isFavouriteBlocked = json['isFavouriteBlocked'];
    final l$favourites = json['favourites'];
    final l$dateOfBirth = json['dateOfBirth'];
    final l$media = json['media'];
    return Query$Character$Character(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Query$Character$Character$name.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Query$Character$Character$image.fromJson(
              (l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      description: (l$description as String?),
      gender: (l$gender as String?),
      age: (l$age as String?),
      bloodType: (l$bloodType as String?),
      isFavourite: (l$isFavourite as bool),
      siteUrl: (l$siteUrl as String?),
      isFavouriteBlocked: (l$isFavouriteBlocked as bool),
      favourites: (l$favourites as int?),
      dateOfBirth: l$dateOfBirth == null
          ? null
          : Fragment$FuzzyDate.fromJson(
              (l$dateOfBirth as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : Query$Character$Character$media.fromJson(
              (l$media as Map<String, dynamic>)),
    );
  }

  final int id;

  final Query$Character$Character$name? name;

  final Query$Character$Character$image? image;

  final String $__typename;

  final String? description;

  final String? gender;

  final String? age;

  final String? bloodType;

  final bool isFavourite;

  final String? siteUrl;

  final bool isFavouriteBlocked;

  final int? favourites;

  final Fragment$FuzzyDate? dateOfBirth;

  final Query$Character$Character$media? media;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$age = age;
    _resultData['age'] = l$age;
    final l$bloodType = bloodType;
    _resultData['bloodType'] = l$bloodType;
    final l$isFavourite = isFavourite;
    _resultData['isFavourite'] = l$isFavourite;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    _resultData['isFavouriteBlocked'] = l$isFavouriteBlocked;
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites;
    final l$dateOfBirth = dateOfBirth;
    _resultData['dateOfBirth'] = l$dateOfBirth?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$$__typename = $__typename;
    final l$description = description;
    final l$gender = gender;
    final l$age = age;
    final l$bloodType = bloodType;
    final l$isFavourite = isFavourite;
    final l$siteUrl = siteUrl;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    final l$favourites = favourites;
    final l$dateOfBirth = dateOfBirth;
    final l$media = media;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$$__typename,
      l$description,
      l$gender,
      l$age,
      l$bloodType,
      l$isFavourite,
      l$siteUrl,
      l$isFavouriteBlocked,
      l$favourites,
      l$dateOfBirth,
      l$media,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Character$Character) ||
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
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) {
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
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$isFavouriteBlocked = isFavouriteBlocked;
    final lOther$isFavouriteBlocked = other.isFavouriteBlocked;
    if (l$isFavouriteBlocked != lOther$isFavouriteBlocked) {
      return false;
    }
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
      return false;
    }
    final l$dateOfBirth = dateOfBirth;
    final lOther$dateOfBirth = other.dateOfBirth;
    if (l$dateOfBirth != lOther$dateOfBirth) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Character$Character
    on Query$Character$Character {
  CopyWith$Query$Character$Character<Query$Character$Character> get copyWith =>
      CopyWith$Query$Character$Character(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Character$Character<TRes> {
  factory CopyWith$Query$Character$Character(
    Query$Character$Character instance,
    TRes Function(Query$Character$Character) then,
  ) = _CopyWithImpl$Query$Character$Character;

  factory CopyWith$Query$Character$Character.stub(TRes res) =
      _CopyWithStubImpl$Query$Character$Character;

  TRes call({
    int? id,
    Query$Character$Character$name? name,
    Query$Character$Character$image? image,
    String? $__typename,
    String? description,
    String? gender,
    String? age,
    String? bloodType,
    bool? isFavourite,
    String? siteUrl,
    bool? isFavouriteBlocked,
    int? favourites,
    Fragment$FuzzyDate? dateOfBirth,
    Query$Character$Character$media? media,
  });
  CopyWith$Query$Character$Character$name<TRes> get name;
  CopyWith$Query$Character$Character$image<TRes> get image;
  CopyWith$Fragment$FuzzyDate<TRes> get dateOfBirth;
  CopyWith$Query$Character$Character$media<TRes> get media;
}

class _CopyWithImpl$Query$Character$Character<TRes>
    implements CopyWith$Query$Character$Character<TRes> {
  _CopyWithImpl$Query$Character$Character(
    this._instance,
    this._then,
  );

  final Query$Character$Character _instance;

  final TRes Function(Query$Character$Character) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
    Object? description = _undefined,
    Object? gender = _undefined,
    Object? age = _undefined,
    Object? bloodType = _undefined,
    Object? isFavourite = _undefined,
    Object? siteUrl = _undefined,
    Object? isFavouriteBlocked = _undefined,
    Object? favourites = _undefined,
    Object? dateOfBirth = _undefined,
    Object? media = _undefined,
  }) =>
      _then(Query$Character$Character(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as Query$Character$Character$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Query$Character$Character$image?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        gender: gender == _undefined ? _instance.gender : (gender as String?),
        age: age == _undefined ? _instance.age : (age as String?),
        bloodType: bloodType == _undefined
            ? _instance.bloodType
            : (bloodType as String?),
        isFavourite: isFavourite == _undefined || isFavourite == null
            ? _instance.isFavourite
            : (isFavourite as bool),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        isFavouriteBlocked:
            isFavouriteBlocked == _undefined || isFavouriteBlocked == null
                ? _instance.isFavouriteBlocked
                : (isFavouriteBlocked as bool),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        dateOfBirth: dateOfBirth == _undefined
            ? _instance.dateOfBirth
            : (dateOfBirth as Fragment$FuzzyDate?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$Character$Character$media?),
      ));

  CopyWith$Query$Character$Character$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$Character$Character$name.stub(_then(_instance))
        : CopyWith$Query$Character$Character$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Query$Character$Character$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$Character$Character$image.stub(_then(_instance))
        : CopyWith$Query$Character$Character$image(
            local$image, (e) => call(image: e));
  }

  CopyWith$Fragment$FuzzyDate<TRes> get dateOfBirth {
    final local$dateOfBirth = _instance.dateOfBirth;
    return local$dateOfBirth == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$dateOfBirth, (e) => call(dateOfBirth: e));
  }

  CopyWith$Query$Character$Character$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$Character$Character$media.stub(_then(_instance))
        : CopyWith$Query$Character$Character$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$Character$Character<TRes>
    implements CopyWith$Query$Character$Character<TRes> {
  _CopyWithStubImpl$Query$Character$Character(this._res);

  TRes _res;

  call({
    int? id,
    Query$Character$Character$name? name,
    Query$Character$Character$image? image,
    String? $__typename,
    String? description,
    String? gender,
    String? age,
    String? bloodType,
    bool? isFavourite,
    String? siteUrl,
    bool? isFavouriteBlocked,
    int? favourites,
    Fragment$FuzzyDate? dateOfBirth,
    Query$Character$Character$media? media,
  }) =>
      _res;

  CopyWith$Query$Character$Character$name<TRes> get name =>
      CopyWith$Query$Character$Character$name.stub(_res);

  CopyWith$Query$Character$Character$image<TRes> get image =>
      CopyWith$Query$Character$Character$image.stub(_res);

  CopyWith$Fragment$FuzzyDate<TRes> get dateOfBirth =>
      CopyWith$Fragment$FuzzyDate.stub(_res);

  CopyWith$Query$Character$Character$media<TRes> get media =>
      CopyWith$Query$Character$Character$media.stub(_res);
}

class Query$Character$Character$name
    implements Fragment$CharacterFragment$name {
  Query$Character$Character$name({
    this.userPreferred,
    this.$__typename = 'CharacterName',
  });

  factory Query$Character$Character$name.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Character$Character$name(
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
    if (!(other is Query$Character$Character$name) ||
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

extension UtilityExtension$Query$Character$Character$name
    on Query$Character$Character$name {
  CopyWith$Query$Character$Character$name<Query$Character$Character$name>
      get copyWith => CopyWith$Query$Character$Character$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Character$Character$name<TRes> {
  factory CopyWith$Query$Character$Character$name(
    Query$Character$Character$name instance,
    TRes Function(Query$Character$Character$name) then,
  ) = _CopyWithImpl$Query$Character$Character$name;

  factory CopyWith$Query$Character$Character$name.stub(TRes res) =
      _CopyWithStubImpl$Query$Character$Character$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Character$Character$name<TRes>
    implements CopyWith$Query$Character$Character$name<TRes> {
  _CopyWithImpl$Query$Character$Character$name(
    this._instance,
    this._then,
  );

  final Query$Character$Character$name _instance;

  final TRes Function(Query$Character$Character$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Character$Character$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Character$Character$name<TRes>
    implements CopyWith$Query$Character$Character$name<TRes> {
  _CopyWithStubImpl$Query$Character$Character$name(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Character$Character$image
    implements Fragment$CharacterFragment$image {
  Query$Character$Character$image({
    this.large,
    this.$__typename = 'CharacterImage',
  });

  factory Query$Character$Character$image.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Character$Character$image(
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
    if (!(other is Query$Character$Character$image) ||
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

extension UtilityExtension$Query$Character$Character$image
    on Query$Character$Character$image {
  CopyWith$Query$Character$Character$image<Query$Character$Character$image>
      get copyWith => CopyWith$Query$Character$Character$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Character$Character$image<TRes> {
  factory CopyWith$Query$Character$Character$image(
    Query$Character$Character$image instance,
    TRes Function(Query$Character$Character$image) then,
  ) = _CopyWithImpl$Query$Character$Character$image;

  factory CopyWith$Query$Character$Character$image.stub(TRes res) =
      _CopyWithStubImpl$Query$Character$Character$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Character$Character$image<TRes>
    implements CopyWith$Query$Character$Character$image<TRes> {
  _CopyWithImpl$Query$Character$Character$image(
    this._instance,
    this._then,
  );

  final Query$Character$Character$image _instance;

  final TRes Function(Query$Character$Character$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Character$Character$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Character$Character$image<TRes>
    implements CopyWith$Query$Character$Character$image<TRes> {
  _CopyWithStubImpl$Query$Character$Character$image(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$Character$Character$media {
  Query$Character$Character$media({
    this.pageInfo,
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$Character$Character$media.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Character$Character$media(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Character$Character$media$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$Character$Character$media$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
    if (!(other is Query$Character$Character$media) ||
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

extension UtilityExtension$Query$Character$Character$media
    on Query$Character$Character$media {
  CopyWith$Query$Character$Character$media<Query$Character$Character$media>
      get copyWith => CopyWith$Query$Character$Character$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Character$Character$media<TRes> {
  factory CopyWith$Query$Character$Character$media(
    Query$Character$Character$media instance,
    TRes Function(Query$Character$Character$media) then,
  ) = _CopyWithImpl$Query$Character$Character$media;

  factory CopyWith$Query$Character$Character$media.stub(TRes res) =
      _CopyWithStubImpl$Query$Character$Character$media;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$Character$Character$media$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$Character$Character$media$edges?>? Function(
              Iterable<
                  CopyWith$Query$Character$Character$media$edges<
                      Query$Character$Character$media$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$Character$Character$media<TRes>
    implements CopyWith$Query$Character$Character$media<TRes> {
  _CopyWithImpl$Query$Character$Character$media(
    this._instance,
    this._then,
  );

  final Query$Character$Character$media _instance;

  final TRes Function(Query$Character$Character$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Character$Character$media(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$Character$Character$media$edges?>?),
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

  TRes edges(
          Iterable<Query$Character$Character$media$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Character$Character$media$edges<
                          Query$Character$Character$media$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Character$Character$media$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Character$Character$media<TRes>
    implements CopyWith$Query$Character$Character$media<TRes> {
  _CopyWithStubImpl$Query$Character$Character$media(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$Character$Character$media$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  edges(_fn) => _res;
}

class Query$Character$Character$media$edges {
  Query$Character$Character$media$edges({
    this.voiceActorRoles,
    this.node,
    this.$__typename = 'MediaEdge',
  });

  factory Query$Character$Character$media$edges.fromJson(
      Map<String, dynamic> json) {
    final l$voiceActorRoles = json['voiceActorRoles'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Character$Character$media$edges(
      voiceActorRoles: (l$voiceActorRoles as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Character$Character$media$edges$voiceActorRoles.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      node: l$node == null
          ? null
          : Fragment$MediaFragment.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Character$Character$media$edges$voiceActorRoles?>?
      voiceActorRoles;

  final Fragment$MediaFragment? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$voiceActorRoles = voiceActorRoles;
    _resultData['voiceActorRoles'] =
        l$voiceActorRoles?.map((e) => e?.toJson()).toList();
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$voiceActorRoles = voiceActorRoles;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$voiceActorRoles == null
          ? null
          : Object.hashAll(l$voiceActorRoles.map((v) => v)),
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Character$Character$media$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$voiceActorRoles = voiceActorRoles;
    final lOther$voiceActorRoles = other.voiceActorRoles;
    if (l$voiceActorRoles != null && lOther$voiceActorRoles != null) {
      if (l$voiceActorRoles.length != lOther$voiceActorRoles.length) {
        return false;
      }
      for (int i = 0; i < l$voiceActorRoles.length; i++) {
        final l$voiceActorRoles$entry = l$voiceActorRoles[i];
        final lOther$voiceActorRoles$entry = lOther$voiceActorRoles[i];
        if (l$voiceActorRoles$entry != lOther$voiceActorRoles$entry) {
          return false;
        }
      }
    } else if (l$voiceActorRoles != lOther$voiceActorRoles) {
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

extension UtilityExtension$Query$Character$Character$media$edges
    on Query$Character$Character$media$edges {
  CopyWith$Query$Character$Character$media$edges<
          Query$Character$Character$media$edges>
      get copyWith => CopyWith$Query$Character$Character$media$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Character$Character$media$edges<TRes> {
  factory CopyWith$Query$Character$Character$media$edges(
    Query$Character$Character$media$edges instance,
    TRes Function(Query$Character$Character$media$edges) then,
  ) = _CopyWithImpl$Query$Character$Character$media$edges;

  factory CopyWith$Query$Character$Character$media$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Character$Character$media$edges;

  TRes call({
    List<Query$Character$Character$media$edges$voiceActorRoles?>?
        voiceActorRoles,
    Fragment$MediaFragment? node,
    String? $__typename,
  });
  TRes voiceActorRoles(
      Iterable<Query$Character$Character$media$edges$voiceActorRoles?>? Function(
              Iterable<
                  CopyWith$Query$Character$Character$media$edges$voiceActorRoles<
                      Query$Character$Character$media$edges$voiceActorRoles>?>?)
          _fn);
  CopyWith$Fragment$MediaFragment<TRes> get node;
}

class _CopyWithImpl$Query$Character$Character$media$edges<TRes>
    implements CopyWith$Query$Character$Character$media$edges<TRes> {
  _CopyWithImpl$Query$Character$Character$media$edges(
    this._instance,
    this._then,
  );

  final Query$Character$Character$media$edges _instance;

  final TRes Function(Query$Character$Character$media$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? voiceActorRoles = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Character$Character$media$edges(
        voiceActorRoles: voiceActorRoles == _undefined
            ? _instance.voiceActorRoles
            : (voiceActorRoles as List<
                Query$Character$Character$media$edges$voiceActorRoles?>?),
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$MediaFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes voiceActorRoles(
          Iterable<Query$Character$Character$media$edges$voiceActorRoles?>? Function(
                  Iterable<
                      CopyWith$Query$Character$Character$media$edges$voiceActorRoles<
                          Query$Character$Character$media$edges$voiceActorRoles>?>?)
              _fn) =>
      call(
          voiceActorRoles: _fn(_instance.voiceActorRoles?.map((e) => e == null
              ? null
              : CopyWith$Query$Character$Character$media$edges$voiceActorRoles(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Fragment$MediaFragment<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Character$Character$media$edges<TRes>
    implements CopyWith$Query$Character$Character$media$edges<TRes> {
  _CopyWithStubImpl$Query$Character$Character$media$edges(this._res);

  TRes _res;

  call({
    List<Query$Character$Character$media$edges$voiceActorRoles?>?
        voiceActorRoles,
    Fragment$MediaFragment? node,
    String? $__typename,
  }) =>
      _res;

  voiceActorRoles(_fn) => _res;

  CopyWith$Fragment$MediaFragment<TRes> get node =>
      CopyWith$Fragment$MediaFragment.stub(_res);
}

class Query$Character$Character$media$edges$voiceActorRoles {
  Query$Character$Character$media$edges$voiceActorRoles({
    this.roleNotes,
    this.dubGroup,
    this.voiceActor,
    this.$__typename = 'StaffRoleType',
  });

  factory Query$Character$Character$media$edges$voiceActorRoles.fromJson(
      Map<String, dynamic> json) {
    final l$roleNotes = json['roleNotes'];
    final l$dubGroup = json['dubGroup'];
    final l$voiceActor = json['voiceActor'];
    final l$$__typename = json['__typename'];
    return Query$Character$Character$media$edges$voiceActorRoles(
      roleNotes: (l$roleNotes as String?),
      dubGroup: (l$dubGroup as String?),
      voiceActor: l$voiceActor == null
          ? null
          : Query$Character$Character$media$edges$voiceActorRoles$voiceActor
              .fromJson((l$voiceActor as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? roleNotes;

  final String? dubGroup;

  final Query$Character$Character$media$edges$voiceActorRoles$voiceActor?
      voiceActor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$roleNotes = roleNotes;
    _resultData['roleNotes'] = l$roleNotes;
    final l$dubGroup = dubGroup;
    _resultData['dubGroup'] = l$dubGroup;
    final l$voiceActor = voiceActor;
    _resultData['voiceActor'] = l$voiceActor?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$roleNotes = roleNotes;
    final l$dubGroup = dubGroup;
    final l$voiceActor = voiceActor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$roleNotes,
      l$dubGroup,
      l$voiceActor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Character$Character$media$edges$voiceActorRoles) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$roleNotes = roleNotes;
    final lOther$roleNotes = other.roleNotes;
    if (l$roleNotes != lOther$roleNotes) {
      return false;
    }
    final l$dubGroup = dubGroup;
    final lOther$dubGroup = other.dubGroup;
    if (l$dubGroup != lOther$dubGroup) {
      return false;
    }
    final l$voiceActor = voiceActor;
    final lOther$voiceActor = other.voiceActor;
    if (l$voiceActor != lOther$voiceActor) {
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

extension UtilityExtension$Query$Character$Character$media$edges$voiceActorRoles
    on Query$Character$Character$media$edges$voiceActorRoles {
  CopyWith$Query$Character$Character$media$edges$voiceActorRoles<
          Query$Character$Character$media$edges$voiceActorRoles>
      get copyWith =>
          CopyWith$Query$Character$Character$media$edges$voiceActorRoles(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Character$Character$media$edges$voiceActorRoles<
    TRes> {
  factory CopyWith$Query$Character$Character$media$edges$voiceActorRoles(
    Query$Character$Character$media$edges$voiceActorRoles instance,
    TRes Function(Query$Character$Character$media$edges$voiceActorRoles) then,
  ) = _CopyWithImpl$Query$Character$Character$media$edges$voiceActorRoles;

  factory CopyWith$Query$Character$Character$media$edges$voiceActorRoles.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Character$Character$media$edges$voiceActorRoles;

  TRes call({
    String? roleNotes,
    String? dubGroup,
    Query$Character$Character$media$edges$voiceActorRoles$voiceActor?
        voiceActor,
    String? $__typename,
  });
  CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor<
      TRes> get voiceActor;
}

class _CopyWithImpl$Query$Character$Character$media$edges$voiceActorRoles<TRes>
    implements
        CopyWith$Query$Character$Character$media$edges$voiceActorRoles<TRes> {
  _CopyWithImpl$Query$Character$Character$media$edges$voiceActorRoles(
    this._instance,
    this._then,
  );

  final Query$Character$Character$media$edges$voiceActorRoles _instance;

  final TRes Function(Query$Character$Character$media$edges$voiceActorRoles)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? roleNotes = _undefined,
    Object? dubGroup = _undefined,
    Object? voiceActor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Character$Character$media$edges$voiceActorRoles(
        roleNotes: roleNotes == _undefined
            ? _instance.roleNotes
            : (roleNotes as String?),
        dubGroup:
            dubGroup == _undefined ? _instance.dubGroup : (dubGroup as String?),
        voiceActor: voiceActor == _undefined
            ? _instance.voiceActor
            : (voiceActor
                as Query$Character$Character$media$edges$voiceActorRoles$voiceActor?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor<
      TRes> get voiceActor {
    final local$voiceActor = _instance.voiceActor;
    return local$voiceActor == null
        ? CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor
            .stub(_then(_instance))
        : CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor(
            local$voiceActor, (e) => call(voiceActor: e));
  }
}

class _CopyWithStubImpl$Query$Character$Character$media$edges$voiceActorRoles<
        TRes>
    implements
        CopyWith$Query$Character$Character$media$edges$voiceActorRoles<TRes> {
  _CopyWithStubImpl$Query$Character$Character$media$edges$voiceActorRoles(
      this._res);

  TRes _res;

  call({
    String? roleNotes,
    String? dubGroup,
    Query$Character$Character$media$edges$voiceActorRoles$voiceActor?
        voiceActor,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor<
          TRes>
      get voiceActor =>
          CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor
              .stub(_res);
}

class Query$Character$Character$media$edges$voiceActorRoles$voiceActor
    implements Fragment$StaffFragment {
  Query$Character$Character$media$edges$voiceActorRoles$voiceActor({
    required this.id,
    this.name,
    this.image,
    this.$__typename = 'Staff',
    this.languageV2,
  });

  factory Query$Character$Character$media$edges$voiceActorRoles$voiceActor.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    final l$languageV2 = json['languageV2'];
    return Query$Character$Character$media$edges$voiceActorRoles$voiceActor(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name
              .fromJson((l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image
              .fromJson((l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      languageV2: (l$languageV2 as String?),
    );
  }

  final int id;

  final Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name?
      name;

  final Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image?
      image;

  final String $__typename;

  final String? languageV2;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$languageV2 = languageV2;
    _resultData['languageV2'] = l$languageV2;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$$__typename = $__typename;
    final l$languageV2 = languageV2;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$$__typename,
      l$languageV2,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$Character$Character$media$edges$voiceActorRoles$voiceActor) ||
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
    final l$languageV2 = languageV2;
    final lOther$languageV2 = other.languageV2;
    if (l$languageV2 != lOther$languageV2) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Character$Character$media$edges$voiceActorRoles$voiceActor
    on Query$Character$Character$media$edges$voiceActorRoles$voiceActor {
  CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor<
          Query$Character$Character$media$edges$voiceActorRoles$voiceActor>
      get copyWith =>
          CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor<
    TRes> {
  factory CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor(
    Query$Character$Character$media$edges$voiceActorRoles$voiceActor instance,
    TRes Function(
            Query$Character$Character$media$edges$voiceActorRoles$voiceActor)
        then,
  ) = _CopyWithImpl$Query$Character$Character$media$edges$voiceActorRoles$voiceActor;

  factory CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Character$Character$media$edges$voiceActorRoles$voiceActor;

  TRes call({
    int? id,
    Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name? name,
    Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image?
        image,
    String? $__typename,
    String? languageV2,
  });
  CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name<
      TRes> get name;
  CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image<
      TRes> get image;
}

class _CopyWithImpl$Query$Character$Character$media$edges$voiceActorRoles$voiceActor<
        TRes>
    implements
        CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor<
            TRes> {
  _CopyWithImpl$Query$Character$Character$media$edges$voiceActorRoles$voiceActor(
    this._instance,
    this._then,
  );

  final Query$Character$Character$media$edges$voiceActorRoles$voiceActor
      _instance;

  final TRes Function(
      Query$Character$Character$media$edges$voiceActorRoles$voiceActor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
    Object? languageV2 = _undefined,
  }) =>
      _then(Query$Character$Character$media$edges$voiceActorRoles$voiceActor(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name
                as Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name?),
        image: image == _undefined
            ? _instance.image
            : (image
                as Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        languageV2: languageV2 == _undefined
            ? _instance.languageV2
            : (languageV2 as String?),
      ));

  CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name<
      TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name
            .stub(_then(_instance))
        : CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image<
      TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image
            .stub(_then(_instance))
        : CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Query$Character$Character$media$edges$voiceActorRoles$voiceActor<
        TRes>
    implements
        CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor<
            TRes> {
  _CopyWithStubImpl$Query$Character$Character$media$edges$voiceActorRoles$voiceActor(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name? name,
    Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image?
        image,
    String? $__typename,
    String? languageV2,
  }) =>
      _res;

  CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name<
          TRes>
      get name =>
          CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name
              .stub(_res);

  CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image<
          TRes>
      get image =>
          CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image
              .stub(_res);
}

class Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name
    implements Fragment$StaffFragment$name {
  Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name({
    this.userPreferred,
    this.$__typename = 'StaffName',
  });

  factory Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name(
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
    if (!(other
            is Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name) ||
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

extension UtilityExtension$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name
    on Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name {
  CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name<
          Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name>
      get copyWith =>
          CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name<
    TRes> {
  factory CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name(
    Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name
        instance,
    TRes Function(
            Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name)
        then,
  ) = _CopyWithImpl$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name;

  factory CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name<
        TRes>
    implements
        CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name<
            TRes> {
  _CopyWithImpl$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name(
    this._instance,
    this._then,
  );

  final Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name
      _instance;

  final TRes Function(
          Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name<
        TRes>
    implements
        CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name<
            TRes> {
  _CopyWithStubImpl$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$name(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image
    implements Fragment$StaffFragment$image {
  Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image({
    this.large,
    this.$__typename = 'StaffImage',
  });

  factory Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image(
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
    if (!(other
            is Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image) ||
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

extension UtilityExtension$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image
    on Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image {
  CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image<
          Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image>
      get copyWith =>
          CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image<
    TRes> {
  factory CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image(
    Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image
        instance,
    TRes Function(
            Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image)
        then,
  ) = _CopyWithImpl$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image;

  factory CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image<
        TRes>
    implements
        CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image<
            TRes> {
  _CopyWithImpl$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image(
    this._instance,
    this._then,
  );

  final Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image
      _instance;

  final TRes Function(
          Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image<
        TRes>
    implements
        CopyWith$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image<
            TRes> {
  _CopyWithStubImpl$Query$Character$Character$media$edges$voiceActorRoles$voiceActor$image(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}
