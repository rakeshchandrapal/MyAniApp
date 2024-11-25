import 'package:hive/hive.dart';
import 'package:mygraphql/src/stores/store.dart';

class HiveStore extends Store<Map<String, dynamic>?> {
  HiveStore(this.box);

  final Box box;

  @override
  void clear() {
    box.deleteAll(box.keys);
  }

  @override
  void delete(String id) {
    box.delete(id);
  }

  @override
  Map<String, dynamic>? get(String id) {
    var c = box.get(id);
    return c != null ? Map.from(c) : null;
  }

  @override
  void set(String id, data) {
    box.put(id, data);
  }
}
