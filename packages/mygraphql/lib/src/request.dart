import 'package:gql_exec/gql_exec.dart';
import 'package:mygraphql/src/fetch_policy.dart';
import 'package:mygraphql/src/gql.dart';

class GQLRequest<T> extends Request {
  final String query;
  final T Function(Map<String, dynamic> json)? parseData;
  final FetchPolicy? fetchPolicy;
  final Map<String, dynamic>? Function(
          Map<String, dynamic>? previousResult, Map<String, dynamic> result)?
      mergeResults;

  GQLRequest(this.query,
      {super.variables, this.parseData, this.mergeResults, this.fetchPolicy})
      : super(operation: Operation(document: transformGQL(query)));
}

/// path is how to traverse the map
///
/// ex. path = "Page.notifications" -> result?["Page"]?["notifications"]
Map<String, dynamic>? Function(
        Map<String, dynamic>? previousResult, Map<String, dynamic> result)
    defaultMergeResults(String path) {
  return (prev, next) {
    var prevValue = prev != null ? mapGetter(prev['data'], path, []) : [];

    return mapSetter(next, "data.$path",
        [...prevValue, ...mapGetter(next['data'], path, [])]);
  };
}

T mapGetter<T>(Map map, String path, T defaultValue) {
  List<String> keys = path.split('.');
  String key = keys[0];

  if (!map.containsKey(key)) {
    return defaultValue;
  }

  if (keys.length == 1) {
    return map[key] as T;
  }

  return mapGetter(map[keys.removeAt(0)], keys.join('.'), defaultValue);
}

Map<String, dynamic> mapSetter<T>(
  Map<String, dynamic>? map,
  String path,
  T value,
) {
  List<String> keys = path.split('.');
  String key = keys[0];
  Map<String, dynamic> target = map ?? {};

  if (keys.length == 1) {
    return Map<String, dynamic>.from({
      ...target,
      key: value,
    });
  }

  return Map<String, dynamic>.from({
    ...target,
    key: mapSetter(target[keys.removeAt(0)] ?? {}, keys.join('.'), value),
  });
}

dynamic getValueFromKey(Map<String, dynamic> map, List<String> path) {
  Map<String, dynamic> map0 = map;

  for (String element in path) {
    if (map0[element] is Map<String, dynamic>) {
      map0 = map0[element];
    } else {
      return map0[element];
    }
  }
}
