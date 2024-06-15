// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gql/ast.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/media.ast.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/thread.ast.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/user.ast.gql.dart'
    as _i4;

const ForumOverview = _i1.OperationDefinitionNode(
  type: _i1.OperationType.query,
  name: _i1.NameNode(value: 'ForumOverview'),
  variableDefinitions: [],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'Page'),
      alias: _i1.NameNode(value: 'recent'),
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'perPage'),
          value: _i1.IntValueNode(value: '14'),
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
              value: _i1.ListValueNode(values: [
                _i1.EnumValueNode(name: _i1.NameNode(value: 'IS_STICKY')),
                _i1.EnumValueNode(name: _i1.NameNode(value: 'REPLIED_AT_DESC')),
              ]),
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
      alias: _i1.NameNode(value: 'new'),
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
              value: _i1.ListValueNode(values: [
                _i1.EnumValueNode(name: _i1.NameNode(value: 'ID_DESC'))
              ]),
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
      alias: _i1.NameNode(value: 'release'),
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'perPage'),
          value: _i1.IntValueNode(value: '4'),
        )
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'threads'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'categoryId'),
              value: _i1.IntValueNode(value: '5'),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'sort'),
              value: _i1.ListValueNode(values: [
                _i1.EnumValueNode(name: _i1.NameNode(value: 'REPLIED_AT_DESC'))
              ]),
            ),
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
  ]),
);
const document = _i1.DocumentNode(definitions: [
  ForumOverview,
  _i2.ThreadFragment,
  _i3.MediaFragment,
  _i4.UserFragment,
]);
