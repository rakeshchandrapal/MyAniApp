// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gql/ast.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.ast.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/review.ast.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/user.ast.gql.dart'
    as _i4;

const MediaReviews = _i1.OperationDefinitionNode(
  type: _i1.OperationType.query,
  name: _i1.NameNode(value: 'MediaReviews'),
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
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'page')),
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
      name: _i1.NameNode(value: 'Media'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'id'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'mediaId')),
        )
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        _i1.FieldNode(
          name: _i1.NameNode(value: 'reviews'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'page'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'page')),
            ),
            _i1.ArgumentNode(
              name: _i1.NameNode(value: 'sort'),
              value: _i1.ListValueNode(values: [
                _i1.EnumValueNode(name: _i1.NameNode(value: 'RATING_DESC')),
                _i1.EnumValueNode(name: _i1.NameNode(value: 'ID')),
              ]),
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
              name: _i1.NameNode(value: 'nodes'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: _i1.SelectionSetNode(selections: [
                _i1.FragmentSpreadNode(
                  name: _i1.NameNode(value: 'ReviewFragment'),
                  directives: [],
                ),
                _i1.FieldNode(
                  name: _i1.NameNode(value: 'score'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                _i1.FieldNode(
                  name: _i1.NameNode(value: 'userRating'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ]),
            ),
          ]),
        ),
      ]),
    )
  ]),
);
const document = _i1.DocumentNode(definitions: [
  MediaReviews,
  _i2.PageInfo,
  _i3.ReviewFragment,
  _i4.UserFragment,
]);
