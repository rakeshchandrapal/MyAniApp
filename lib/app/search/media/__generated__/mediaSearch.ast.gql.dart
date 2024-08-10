// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gql/ast.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/media.ast.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.ast.gql.dart'
    as _i2;

const GenreCollection = _i1.OperationDefinitionNode(
  type: _i1.OperationType.query,
  name: _i1.NameNode(value: 'GenreCollection'),
  variableDefinitions: [],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'GenreCollection'),
      alias: _i1.NameNode(value: 'genres'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    _i1.FieldNode(
      name: _i1.NameNode(value: 'MediaTagCollection'),
      alias: _i1.NameNode(value: 'tags'),
      arguments: [],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        _i1.FieldNode(
          name: _i1.NameNode(value: 'description'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        _i1.FieldNode(
          name: _i1.NameNode(value: 'category'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        _i1.FieldNode(
          name: _i1.NameNode(value: 'isAdult'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
  ]),
);
const Search = _i1.OperationDefinitionNode(
  type: _i1.OperationType.query,
  name: _i1.NameNode(value: 'Search'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'page')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'perPage')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'type')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'MediaType'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'format')),
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'MediaFormat'),
          isNonNull: false,
        ),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'sort')),
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'MediaSort'),
          isNonNull: false,
        ),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(
          value: _i1.ListValueNode(values: [
        _i1.EnumValueNode(name: _i1.NameNode(value: 'POPULARITY_DESC')),
        _i1.EnumValueNode(name: _i1.NameNode(value: 'SCORE_DESC')),
      ])),
      directives: [],
    ),
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
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'search')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'year')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'yearGreater')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'FuzzyDateInt'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'yearLesser')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'FuzzyDateInt'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'genres')),
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'String'),
          isNonNull: false,
        ),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'with_tags')),
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'String'),
          isNonNull: false,
        ),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'without_tags')),
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'String'),
          isNonNull: false,
        ),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'isAdult')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue:
          _i1.DefaultValueNode(value: _i1.BooleanValueNode(value: false)),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'onList')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'countryOfOrigin')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'CountryCode'),
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
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'page'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'page')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'perPage'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'perPage')),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'pageInfo'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
              name: _i1.NameNode(value: 'PageInfo'),
              directives: [],
            )
          ]),
        ),
        _i1.FieldNode(
          name: _i1.NameNode(value: 'media'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'isAdult'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'isAdult')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'type'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'type')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'sort'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'sort')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'format_in'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'format')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'season'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'season')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'seasonYear'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'seasonYear')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'startDate_like'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'year')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'startDate_greater'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'yearGreater')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'startDate_lesser'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'yearLesser')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'search'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'search')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'genre_in'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'genres')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'tag_in'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'with_tags')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'tag_not_in'),
              value:
                  _i1.VariableNode(name: _i1.NameNode(value: 'without_tags')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'onList'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'onList')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'countryOfOrigin'),
              value: _i1.VariableNode(
                  name: _i1.NameNode(value: 'countryOfOrigin')),
            ),
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
              name: _i1.NameNode(value: 'MediaFragment'),
              directives: [],
            )
          ]),
        ),
      ]),
    )
  ]),
);
const document = _i1.DocumentNode(definitions: [
  GenreCollection,
  Search,
  _i2.PageInfo,
  _i3.MediaFragment,
]);
