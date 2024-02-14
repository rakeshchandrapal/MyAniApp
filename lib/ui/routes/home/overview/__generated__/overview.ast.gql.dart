// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gql/ast.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/fuzzy_date.ast.gql.dart'
    as _i7;
import 'package:myaniapp/graphql/fragments/__generated__/media.ast.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/media_entry.ast.gql.dart'
    as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/releasing_media.ast.gql.dart'
    as _i5;
import 'package:myaniapp/graphql/fragments/__generated__/review.ast.gql.dart'
    as _i8;
import 'package:myaniapp/graphql/fragments/__generated__/thread.ast.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/user.ast.gql.dart'
    as _i4;

const HomeOverview = _i1.OperationDefinitionNode(
  type: _i1.OperationType.query,
  name: _i1.NameNode(value: 'HomeOverview'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'page')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: _i1.IntValueNode(value: '1')),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'userId')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
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
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'Page'),
      alias: _i1.NameNode(value: 'releasing'),
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'page'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'page')),
        )
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'media'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'onList'),
              value: _i1.BooleanValueNode(value: true),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'status_in'),
              value: _i1.ListValueNode(values: [
                _i1.EnumValueNode(name: _i1.NameNode(value: 'RELEASING')),
                _i1.EnumValueNode(
                    name: _i1.NameNode(value: 'NOT_YET_RELEASED')),
              ]),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'sort'),
              value: _i1.ListValueNode(values: [
                _i1.EnumValueNode(name: _i1.NameNode(value: 'STATUS')),
                _i1.EnumValueNode(name: _i1.NameNode(value: 'START_DATE')),
              ]),
            ),
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
              name: _i1.NameNode(value: 'ReleasingMedia'),
              directives: [],
            )
          ]),
        )
      ]),
    ),
    _i1.FieldNode(
      name: _i1.NameNode(value: 'Page'),
      alias: _i1.NameNode(value: 'list'),
      arguments: [],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'mediaList'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'userId'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'userId')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'status_in'),
              value: _i1.ListValueNode(values: [
                _i1.EnumValueNode(name: _i1.NameNode(value: 'CURRENT')),
                _i1.EnumValueNode(name: _i1.NameNode(value: 'REPEATING')),
              ]),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'sort'),
              value: _i1.EnumValueNode(
                  name: _i1.NameNode(value: 'UPDATED_TIME_DESC')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'type'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'type')),
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
    ),
    _i1.FieldNode(
      name: _i1.NameNode(value: 'Page'),
      alias: _i1.NameNode(value: 'forums'),
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'perPage'),
          value: _i1.IntValueNode(value: '5'),
        )
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'threads'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'sort'),
              value: _i1.EnumValueNode(
                  name: _i1.NameNode(value: 'REPLIED_AT_DESC')),
            )
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
              name: _i1.NameNode(value: 'ThreadFragment'),
              directives: [],
            )
          ]),
        )
      ]),
    ),
    _i1.FieldNode(
      name: _i1.NameNode(value: 'Page'),
      alias: _i1.NameNode(value: 'reviews'),
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'perPage'),
          value: _i1.IntValueNode(value: '6'),
        )
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'reviews'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'sort'),
              value: _i1.EnumValueNode(name: _i1.NameNode(value: 'ID_DESC')),
            )
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
              name: _i1.NameNode(value: 'Review'),
              directives: [],
            )
          ]),
        )
      ]),
    ),
  ]),
);
const document = _i1.DocumentNode(definitions: [
  HomeOverview,
  _i2.ThreadFragment,
  _i3.MediaFragment,
  _i4.UserFragment,
  _i5.ReleasingMedia,
  _i6.MediaListEntry,
  _i7.FuzzyDate,
  _i8.Review,
]);
