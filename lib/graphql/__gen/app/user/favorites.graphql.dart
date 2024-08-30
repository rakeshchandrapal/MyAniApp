import '../../graphql/fragments/character.graphql.dart';
import '../../graphql/fragments/media.graphql.dart';
import '../../graphql/fragments/page_info.graphql.dart';
import '../../graphql/fragments/staff.graphql.dart';
import '../../graphql/fragments/studio.graphql.dart';
import '../../graphql/fragments/user.graphql.dart';
import '../../graphql/schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$UserFavorites {
  factory Variables$Query$UserFavorites({
    String? name,
    int? animePage,
    int? mangaPage,
    int? characterPage,
    int? staffPage,
    int? studioPage,
  }) =>
      Variables$Query$UserFavorites._({
        if (name != null) r'name': name,
        if (animePage != null) r'animePage': animePage,
        if (mangaPage != null) r'mangaPage': mangaPage,
        if (characterPage != null) r'characterPage': characterPage,
        if (staffPage != null) r'staffPage': staffPage,
        if (studioPage != null) r'studioPage': studioPage,
      });

  Variables$Query$UserFavorites._(this._$data);

  factory Variables$Query$UserFavorites.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('animePage')) {
      final l$animePage = data['animePage'];
      result$data['animePage'] = (l$animePage as int?);
    }
    if (data.containsKey('mangaPage')) {
      final l$mangaPage = data['mangaPage'];
      result$data['mangaPage'] = (l$mangaPage as int?);
    }
    if (data.containsKey('characterPage')) {
      final l$characterPage = data['characterPage'];
      result$data['characterPage'] = (l$characterPage as int?);
    }
    if (data.containsKey('staffPage')) {
      final l$staffPage = data['staffPage'];
      result$data['staffPage'] = (l$staffPage as int?);
    }
    if (data.containsKey('studioPage')) {
      final l$studioPage = data['studioPage'];
      result$data['studioPage'] = (l$studioPage as int?);
    }
    return Variables$Query$UserFavorites._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  int? get animePage => (_$data['animePage'] as int?);

  int? get mangaPage => (_$data['mangaPage'] as int?);

  int? get characterPage => (_$data['characterPage'] as int?);

  int? get staffPage => (_$data['staffPage'] as int?);

  int? get studioPage => (_$data['studioPage'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('animePage')) {
      final l$animePage = animePage;
      result$data['animePage'] = l$animePage;
    }
    if (_$data.containsKey('mangaPage')) {
      final l$mangaPage = mangaPage;
      result$data['mangaPage'] = l$mangaPage;
    }
    if (_$data.containsKey('characterPage')) {
      final l$characterPage = characterPage;
      result$data['characterPage'] = l$characterPage;
    }
    if (_$data.containsKey('staffPage')) {
      final l$staffPage = staffPage;
      result$data['staffPage'] = l$staffPage;
    }
    if (_$data.containsKey('studioPage')) {
      final l$studioPage = studioPage;
      result$data['studioPage'] = l$studioPage;
    }
    return result$data;
  }

  CopyWith$Variables$Query$UserFavorites<Variables$Query$UserFavorites>
      get copyWith => CopyWith$Variables$Query$UserFavorites(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$UserFavorites) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$animePage = animePage;
    final lOther$animePage = other.animePage;
    if (_$data.containsKey('animePage') !=
        other._$data.containsKey('animePage')) {
      return false;
    }
    if (l$animePage != lOther$animePage) {
      return false;
    }
    final l$mangaPage = mangaPage;
    final lOther$mangaPage = other.mangaPage;
    if (_$data.containsKey('mangaPage') !=
        other._$data.containsKey('mangaPage')) {
      return false;
    }
    if (l$mangaPage != lOther$mangaPage) {
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
    final l$studioPage = studioPage;
    final lOther$studioPage = other.studioPage;
    if (_$data.containsKey('studioPage') !=
        other._$data.containsKey('studioPage')) {
      return false;
    }
    if (l$studioPage != lOther$studioPage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$animePage = animePage;
    final l$mangaPage = mangaPage;
    final l$characterPage = characterPage;
    final l$staffPage = staffPage;
    final l$studioPage = studioPage;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('animePage') ? l$animePage : const {},
      _$data.containsKey('mangaPage') ? l$mangaPage : const {},
      _$data.containsKey('characterPage') ? l$characterPage : const {},
      _$data.containsKey('staffPage') ? l$staffPage : const {},
      _$data.containsKey('studioPage') ? l$studioPage : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$UserFavorites<TRes> {
  factory CopyWith$Variables$Query$UserFavorites(
    Variables$Query$UserFavorites instance,
    TRes Function(Variables$Query$UserFavorites) then,
  ) = _CopyWithImpl$Variables$Query$UserFavorites;

  factory CopyWith$Variables$Query$UserFavorites.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$UserFavorites;

  TRes call({
    String? name,
    int? animePage,
    int? mangaPage,
    int? characterPage,
    int? staffPage,
    int? studioPage,
  });
}

class _CopyWithImpl$Variables$Query$UserFavorites<TRes>
    implements CopyWith$Variables$Query$UserFavorites<TRes> {
  _CopyWithImpl$Variables$Query$UserFavorites(
    this._instance,
    this._then,
  );

  final Variables$Query$UserFavorites _instance;

  final TRes Function(Variables$Query$UserFavorites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? animePage = _undefined,
    Object? mangaPage = _undefined,
    Object? characterPage = _undefined,
    Object? staffPage = _undefined,
    Object? studioPage = _undefined,
  }) =>
      _then(Variables$Query$UserFavorites._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (animePage != _undefined) 'animePage': (animePage as int?),
        if (mangaPage != _undefined) 'mangaPage': (mangaPage as int?),
        if (characterPage != _undefined)
          'characterPage': (characterPage as int?),
        if (staffPage != _undefined) 'staffPage': (staffPage as int?),
        if (studioPage != _undefined) 'studioPage': (studioPage as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$UserFavorites<TRes>
    implements CopyWith$Variables$Query$UserFavorites<TRes> {
  _CopyWithStubImpl$Variables$Query$UserFavorites(this._res);

  TRes _res;

  call({
    String? name,
    int? animePage,
    int? mangaPage,
    int? characterPage,
    int? staffPage,
    int? studioPage,
  }) =>
      _res;
}

class Query$UserFavorites {
  Query$UserFavorites({
    this.User,
    this.$__typename = 'Query',
  });

  factory Query$UserFavorites.fromJson(Map<String, dynamic> json) {
    final l$User = json['User'];
    final l$$__typename = json['__typename'];
    return Query$UserFavorites(
      User: l$User == null
          ? null
          : Query$UserFavorites$User.fromJson((l$User as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserFavorites$User? User;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$User = User;
    _resultData['User'] = l$User?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$User = User;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$User,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserFavorites) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$User = User;
    final lOther$User = other.User;
    if (l$User != lOther$User) {
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

extension UtilityExtension$Query$UserFavorites on Query$UserFavorites {
  CopyWith$Query$UserFavorites<Query$UserFavorites> get copyWith =>
      CopyWith$Query$UserFavorites(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserFavorites<TRes> {
  factory CopyWith$Query$UserFavorites(
    Query$UserFavorites instance,
    TRes Function(Query$UserFavorites) then,
  ) = _CopyWithImpl$Query$UserFavorites;

  factory CopyWith$Query$UserFavorites.stub(TRes res) =
      _CopyWithStubImpl$Query$UserFavorites;

  TRes call({
    Query$UserFavorites$User? User,
    String? $__typename,
  });
  CopyWith$Query$UserFavorites$User<TRes> get User;
}

class _CopyWithImpl$Query$UserFavorites<TRes>
    implements CopyWith$Query$UserFavorites<TRes> {
  _CopyWithImpl$Query$UserFavorites(
    this._instance,
    this._then,
  );

  final Query$UserFavorites _instance;

  final TRes Function(Query$UserFavorites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? User = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserFavorites(
        User: User == _undefined
            ? _instance.User
            : (User as Query$UserFavorites$User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserFavorites$User<TRes> get User {
    final local$User = _instance.User;
    return local$User == null
        ? CopyWith$Query$UserFavorites$User.stub(_then(_instance))
        : CopyWith$Query$UserFavorites$User(local$User, (e) => call(User: e));
  }
}

class _CopyWithStubImpl$Query$UserFavorites<TRes>
    implements CopyWith$Query$UserFavorites<TRes> {
  _CopyWithStubImpl$Query$UserFavorites(this._res);

  TRes _res;

  call({
    Query$UserFavorites$User? User,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserFavorites$User<TRes> get User =>
      CopyWith$Query$UserFavorites$User.stub(_res);
}

const documentNodeQueryUserFavorites = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserFavorites'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'animePage')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mangaPage')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'studioPage')),
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
        name: NameNode(value: 'User'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFragment'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'favourites'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'anime'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'animePage')),
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
                    name: NameNode(value: 'edges'),
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
                        name: NameNode(value: 'favouriteOrder'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
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
                name: NameNode(value: 'manga'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'mangaPage')),
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
                    name: NameNode(value: 'edges'),
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
                        name: NameNode(value: 'favouriteOrder'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
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
                name: NameNode(value: 'characters'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'characterPage')),
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
                    name: NameNode(value: 'edges'),
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
                        name: NameNode(value: 'favouriteOrder'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'node'),
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
                name: NameNode(value: 'staff'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'staffPage')),
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
                    name: NameNode(value: 'edges'),
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
                        name: NameNode(value: 'favouriteOrder'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'node'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                            name: NameNode(value: 'StaffFragment'),
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
                name: NameNode(value: 'studios'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'studioPage')),
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
                    name: NameNode(value: 'edges'),
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
                        name: NameNode(value: 'favouriteOrder'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'node'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                            name: NameNode(value: 'StudioFragment'),
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
  fragmentDefinitionPageInfo,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionCharacterFragment,
  fragmentDefinitionStaffFragment,
  fragmentDefinitionStudioFragment,
]);

class Query$UserFavorites$User implements Fragment$UserFragment {
  Query$UserFavorites$User({
    required this.id,
    required this.name,
    this.donatorTier,
    this.donatorBadge,
    this.moderatorRoles,
    this.avatar,
    this.$__typename = 'User',
    this.favourites,
  });

  factory Query$UserFavorites$User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$donatorTier = json['donatorTier'];
    final l$donatorBadge = json['donatorBadge'];
    final l$moderatorRoles = json['moderatorRoles'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    final l$favourites = json['favourites'];
    return Query$UserFavorites$User(
      id: (l$id as int),
      name: (l$name as String),
      donatorTier: (l$donatorTier as int?),
      donatorBadge: (l$donatorBadge as String?),
      moderatorRoles: (l$moderatorRoles as List<dynamic>?)
          ?.map((e) => e == null ? null : fromJson$Enum$ModRole((e as String)))
          .toList(),
      avatar: l$avatar == null
          ? null
          : Query$UserFavorites$User$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      favourites: l$favourites == null
          ? null
          : Query$UserFavorites$User$favourites.fromJson(
              (l$favourites as Map<String, dynamic>)),
    );
  }

  final int id;

  final String name;

  final int? donatorTier;

  final String? donatorBadge;

  final List<Enum$ModRole?>? moderatorRoles;

  final Query$UserFavorites$User$avatar? avatar;

  final String $__typename;

  final Query$UserFavorites$User$favourites? favourites;

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
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites?.toJson();
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
    final l$favourites = favourites;
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
      l$favourites,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserFavorites$User) ||
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
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserFavorites$User
    on Query$UserFavorites$User {
  CopyWith$Query$UserFavorites$User<Query$UserFavorites$User> get copyWith =>
      CopyWith$Query$UserFavorites$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserFavorites$User<TRes> {
  factory CopyWith$Query$UserFavorites$User(
    Query$UserFavorites$User instance,
    TRes Function(Query$UserFavorites$User) then,
  ) = _CopyWithImpl$Query$UserFavorites$User;

  factory CopyWith$Query$UserFavorites$User.stub(TRes res) =
      _CopyWithStubImpl$Query$UserFavorites$User;

  TRes call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Query$UserFavorites$User$avatar? avatar,
    String? $__typename,
    Query$UserFavorites$User$favourites? favourites,
  });
  CopyWith$Query$UserFavorites$User$avatar<TRes> get avatar;
  CopyWith$Query$UserFavorites$User$favourites<TRes> get favourites;
}

class _CopyWithImpl$Query$UserFavorites$User<TRes>
    implements CopyWith$Query$UserFavorites$User<TRes> {
  _CopyWithImpl$Query$UserFavorites$User(
    this._instance,
    this._then,
  );

  final Query$UserFavorites$User _instance;

  final TRes Function(Query$UserFavorites$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? donatorTier = _undefined,
    Object? donatorBadge = _undefined,
    Object? moderatorRoles = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
    Object? favourites = _undefined,
  }) =>
      _then(Query$UserFavorites$User(
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
            : (avatar as Query$UserFavorites$User$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as Query$UserFavorites$User$favourites?),
      ));

  CopyWith$Query$UserFavorites$User$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$UserFavorites$User$avatar.stub(_then(_instance))
        : CopyWith$Query$UserFavorites$User$avatar(
            local$avatar, (e) => call(avatar: e));
  }

  CopyWith$Query$UserFavorites$User$favourites<TRes> get favourites {
    final local$favourites = _instance.favourites;
    return local$favourites == null
        ? CopyWith$Query$UserFavorites$User$favourites.stub(_then(_instance))
        : CopyWith$Query$UserFavorites$User$favourites(
            local$favourites, (e) => call(favourites: e));
  }
}

class _CopyWithStubImpl$Query$UserFavorites$User<TRes>
    implements CopyWith$Query$UserFavorites$User<TRes> {
  _CopyWithStubImpl$Query$UserFavorites$User(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Query$UserFavorites$User$avatar? avatar,
    String? $__typename,
    Query$UserFavorites$User$favourites? favourites,
  }) =>
      _res;

  CopyWith$Query$UserFavorites$User$avatar<TRes> get avatar =>
      CopyWith$Query$UserFavorites$User$avatar.stub(_res);

  CopyWith$Query$UserFavorites$User$favourites<TRes> get favourites =>
      CopyWith$Query$UserFavorites$User$favourites.stub(_res);
}

class Query$UserFavorites$User$avatar implements Fragment$UserFragment$avatar {
  Query$UserFavorites$User$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Query$UserFavorites$User$avatar.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$UserFavorites$User$avatar(
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
    if (!(other is Query$UserFavorites$User$avatar) ||
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

extension UtilityExtension$Query$UserFavorites$User$avatar
    on Query$UserFavorites$User$avatar {
  CopyWith$Query$UserFavorites$User$avatar<Query$UserFavorites$User$avatar>
      get copyWith => CopyWith$Query$UserFavorites$User$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserFavorites$User$avatar<TRes> {
  factory CopyWith$Query$UserFavorites$User$avatar(
    Query$UserFavorites$User$avatar instance,
    TRes Function(Query$UserFavorites$User$avatar) then,
  ) = _CopyWithImpl$Query$UserFavorites$User$avatar;

  factory CopyWith$Query$UserFavorites$User$avatar.stub(TRes res) =
      _CopyWithStubImpl$Query$UserFavorites$User$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserFavorites$User$avatar<TRes>
    implements CopyWith$Query$UserFavorites$User$avatar<TRes> {
  _CopyWithImpl$Query$UserFavorites$User$avatar(
    this._instance,
    this._then,
  );

  final Query$UserFavorites$User$avatar _instance;

  final TRes Function(Query$UserFavorites$User$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserFavorites$User$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserFavorites$User$avatar<TRes>
    implements CopyWith$Query$UserFavorites$User$avatar<TRes> {
  _CopyWithStubImpl$Query$UserFavorites$User$avatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserFavorites$User$favourites {
  Query$UserFavorites$User$favourites({
    this.anime,
    this.manga,
    this.characters,
    this.staff,
    this.studios,
    this.$__typename = 'Favourites',
  });

  factory Query$UserFavorites$User$favourites.fromJson(
      Map<String, dynamic> json) {
    final l$anime = json['anime'];
    final l$manga = json['manga'];
    final l$characters = json['characters'];
    final l$staff = json['staff'];
    final l$studios = json['studios'];
    final l$$__typename = json['__typename'];
    return Query$UserFavorites$User$favourites(
      anime: l$anime == null
          ? null
          : Query$UserFavorites$User$favourites$anime.fromJson(
              (l$anime as Map<String, dynamic>)),
      manga: l$manga == null
          ? null
          : Query$UserFavorites$User$favourites$manga.fromJson(
              (l$manga as Map<String, dynamic>)),
      characters: l$characters == null
          ? null
          : Query$UserFavorites$User$favourites$characters.fromJson(
              (l$characters as Map<String, dynamic>)),
      staff: l$staff == null
          ? null
          : Query$UserFavorites$User$favourites$staff.fromJson(
              (l$staff as Map<String, dynamic>)),
      studios: l$studios == null
          ? null
          : Query$UserFavorites$User$favourites$studios.fromJson(
              (l$studios as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserFavorites$User$favourites$anime? anime;

  final Query$UserFavorites$User$favourites$manga? manga;

  final Query$UserFavorites$User$favourites$characters? characters;

  final Query$UserFavorites$User$favourites$staff? staff;

  final Query$UserFavorites$User$favourites$studios? studios;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$anime = anime;
    _resultData['anime'] = l$anime?.toJson();
    final l$manga = manga;
    _resultData['manga'] = l$manga?.toJson();
    final l$characters = characters;
    _resultData['characters'] = l$characters?.toJson();
    final l$staff = staff;
    _resultData['staff'] = l$staff?.toJson();
    final l$studios = studios;
    _resultData['studios'] = l$studios?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$anime = anime;
    final l$manga = manga;
    final l$characters = characters;
    final l$staff = staff;
    final l$studios = studios;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$anime,
      l$manga,
      l$characters,
      l$staff,
      l$studios,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserFavorites$User$favourites) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$anime = anime;
    final lOther$anime = other.anime;
    if (l$anime != lOther$anime) {
      return false;
    }
    final l$manga = manga;
    final lOther$manga = other.manga;
    if (l$manga != lOther$manga) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
      return false;
    }
    final l$staff = staff;
    final lOther$staff = other.staff;
    if (l$staff != lOther$staff) {
      return false;
    }
    final l$studios = studios;
    final lOther$studios = other.studios;
    if (l$studios != lOther$studios) {
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

extension UtilityExtension$Query$UserFavorites$User$favourites
    on Query$UserFavorites$User$favourites {
  CopyWith$Query$UserFavorites$User$favourites<
          Query$UserFavorites$User$favourites>
      get copyWith => CopyWith$Query$UserFavorites$User$favourites(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserFavorites$User$favourites<TRes> {
  factory CopyWith$Query$UserFavorites$User$favourites(
    Query$UserFavorites$User$favourites instance,
    TRes Function(Query$UserFavorites$User$favourites) then,
  ) = _CopyWithImpl$Query$UserFavorites$User$favourites;

  factory CopyWith$Query$UserFavorites$User$favourites.stub(TRes res) =
      _CopyWithStubImpl$Query$UserFavorites$User$favourites;

  TRes call({
    Query$UserFavorites$User$favourites$anime? anime,
    Query$UserFavorites$User$favourites$manga? manga,
    Query$UserFavorites$User$favourites$characters? characters,
    Query$UserFavorites$User$favourites$staff? staff,
    Query$UserFavorites$User$favourites$studios? studios,
    String? $__typename,
  });
  CopyWith$Query$UserFavorites$User$favourites$anime<TRes> get anime;
  CopyWith$Query$UserFavorites$User$favourites$manga<TRes> get manga;
  CopyWith$Query$UserFavorites$User$favourites$characters<TRes> get characters;
  CopyWith$Query$UserFavorites$User$favourites$staff<TRes> get staff;
  CopyWith$Query$UserFavorites$User$favourites$studios<TRes> get studios;
}

class _CopyWithImpl$Query$UserFavorites$User$favourites<TRes>
    implements CopyWith$Query$UserFavorites$User$favourites<TRes> {
  _CopyWithImpl$Query$UserFavorites$User$favourites(
    this._instance,
    this._then,
  );

  final Query$UserFavorites$User$favourites _instance;

  final TRes Function(Query$UserFavorites$User$favourites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? anime = _undefined,
    Object? manga = _undefined,
    Object? characters = _undefined,
    Object? staff = _undefined,
    Object? studios = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserFavorites$User$favourites(
        anime: anime == _undefined
            ? _instance.anime
            : (anime as Query$UserFavorites$User$favourites$anime?),
        manga: manga == _undefined
            ? _instance.manga
            : (manga as Query$UserFavorites$User$favourites$manga?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters as Query$UserFavorites$User$favourites$characters?),
        staff: staff == _undefined
            ? _instance.staff
            : (staff as Query$UserFavorites$User$favourites$staff?),
        studios: studios == _undefined
            ? _instance.studios
            : (studios as Query$UserFavorites$User$favourites$studios?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserFavorites$User$favourites$anime<TRes> get anime {
    final local$anime = _instance.anime;
    return local$anime == null
        ? CopyWith$Query$UserFavorites$User$favourites$anime.stub(
            _then(_instance))
        : CopyWith$Query$UserFavorites$User$favourites$anime(
            local$anime, (e) => call(anime: e));
  }

  CopyWith$Query$UserFavorites$User$favourites$manga<TRes> get manga {
    final local$manga = _instance.manga;
    return local$manga == null
        ? CopyWith$Query$UserFavorites$User$favourites$manga.stub(
            _then(_instance))
        : CopyWith$Query$UserFavorites$User$favourites$manga(
            local$manga, (e) => call(manga: e));
  }

  CopyWith$Query$UserFavorites$User$favourites$characters<TRes> get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWith$Query$UserFavorites$User$favourites$characters.stub(
            _then(_instance))
        : CopyWith$Query$UserFavorites$User$favourites$characters(
            local$characters, (e) => call(characters: e));
  }

  CopyWith$Query$UserFavorites$User$favourites$staff<TRes> get staff {
    final local$staff = _instance.staff;
    return local$staff == null
        ? CopyWith$Query$UserFavorites$User$favourites$staff.stub(
            _then(_instance))
        : CopyWith$Query$UserFavorites$User$favourites$staff(
            local$staff, (e) => call(staff: e));
  }

  CopyWith$Query$UserFavorites$User$favourites$studios<TRes> get studios {
    final local$studios = _instance.studios;
    return local$studios == null
        ? CopyWith$Query$UserFavorites$User$favourites$studios.stub(
            _then(_instance))
        : CopyWith$Query$UserFavorites$User$favourites$studios(
            local$studios, (e) => call(studios: e));
  }
}

class _CopyWithStubImpl$Query$UserFavorites$User$favourites<TRes>
    implements CopyWith$Query$UserFavorites$User$favourites<TRes> {
  _CopyWithStubImpl$Query$UserFavorites$User$favourites(this._res);

  TRes _res;

  call({
    Query$UserFavorites$User$favourites$anime? anime,
    Query$UserFavorites$User$favourites$manga? manga,
    Query$UserFavorites$User$favourites$characters? characters,
    Query$UserFavorites$User$favourites$staff? staff,
    Query$UserFavorites$User$favourites$studios? studios,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserFavorites$User$favourites$anime<TRes> get anime =>
      CopyWith$Query$UserFavorites$User$favourites$anime.stub(_res);

  CopyWith$Query$UserFavorites$User$favourites$manga<TRes> get manga =>
      CopyWith$Query$UserFavorites$User$favourites$manga.stub(_res);

  CopyWith$Query$UserFavorites$User$favourites$characters<TRes>
      get characters =>
          CopyWith$Query$UserFavorites$User$favourites$characters.stub(_res);

  CopyWith$Query$UserFavorites$User$favourites$staff<TRes> get staff =>
      CopyWith$Query$UserFavorites$User$favourites$staff.stub(_res);

  CopyWith$Query$UserFavorites$User$favourites$studios<TRes> get studios =>
      CopyWith$Query$UserFavorites$User$favourites$studios.stub(_res);
}

class Query$UserFavorites$User$favourites$anime {
  Query$UserFavorites$User$favourites$anime({
    this.pageInfo,
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$UserFavorites$User$favourites$anime.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$UserFavorites$User$favourites$anime(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$UserFavorites$User$favourites$anime$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$UserFavorites$User$favourites$anime$edges?>? edges;

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
    if (!(other is Query$UserFavorites$User$favourites$anime) ||
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

extension UtilityExtension$Query$UserFavorites$User$favourites$anime
    on Query$UserFavorites$User$favourites$anime {
  CopyWith$Query$UserFavorites$User$favourites$anime<
          Query$UserFavorites$User$favourites$anime>
      get copyWith => CopyWith$Query$UserFavorites$User$favourites$anime(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserFavorites$User$favourites$anime<TRes> {
  factory CopyWith$Query$UserFavorites$User$favourites$anime(
    Query$UserFavorites$User$favourites$anime instance,
    TRes Function(Query$UserFavorites$User$favourites$anime) then,
  ) = _CopyWithImpl$Query$UserFavorites$User$favourites$anime;

  factory CopyWith$Query$UserFavorites$User$favourites$anime.stub(TRes res) =
      _CopyWithStubImpl$Query$UserFavorites$User$favourites$anime;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$UserFavorites$User$favourites$anime$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$UserFavorites$User$favourites$anime$edges?>? Function(
              Iterable<
                  CopyWith$Query$UserFavorites$User$favourites$anime$edges<
                      Query$UserFavorites$User$favourites$anime$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$UserFavorites$User$favourites$anime<TRes>
    implements CopyWith$Query$UserFavorites$User$favourites$anime<TRes> {
  _CopyWithImpl$Query$UserFavorites$User$favourites$anime(
    this._instance,
    this._then,
  );

  final Query$UserFavorites$User$favourites$anime _instance;

  final TRes Function(Query$UserFavorites$User$favourites$anime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserFavorites$User$favourites$anime(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges
                as List<Query$UserFavorites$User$favourites$anime$edges?>?),
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
          Iterable<Query$UserFavorites$User$favourites$anime$edges?>? Function(
                  Iterable<
                      CopyWith$Query$UserFavorites$User$favourites$anime$edges<
                          Query$UserFavorites$User$favourites$anime$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$UserFavorites$User$favourites$anime$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$UserFavorites$User$favourites$anime<TRes>
    implements CopyWith$Query$UserFavorites$User$favourites$anime<TRes> {
  _CopyWithStubImpl$Query$UserFavorites$User$favourites$anime(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$UserFavorites$User$favourites$anime$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  edges(_fn) => _res;
}

class Query$UserFavorites$User$favourites$anime$edges {
  Query$UserFavorites$User$favourites$anime$edges({
    this.id,
    this.favouriteOrder,
    this.node,
    this.$__typename = 'MediaEdge',
  });

  factory Query$UserFavorites$User$favourites$anime$edges.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$favouriteOrder = json['favouriteOrder'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$UserFavorites$User$favourites$anime$edges(
      id: (l$id as int?),
      favouriteOrder: (l$favouriteOrder as int?),
      node: l$node == null
          ? null
          : Fragment$MediaFragment.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final int? favouriteOrder;

  final Fragment$MediaFragment? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$favouriteOrder = favouriteOrder;
    _resultData['favouriteOrder'] = l$favouriteOrder;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$favouriteOrder = favouriteOrder;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$favouriteOrder,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserFavorites$User$favourites$anime$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$favouriteOrder = favouriteOrder;
    final lOther$favouriteOrder = other.favouriteOrder;
    if (l$favouriteOrder != lOther$favouriteOrder) {
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

extension UtilityExtension$Query$UserFavorites$User$favourites$anime$edges
    on Query$UserFavorites$User$favourites$anime$edges {
  CopyWith$Query$UserFavorites$User$favourites$anime$edges<
          Query$UserFavorites$User$favourites$anime$edges>
      get copyWith => CopyWith$Query$UserFavorites$User$favourites$anime$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserFavorites$User$favourites$anime$edges<TRes> {
  factory CopyWith$Query$UserFavorites$User$favourites$anime$edges(
    Query$UserFavorites$User$favourites$anime$edges instance,
    TRes Function(Query$UserFavorites$User$favourites$anime$edges) then,
  ) = _CopyWithImpl$Query$UserFavorites$User$favourites$anime$edges;

  factory CopyWith$Query$UserFavorites$User$favourites$anime$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserFavorites$User$favourites$anime$edges;

  TRes call({
    int? id,
    int? favouriteOrder,
    Fragment$MediaFragment? node,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFragment<TRes> get node;
}

class _CopyWithImpl$Query$UserFavorites$User$favourites$anime$edges<TRes>
    implements CopyWith$Query$UserFavorites$User$favourites$anime$edges<TRes> {
  _CopyWithImpl$Query$UserFavorites$User$favourites$anime$edges(
    this._instance,
    this._then,
  );

  final Query$UserFavorites$User$favourites$anime$edges _instance;

  final TRes Function(Query$UserFavorites$User$favourites$anime$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? favouriteOrder = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserFavorites$User$favourites$anime$edges(
        id: id == _undefined ? _instance.id : (id as int?),
        favouriteOrder: favouriteOrder == _undefined
            ? _instance.favouriteOrder
            : (favouriteOrder as int?),
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$MediaFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaFragment<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$UserFavorites$User$favourites$anime$edges<TRes>
    implements CopyWith$Query$UserFavorites$User$favourites$anime$edges<TRes> {
  _CopyWithStubImpl$Query$UserFavorites$User$favourites$anime$edges(this._res);

  TRes _res;

  call({
    int? id,
    int? favouriteOrder,
    Fragment$MediaFragment? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaFragment<TRes> get node =>
      CopyWith$Fragment$MediaFragment.stub(_res);
}

class Query$UserFavorites$User$favourites$manga {
  Query$UserFavorites$User$favourites$manga({
    this.pageInfo,
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$UserFavorites$User$favourites$manga.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$UserFavorites$User$favourites$manga(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$UserFavorites$User$favourites$manga$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$UserFavorites$User$favourites$manga$edges?>? edges;

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
    if (!(other is Query$UserFavorites$User$favourites$manga) ||
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

extension UtilityExtension$Query$UserFavorites$User$favourites$manga
    on Query$UserFavorites$User$favourites$manga {
  CopyWith$Query$UserFavorites$User$favourites$manga<
          Query$UserFavorites$User$favourites$manga>
      get copyWith => CopyWith$Query$UserFavorites$User$favourites$manga(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserFavorites$User$favourites$manga<TRes> {
  factory CopyWith$Query$UserFavorites$User$favourites$manga(
    Query$UserFavorites$User$favourites$manga instance,
    TRes Function(Query$UserFavorites$User$favourites$manga) then,
  ) = _CopyWithImpl$Query$UserFavorites$User$favourites$manga;

  factory CopyWith$Query$UserFavorites$User$favourites$manga.stub(TRes res) =
      _CopyWithStubImpl$Query$UserFavorites$User$favourites$manga;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$UserFavorites$User$favourites$manga$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$UserFavorites$User$favourites$manga$edges?>? Function(
              Iterable<
                  CopyWith$Query$UserFavorites$User$favourites$manga$edges<
                      Query$UserFavorites$User$favourites$manga$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$UserFavorites$User$favourites$manga<TRes>
    implements CopyWith$Query$UserFavorites$User$favourites$manga<TRes> {
  _CopyWithImpl$Query$UserFavorites$User$favourites$manga(
    this._instance,
    this._then,
  );

  final Query$UserFavorites$User$favourites$manga _instance;

  final TRes Function(Query$UserFavorites$User$favourites$manga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserFavorites$User$favourites$manga(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges
                as List<Query$UserFavorites$User$favourites$manga$edges?>?),
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
          Iterable<Query$UserFavorites$User$favourites$manga$edges?>? Function(
                  Iterable<
                      CopyWith$Query$UserFavorites$User$favourites$manga$edges<
                          Query$UserFavorites$User$favourites$manga$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$UserFavorites$User$favourites$manga$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$UserFavorites$User$favourites$manga<TRes>
    implements CopyWith$Query$UserFavorites$User$favourites$manga<TRes> {
  _CopyWithStubImpl$Query$UserFavorites$User$favourites$manga(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$UserFavorites$User$favourites$manga$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  edges(_fn) => _res;
}

class Query$UserFavorites$User$favourites$manga$edges {
  Query$UserFavorites$User$favourites$manga$edges({
    this.id,
    this.favouriteOrder,
    this.node,
    this.$__typename = 'MediaEdge',
  });

  factory Query$UserFavorites$User$favourites$manga$edges.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$favouriteOrder = json['favouriteOrder'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$UserFavorites$User$favourites$manga$edges(
      id: (l$id as int?),
      favouriteOrder: (l$favouriteOrder as int?),
      node: l$node == null
          ? null
          : Fragment$MediaFragment.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final int? favouriteOrder;

  final Fragment$MediaFragment? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$favouriteOrder = favouriteOrder;
    _resultData['favouriteOrder'] = l$favouriteOrder;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$favouriteOrder = favouriteOrder;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$favouriteOrder,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserFavorites$User$favourites$manga$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$favouriteOrder = favouriteOrder;
    final lOther$favouriteOrder = other.favouriteOrder;
    if (l$favouriteOrder != lOther$favouriteOrder) {
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

extension UtilityExtension$Query$UserFavorites$User$favourites$manga$edges
    on Query$UserFavorites$User$favourites$manga$edges {
  CopyWith$Query$UserFavorites$User$favourites$manga$edges<
          Query$UserFavorites$User$favourites$manga$edges>
      get copyWith => CopyWith$Query$UserFavorites$User$favourites$manga$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserFavorites$User$favourites$manga$edges<TRes> {
  factory CopyWith$Query$UserFavorites$User$favourites$manga$edges(
    Query$UserFavorites$User$favourites$manga$edges instance,
    TRes Function(Query$UserFavorites$User$favourites$manga$edges) then,
  ) = _CopyWithImpl$Query$UserFavorites$User$favourites$manga$edges;

  factory CopyWith$Query$UserFavorites$User$favourites$manga$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserFavorites$User$favourites$manga$edges;

  TRes call({
    int? id,
    int? favouriteOrder,
    Fragment$MediaFragment? node,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFragment<TRes> get node;
}

class _CopyWithImpl$Query$UserFavorites$User$favourites$manga$edges<TRes>
    implements CopyWith$Query$UserFavorites$User$favourites$manga$edges<TRes> {
  _CopyWithImpl$Query$UserFavorites$User$favourites$manga$edges(
    this._instance,
    this._then,
  );

  final Query$UserFavorites$User$favourites$manga$edges _instance;

  final TRes Function(Query$UserFavorites$User$favourites$manga$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? favouriteOrder = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserFavorites$User$favourites$manga$edges(
        id: id == _undefined ? _instance.id : (id as int?),
        favouriteOrder: favouriteOrder == _undefined
            ? _instance.favouriteOrder
            : (favouriteOrder as int?),
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$MediaFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaFragment<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$UserFavorites$User$favourites$manga$edges<TRes>
    implements CopyWith$Query$UserFavorites$User$favourites$manga$edges<TRes> {
  _CopyWithStubImpl$Query$UserFavorites$User$favourites$manga$edges(this._res);

  TRes _res;

  call({
    int? id,
    int? favouriteOrder,
    Fragment$MediaFragment? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaFragment<TRes> get node =>
      CopyWith$Fragment$MediaFragment.stub(_res);
}

class Query$UserFavorites$User$favourites$characters {
  Query$UserFavorites$User$favourites$characters({
    this.pageInfo,
    this.edges,
    this.$__typename = 'CharacterConnection',
  });

  factory Query$UserFavorites$User$favourites$characters.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$UserFavorites$User$favourites$characters(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$UserFavorites$User$favourites$characters$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$UserFavorites$User$favourites$characters$edges?>? edges;

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
    if (!(other is Query$UserFavorites$User$favourites$characters) ||
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

extension UtilityExtension$Query$UserFavorites$User$favourites$characters
    on Query$UserFavorites$User$favourites$characters {
  CopyWith$Query$UserFavorites$User$favourites$characters<
          Query$UserFavorites$User$favourites$characters>
      get copyWith => CopyWith$Query$UserFavorites$User$favourites$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserFavorites$User$favourites$characters<TRes> {
  factory CopyWith$Query$UserFavorites$User$favourites$characters(
    Query$UserFavorites$User$favourites$characters instance,
    TRes Function(Query$UserFavorites$User$favourites$characters) then,
  ) = _CopyWithImpl$Query$UserFavorites$User$favourites$characters;

  factory CopyWith$Query$UserFavorites$User$favourites$characters.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserFavorites$User$favourites$characters;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$UserFavorites$User$favourites$characters$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$UserFavorites$User$favourites$characters$edges?>? Function(
              Iterable<
                  CopyWith$Query$UserFavorites$User$favourites$characters$edges<
                      Query$UserFavorites$User$favourites$characters$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$UserFavorites$User$favourites$characters<TRes>
    implements CopyWith$Query$UserFavorites$User$favourites$characters<TRes> {
  _CopyWithImpl$Query$UserFavorites$User$favourites$characters(
    this._instance,
    this._then,
  );

  final Query$UserFavorites$User$favourites$characters _instance;

  final TRes Function(Query$UserFavorites$User$favourites$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserFavorites$User$favourites$characters(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<
                Query$UserFavorites$User$favourites$characters$edges?>?),
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
          Iterable<Query$UserFavorites$User$favourites$characters$edges?>? Function(
                  Iterable<
                      CopyWith$Query$UserFavorites$User$favourites$characters$edges<
                          Query$UserFavorites$User$favourites$characters$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$UserFavorites$User$favourites$characters$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$UserFavorites$User$favourites$characters<TRes>
    implements CopyWith$Query$UserFavorites$User$favourites$characters<TRes> {
  _CopyWithStubImpl$Query$UserFavorites$User$favourites$characters(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$UserFavorites$User$favourites$characters$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  edges(_fn) => _res;
}

class Query$UserFavorites$User$favourites$characters$edges {
  Query$UserFavorites$User$favourites$characters$edges({
    this.id,
    this.favouriteOrder,
    this.node,
    this.$__typename = 'CharacterEdge',
  });

  factory Query$UserFavorites$User$favourites$characters$edges.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$favouriteOrder = json['favouriteOrder'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$UserFavorites$User$favourites$characters$edges(
      id: (l$id as int?),
      favouriteOrder: (l$favouriteOrder as int?),
      node: l$node == null
          ? null
          : Fragment$CharacterFragment.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final int? favouriteOrder;

  final Fragment$CharacterFragment? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$favouriteOrder = favouriteOrder;
    _resultData['favouriteOrder'] = l$favouriteOrder;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$favouriteOrder = favouriteOrder;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$favouriteOrder,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserFavorites$User$favourites$characters$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$favouriteOrder = favouriteOrder;
    final lOther$favouriteOrder = other.favouriteOrder;
    if (l$favouriteOrder != lOther$favouriteOrder) {
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

extension UtilityExtension$Query$UserFavorites$User$favourites$characters$edges
    on Query$UserFavorites$User$favourites$characters$edges {
  CopyWith$Query$UserFavorites$User$favourites$characters$edges<
          Query$UserFavorites$User$favourites$characters$edges>
      get copyWith =>
          CopyWith$Query$UserFavorites$User$favourites$characters$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserFavorites$User$favourites$characters$edges<
    TRes> {
  factory CopyWith$Query$UserFavorites$User$favourites$characters$edges(
    Query$UserFavorites$User$favourites$characters$edges instance,
    TRes Function(Query$UserFavorites$User$favourites$characters$edges) then,
  ) = _CopyWithImpl$Query$UserFavorites$User$favourites$characters$edges;

  factory CopyWith$Query$UserFavorites$User$favourites$characters$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserFavorites$User$favourites$characters$edges;

  TRes call({
    int? id,
    int? favouriteOrder,
    Fragment$CharacterFragment? node,
    String? $__typename,
  });
  CopyWith$Fragment$CharacterFragment<TRes> get node;
}

class _CopyWithImpl$Query$UserFavorites$User$favourites$characters$edges<TRes>
    implements
        CopyWith$Query$UserFavorites$User$favourites$characters$edges<TRes> {
  _CopyWithImpl$Query$UserFavorites$User$favourites$characters$edges(
    this._instance,
    this._then,
  );

  final Query$UserFavorites$User$favourites$characters$edges _instance;

  final TRes Function(Query$UserFavorites$User$favourites$characters$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? favouriteOrder = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserFavorites$User$favourites$characters$edges(
        id: id == _undefined ? _instance.id : (id as int?),
        favouriteOrder: favouriteOrder == _undefined
            ? _instance.favouriteOrder
            : (favouriteOrder as int?),
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$CharacterFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CharacterFragment<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$CharacterFragment.stub(_then(_instance))
        : CopyWith$Fragment$CharacterFragment(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$UserFavorites$User$favourites$characters$edges<
        TRes>
    implements
        CopyWith$Query$UserFavorites$User$favourites$characters$edges<TRes> {
  _CopyWithStubImpl$Query$UserFavorites$User$favourites$characters$edges(
      this._res);

  TRes _res;

  call({
    int? id,
    int? favouriteOrder,
    Fragment$CharacterFragment? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CharacterFragment<TRes> get node =>
      CopyWith$Fragment$CharacterFragment.stub(_res);
}

class Query$UserFavorites$User$favourites$staff {
  Query$UserFavorites$User$favourites$staff({
    this.pageInfo,
    this.edges,
    this.$__typename = 'StaffConnection',
  });

  factory Query$UserFavorites$User$favourites$staff.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$UserFavorites$User$favourites$staff(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$UserFavorites$User$favourites$staff$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$UserFavorites$User$favourites$staff$edges?>? edges;

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
    if (!(other is Query$UserFavorites$User$favourites$staff) ||
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

extension UtilityExtension$Query$UserFavorites$User$favourites$staff
    on Query$UserFavorites$User$favourites$staff {
  CopyWith$Query$UserFavorites$User$favourites$staff<
          Query$UserFavorites$User$favourites$staff>
      get copyWith => CopyWith$Query$UserFavorites$User$favourites$staff(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserFavorites$User$favourites$staff<TRes> {
  factory CopyWith$Query$UserFavorites$User$favourites$staff(
    Query$UserFavorites$User$favourites$staff instance,
    TRes Function(Query$UserFavorites$User$favourites$staff) then,
  ) = _CopyWithImpl$Query$UserFavorites$User$favourites$staff;

  factory CopyWith$Query$UserFavorites$User$favourites$staff.stub(TRes res) =
      _CopyWithStubImpl$Query$UserFavorites$User$favourites$staff;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$UserFavorites$User$favourites$staff$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$UserFavorites$User$favourites$staff$edges?>? Function(
              Iterable<
                  CopyWith$Query$UserFavorites$User$favourites$staff$edges<
                      Query$UserFavorites$User$favourites$staff$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$UserFavorites$User$favourites$staff<TRes>
    implements CopyWith$Query$UserFavorites$User$favourites$staff<TRes> {
  _CopyWithImpl$Query$UserFavorites$User$favourites$staff(
    this._instance,
    this._then,
  );

  final Query$UserFavorites$User$favourites$staff _instance;

  final TRes Function(Query$UserFavorites$User$favourites$staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserFavorites$User$favourites$staff(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges
                as List<Query$UserFavorites$User$favourites$staff$edges?>?),
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
          Iterable<Query$UserFavorites$User$favourites$staff$edges?>? Function(
                  Iterable<
                      CopyWith$Query$UserFavorites$User$favourites$staff$edges<
                          Query$UserFavorites$User$favourites$staff$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$UserFavorites$User$favourites$staff$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$UserFavorites$User$favourites$staff<TRes>
    implements CopyWith$Query$UserFavorites$User$favourites$staff<TRes> {
  _CopyWithStubImpl$Query$UserFavorites$User$favourites$staff(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$UserFavorites$User$favourites$staff$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  edges(_fn) => _res;
}

class Query$UserFavorites$User$favourites$staff$edges {
  Query$UserFavorites$User$favourites$staff$edges({
    this.id,
    this.favouriteOrder,
    this.node,
    this.$__typename = 'StaffEdge',
  });

  factory Query$UserFavorites$User$favourites$staff$edges.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$favouriteOrder = json['favouriteOrder'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$UserFavorites$User$favourites$staff$edges(
      id: (l$id as int?),
      favouriteOrder: (l$favouriteOrder as int?),
      node: l$node == null
          ? null
          : Fragment$StaffFragment.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final int? favouriteOrder;

  final Fragment$StaffFragment? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$favouriteOrder = favouriteOrder;
    _resultData['favouriteOrder'] = l$favouriteOrder;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$favouriteOrder = favouriteOrder;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$favouriteOrder,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserFavorites$User$favourites$staff$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$favouriteOrder = favouriteOrder;
    final lOther$favouriteOrder = other.favouriteOrder;
    if (l$favouriteOrder != lOther$favouriteOrder) {
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

extension UtilityExtension$Query$UserFavorites$User$favourites$staff$edges
    on Query$UserFavorites$User$favourites$staff$edges {
  CopyWith$Query$UserFavorites$User$favourites$staff$edges<
          Query$UserFavorites$User$favourites$staff$edges>
      get copyWith => CopyWith$Query$UserFavorites$User$favourites$staff$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserFavorites$User$favourites$staff$edges<TRes> {
  factory CopyWith$Query$UserFavorites$User$favourites$staff$edges(
    Query$UserFavorites$User$favourites$staff$edges instance,
    TRes Function(Query$UserFavorites$User$favourites$staff$edges) then,
  ) = _CopyWithImpl$Query$UserFavorites$User$favourites$staff$edges;

  factory CopyWith$Query$UserFavorites$User$favourites$staff$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserFavorites$User$favourites$staff$edges;

  TRes call({
    int? id,
    int? favouriteOrder,
    Fragment$StaffFragment? node,
    String? $__typename,
  });
  CopyWith$Fragment$StaffFragment<TRes> get node;
}

class _CopyWithImpl$Query$UserFavorites$User$favourites$staff$edges<TRes>
    implements CopyWith$Query$UserFavorites$User$favourites$staff$edges<TRes> {
  _CopyWithImpl$Query$UserFavorites$User$favourites$staff$edges(
    this._instance,
    this._then,
  );

  final Query$UserFavorites$User$favourites$staff$edges _instance;

  final TRes Function(Query$UserFavorites$User$favourites$staff$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? favouriteOrder = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserFavorites$User$favourites$staff$edges(
        id: id == _undefined ? _instance.id : (id as int?),
        favouriteOrder: favouriteOrder == _undefined
            ? _instance.favouriteOrder
            : (favouriteOrder as int?),
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$StaffFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$StaffFragment<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$StaffFragment.stub(_then(_instance))
        : CopyWith$Fragment$StaffFragment(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$UserFavorites$User$favourites$staff$edges<TRes>
    implements CopyWith$Query$UserFavorites$User$favourites$staff$edges<TRes> {
  _CopyWithStubImpl$Query$UserFavorites$User$favourites$staff$edges(this._res);

  TRes _res;

  call({
    int? id,
    int? favouriteOrder,
    Fragment$StaffFragment? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$StaffFragment<TRes> get node =>
      CopyWith$Fragment$StaffFragment.stub(_res);
}

class Query$UserFavorites$User$favourites$studios {
  Query$UserFavorites$User$favourites$studios({
    this.pageInfo,
    this.edges,
    this.$__typename = 'StudioConnection',
  });

  factory Query$UserFavorites$User$favourites$studios.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$UserFavorites$User$favourites$studios(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$UserFavorites$User$favourites$studios$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$UserFavorites$User$favourites$studios$edges?>? edges;

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
    if (!(other is Query$UserFavorites$User$favourites$studios) ||
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

extension UtilityExtension$Query$UserFavorites$User$favourites$studios
    on Query$UserFavorites$User$favourites$studios {
  CopyWith$Query$UserFavorites$User$favourites$studios<
          Query$UserFavorites$User$favourites$studios>
      get copyWith => CopyWith$Query$UserFavorites$User$favourites$studios(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserFavorites$User$favourites$studios<TRes> {
  factory CopyWith$Query$UserFavorites$User$favourites$studios(
    Query$UserFavorites$User$favourites$studios instance,
    TRes Function(Query$UserFavorites$User$favourites$studios) then,
  ) = _CopyWithImpl$Query$UserFavorites$User$favourites$studios;

  factory CopyWith$Query$UserFavorites$User$favourites$studios.stub(TRes res) =
      _CopyWithStubImpl$Query$UserFavorites$User$favourites$studios;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$UserFavorites$User$favourites$studios$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$UserFavorites$User$favourites$studios$edges?>? Function(
              Iterable<
                  CopyWith$Query$UserFavorites$User$favourites$studios$edges<
                      Query$UserFavorites$User$favourites$studios$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$UserFavorites$User$favourites$studios<TRes>
    implements CopyWith$Query$UserFavorites$User$favourites$studios<TRes> {
  _CopyWithImpl$Query$UserFavorites$User$favourites$studios(
    this._instance,
    this._then,
  );

  final Query$UserFavorites$User$favourites$studios _instance;

  final TRes Function(Query$UserFavorites$User$favourites$studios) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserFavorites$User$favourites$studios(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges
                as List<Query$UserFavorites$User$favourites$studios$edges?>?),
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
          Iterable<Query$UserFavorites$User$favourites$studios$edges?>? Function(
                  Iterable<
                      CopyWith$Query$UserFavorites$User$favourites$studios$edges<
                          Query$UserFavorites$User$favourites$studios$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$UserFavorites$User$favourites$studios$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$UserFavorites$User$favourites$studios<TRes>
    implements CopyWith$Query$UserFavorites$User$favourites$studios<TRes> {
  _CopyWithStubImpl$Query$UserFavorites$User$favourites$studios(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$UserFavorites$User$favourites$studios$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  edges(_fn) => _res;
}

class Query$UserFavorites$User$favourites$studios$edges {
  Query$UserFavorites$User$favourites$studios$edges({
    this.id,
    this.favouriteOrder,
    this.node,
    this.$__typename = 'StudioEdge',
  });

  factory Query$UserFavorites$User$favourites$studios$edges.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$favouriteOrder = json['favouriteOrder'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$UserFavorites$User$favourites$studios$edges(
      id: (l$id as int?),
      favouriteOrder: (l$favouriteOrder as int?),
      node: l$node == null
          ? null
          : Fragment$StudioFragment.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final int? favouriteOrder;

  final Fragment$StudioFragment? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$favouriteOrder = favouriteOrder;
    _resultData['favouriteOrder'] = l$favouriteOrder;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$favouriteOrder = favouriteOrder;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$favouriteOrder,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserFavorites$User$favourites$studios$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$favouriteOrder = favouriteOrder;
    final lOther$favouriteOrder = other.favouriteOrder;
    if (l$favouriteOrder != lOther$favouriteOrder) {
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

extension UtilityExtension$Query$UserFavorites$User$favourites$studios$edges
    on Query$UserFavorites$User$favourites$studios$edges {
  CopyWith$Query$UserFavorites$User$favourites$studios$edges<
          Query$UserFavorites$User$favourites$studios$edges>
      get copyWith =>
          CopyWith$Query$UserFavorites$User$favourites$studios$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserFavorites$User$favourites$studios$edges<
    TRes> {
  factory CopyWith$Query$UserFavorites$User$favourites$studios$edges(
    Query$UserFavorites$User$favourites$studios$edges instance,
    TRes Function(Query$UserFavorites$User$favourites$studios$edges) then,
  ) = _CopyWithImpl$Query$UserFavorites$User$favourites$studios$edges;

  factory CopyWith$Query$UserFavorites$User$favourites$studios$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserFavorites$User$favourites$studios$edges;

  TRes call({
    int? id,
    int? favouriteOrder,
    Fragment$StudioFragment? node,
    String? $__typename,
  });
  CopyWith$Fragment$StudioFragment<TRes> get node;
}

class _CopyWithImpl$Query$UserFavorites$User$favourites$studios$edges<TRes>
    implements
        CopyWith$Query$UserFavorites$User$favourites$studios$edges<TRes> {
  _CopyWithImpl$Query$UserFavorites$User$favourites$studios$edges(
    this._instance,
    this._then,
  );

  final Query$UserFavorites$User$favourites$studios$edges _instance;

  final TRes Function(Query$UserFavorites$User$favourites$studios$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? favouriteOrder = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserFavorites$User$favourites$studios$edges(
        id: id == _undefined ? _instance.id : (id as int?),
        favouriteOrder: favouriteOrder == _undefined
            ? _instance.favouriteOrder
            : (favouriteOrder as int?),
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$StudioFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$StudioFragment<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$StudioFragment.stub(_then(_instance))
        : CopyWith$Fragment$StudioFragment(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$UserFavorites$User$favourites$studios$edges<TRes>
    implements
        CopyWith$Query$UserFavorites$User$favourites$studios$edges<TRes> {
  _CopyWithStubImpl$Query$UserFavorites$User$favourites$studios$edges(
      this._res);

  TRes _res;

  call({
    int? id,
    int? favouriteOrder,
    Fragment$StudioFragment? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$StudioFragment<TRes> get node =>
      CopyWith$Fragment$StudioFragment.stub(_res);
}
