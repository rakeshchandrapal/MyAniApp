abstract class Store<T> {
  T? get(String id);
  void set(String id, T data);
  void clear();
  void delete(String id);
}
