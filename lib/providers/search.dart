import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/ui/routes/search/search.dart';

Provider<_Query> searchProvider = Provider((ref) => _Query(ref));

class _Query {
  SearchQuery q = SearchQuery();
  final Ref _ref;

  _Query(this._ref);

  void update(SearchQuery s) {
    q = s;
    _ref.notifyListeners();
  }
}
