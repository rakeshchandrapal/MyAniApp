import 'package:mygraphql/src/stores/store.dart';

class InMemoryStore extends Store<Map<String, dynamic>> {
  final Map<String, dynamic> _cache = {};

  @override
  void clear() {
    _cache.removeWhere(
      (key, value) => true,
    );
  }

  @override
  void delete(String id) {
    _cache.remove(id);
  }

  @override
  Map<String, dynamic>? get(String id) {
    return _cache[id];
  }

  @override
  void set(String id, Map<String, dynamic> data) {
    _cache[id] = data;
  }
}
