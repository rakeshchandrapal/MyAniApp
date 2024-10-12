import '../../../graphql/fragments/media.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$EmbedMediaCard {
  factory Variables$Query$EmbedMediaCard({int? id}) =>
      Variables$Query$EmbedMediaCard._({
        if (id != null) r'id': id,
      });

  Variables$Query$EmbedMediaCard._(this._$data);

  factory Variables$Query$EmbedMediaCard.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Query$EmbedMediaCard._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Variables$Query$EmbedMediaCard<Variables$Query$EmbedMediaCard>
      get copyWith => CopyWith$Variables$Query$EmbedMediaCard(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$EmbedMediaCard ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Variables$Query$EmbedMediaCard<TRes> {
  factory CopyWith$Variables$Query$EmbedMediaCard(
    Variables$Query$EmbedMediaCard instance,
    TRes Function(Variables$Query$EmbedMediaCard) then,
  ) = _CopyWithImpl$Variables$Query$EmbedMediaCard;

  factory CopyWith$Variables$Query$EmbedMediaCard.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$EmbedMediaCard;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Query$EmbedMediaCard<TRes>
    implements CopyWith$Variables$Query$EmbedMediaCard<TRes> {
  _CopyWithImpl$Variables$Query$EmbedMediaCard(
    this._instance,
    this._then,
  );

  final Variables$Query$EmbedMediaCard _instance;

  final TRes Function(Variables$Query$EmbedMediaCard) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$EmbedMediaCard._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$EmbedMediaCard<TRes>
    implements CopyWith$Variables$Query$EmbedMediaCard<TRes> {
  _CopyWithStubImpl$Variables$Query$EmbedMediaCard(this._res);

  final TRes _res;

  @override
  call({int? id}) => _res;
}

class Query$EmbedMediaCard {
  Query$EmbedMediaCard({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$EmbedMediaCard.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$EmbedMediaCard(
      Media: l$Media == null
          ? null
          : Fragment$MediaFragment.fromJson((l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MediaFragment? Media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$Media = Media;
    resultData['Media'] = l$Media?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$Media = Media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$EmbedMediaCard || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Media = Media;
    final lOther$Media = other.Media;
    if (l$Media != lOther$Media) {
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

extension UtilityExtension$Query$EmbedMediaCard on Query$EmbedMediaCard {
  CopyWith$Query$EmbedMediaCard<Query$EmbedMediaCard> get copyWith =>
      CopyWith$Query$EmbedMediaCard(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EmbedMediaCard<TRes> {
  factory CopyWith$Query$EmbedMediaCard(
    Query$EmbedMediaCard instance,
    TRes Function(Query$EmbedMediaCard) then,
  ) = _CopyWithImpl$Query$EmbedMediaCard;

  factory CopyWith$Query$EmbedMediaCard.stub(TRes res) =
      _CopyWithStubImpl$Query$EmbedMediaCard;

  TRes call({
    Fragment$MediaFragment? Media,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFragment<TRes> get Media;
}

class _CopyWithImpl$Query$EmbedMediaCard<TRes>
    implements CopyWith$Query$EmbedMediaCard<TRes> {
  _CopyWithImpl$Query$EmbedMediaCard(
    this._instance,
    this._then,
  );

  final Query$EmbedMediaCard _instance;

  final TRes Function(Query$EmbedMediaCard) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$EmbedMediaCard(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Fragment$MediaFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Fragment$MediaFragment<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$EmbedMediaCard<TRes>
    implements CopyWith$Query$EmbedMediaCard<TRes> {
  _CopyWithStubImpl$Query$EmbedMediaCard(this._res);

  final TRes _res;

  @override
  call({
    Fragment$MediaFragment? Media,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Fragment$MediaFragment<TRes> get Media =>
      CopyWith$Fragment$MediaFragment.stub(_res);
}

const documentNodeQueryEmbedMediaCard = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'EmbedMediaCard'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Media'),
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
  fragmentDefinitionMediaFragment,
]);
