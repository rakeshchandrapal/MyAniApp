import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/search/search.graphql.dart';

final searchEditorProvider = NotifierProvider.family
    .autoDispose<SearchEditorNotifier, Variables$Query$Search, String>(
  SearchEditorNotifier.new,
);

class SearchEditorNotifier
    extends AutoDisposeFamilyNotifier<Variables$Query$Search, String> {
  @override
  Variables$Query$Search build(String blah) {
    return Variables$Query$Search();
  }

  void set(Variables$Query$Search vars) {
    state = removeNulls(vars);
  }

  void merge(Variables$Query$Search vars) {
    state = removeNulls(
        Variables$Query$Search.fromJson({...state.toJson(), ...vars.toJson()}));
  }

  Variables$Query$Search removeNulls(Variables$Query$Search vars) {
    return Variables$Query$Search.fromJson(
        vars.toJson()..removeWhere((key, value) => value == null));
  }
}
