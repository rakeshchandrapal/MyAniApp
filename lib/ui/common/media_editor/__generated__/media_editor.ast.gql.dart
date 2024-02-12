// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gql/ast.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/fuzzy_date.ast.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/media.ast.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/media_entry.ast.gql.dart'
    as _i2;

const MediaEntry = _i1.OperationDefinitionNode(
  type: _i1.OperationType.query,
  name: _i1.NameNode(value: 'MediaEntry'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'mediaId')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'userId')),
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
      name: _i1.NameNode(value: 'MediaList'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'mediaId'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'mediaId')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'userId'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'userId')),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FragmentSpreadNode(
          name: _i1.NameNode(value: 'MediaListEntry'),
          directives: [],
        )
      ]),
    )
  ]),
);
const SaveMediaListEntry = _i1.OperationDefinitionNode(
  type: _i1.OperationType.mutation,
  name: _i1.NameNode(value: 'SaveMediaListEntry'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'id')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'mediaId')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'status')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'MediaListStatus'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'score')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Float'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'scoreRaw')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'progress')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'progressVolumes')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'repeat')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'priority')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'private')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'notes')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable:
          _i1.VariableNode(name: _i1.NameNode(value: 'hiddenFromStatusLists')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'customLists')),
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
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'advancedScores')),
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'Float'),
          isNonNull: false,
        ),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'startedAt')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'FuzzyDateInput'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'completedAt')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'FuzzyDateInput'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'SaveMediaListEntry'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'id'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'id')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'mediaId'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'mediaId')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'status'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'status')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'score'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'score')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'scoreRaw'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'scoreRaw')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'progress'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'progress')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'progressVolumes'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'progressVolumes')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'repeat'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'repeat')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'priority'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'priority')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'private'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'private')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'notes'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'notes')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'hiddenFromStatusLists'),
          value: _i1.VariableNode(
              name: _i1.NameNode(value: 'hiddenFromStatusLists')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'customLists'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'customLists')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'advancedScores'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'advancedScores')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'startedAt'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'startedAt')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'completedAt'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'completedAt')),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FragmentSpreadNode(
          name: _i1.NameNode(value: 'MediaListEntry'),
          directives: [],
        )
      ]),
    )
  ]),
);
const DeleteMediaListEntry = _i1.OperationDefinitionNode(
  type: _i1.OperationType.mutation,
  name: _i1.NameNode(value: 'DeleteMediaListEntry'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'id')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    )
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'DeleteMediaListEntry'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'id'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'id')),
        )
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'deleted'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        )
      ]),
    )
  ]),
);
const document = _i1.DocumentNode(definitions: [
  MediaEntry,
  SaveMediaListEntry,
  DeleteMediaListEntry,
  _i2.MediaListEntry,
  _i3.FuzzyDate,
  _i4.MediaFragment,
]);
