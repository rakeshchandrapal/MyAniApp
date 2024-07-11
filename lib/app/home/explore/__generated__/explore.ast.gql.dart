// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gql/ast.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/media.ast.gql.dart'
    as _i2;

const Explore = _i1.OperationDefinitionNode(
  type: _i1.OperationType.query,
  name: _i1.NameNode(value: 'Explore'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'season')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'MediaSeason'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'seasonYear')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'nextSeason')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'MediaSeason'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'nextYear')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'Page'),
      alias: _i1.NameNode(value: 'trending'),
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'page'),
          value: _i1.IntValueNode(value: '1'),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'perPage'),
          value: _i1.IntValueNode(value: '10'),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'media'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'sort'),
              value:
                  _i1.EnumValueNode(name: _i1.NameNode(value: 'TRENDING_DESC')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'type'),
              value: _i1.EnumValueNode(name: _i1.NameNode(value: 'ANIME')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'isAdult'),
              value: _i1.BooleanValueNode(value: false),
            ),
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
              name: _i1.NameNode(value: 'MediaFragment'),
              directives: [],
            )
          ]),
        )
      ]),
    ),
    _i1.FieldNode(
      name: _i1.NameNode(value: 'Page'),
      alias: _i1.NameNode(value: 'season'),
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'page'),
          value: _i1.IntValueNode(value: '1'),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'perPage'),
          value: _i1.IntValueNode(value: '13'),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'media'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'season'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'season')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'seasonYear'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'seasonYear')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'sort'),
              value: _i1.EnumValueNode(
                  name: _i1.NameNode(value: 'POPULARITY_DESC')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'type'),
              value: _i1.EnumValueNode(name: _i1.NameNode(value: 'ANIME')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'isAdult'),
              value: _i1.BooleanValueNode(value: false),
            ),
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
              name: _i1.NameNode(value: 'MediaFragment'),
              directives: [],
            )
          ]),
        )
      ]),
    ),
    _i1.FieldNode(
      name: _i1.NameNode(value: 'Page'),
      alias: _i1.NameNode(value: 'nextSeason'),
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'page'),
          value: _i1.IntValueNode(value: '1'),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'perPage'),
          value: _i1.IntValueNode(value: '14'),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'media'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'season'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'nextSeason')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'seasonYear'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'nextYear')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'sort'),
              value: _i1.EnumValueNode(
                  name: _i1.NameNode(value: 'POPULARITY_DESC')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'type'),
              value: _i1.EnumValueNode(name: _i1.NameNode(value: 'ANIME')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'isAdult'),
              value: _i1.BooleanValueNode(value: false),
            ),
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
              name: _i1.NameNode(value: 'MediaFragment'),
              directives: [],
            )
          ]),
        )
      ]),
    ),
    _i1.FieldNode(
      name: _i1.NameNode(value: 'Page'),
      alias: _i1.NameNode(value: 'popular'),
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'page'),
          value: _i1.IntValueNode(value: '1'),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'perPage'),
          value: _i1.IntValueNode(value: '11'),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'media'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'sort'),
              value: _i1.EnumValueNode(
                  name: _i1.NameNode(value: 'POPULARITY_DESC')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'type'),
              value: _i1.EnumValueNode(name: _i1.NameNode(value: 'ANIME')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'isAdult'),
              value: _i1.BooleanValueNode(value: false),
            ),
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
              name: _i1.NameNode(value: 'MediaFragment'),
              directives: [],
            )
          ]),
        )
      ]),
    ),
    _i1.FieldNode(
      name: _i1.NameNode(value: 'Page'),
      alias: _i1.NameNode(value: 'recent'),
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'page'),
          value: _i1.IntValueNode(value: '1'),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'perPage'),
          value: _i1.IntValueNode(value: '12'),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'media'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'sort'),
              value: _i1.EnumValueNode(name: _i1.NameNode(value: 'ID_DESC')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'isAdult'),
              value: _i1.BooleanValueNode(value: false),
            ),
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
              name: _i1.NameNode(value: 'MediaFragment'),
              directives: [],
            )
          ]),
        )
      ]),
    ),
  ]),
);
const document = _i1.DocumentNode(definitions: [
  Explore,
  _i2.MediaFragment,
]);
