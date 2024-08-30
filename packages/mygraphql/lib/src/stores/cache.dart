import 'package:gql_exec/gql_exec.dart';
import 'package:mygraphql/src/stores/store.dart';
import 'package:normalize/normalize.dart';

class Cache {
  final Map<String, Set<String>> possibleTypes;
  final Store store;

  Cache({this.possibleTypes = const {}, required this.store});

  void writeQuery(Request request, Map<String, dynamic> data) {
    normalizeOperation(
      write: (dataId, value) => store.set(dataId, value),
      read: (dataId) => store.get(dataId),
      document: request.operation.document,
      data: data,
      variables: request.variables,
      possibleTypes: possibleTypes,
    );
  }

  Map<String, dynamic>? readQuery(Request request) {
    return denormalizeOperation(
      read: (dataId) => store.get(dataId),
      document: request.operation.document,
      variables: request.variables,
      possibleTypes: possibleTypes,
    );
  }
}
