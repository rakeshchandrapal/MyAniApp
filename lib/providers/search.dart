import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/search/search.graphql.dart';

class SearchNotifier extends AutoDisposeNotifier<AsyncValue<Query$Search>> {
  late ObservableQuery<Query$Search> query;
  Variables$Query$Search? variables;

  @override
  build() {
    query = client.value.watchQuery$Search();

    query.stream.listen((event) {
      if (event.hasException) {
        state = AsyncValue.error(event.exception!, StackTrace.current);
        return;
      } else if (event.isLoading && event.parsedData == null) {
        state = const AsyncValue.loading();
        return;
      }
      state = AsyncValue.data(event.parsedData!);
    });

    ref.onDispose(() {
      query.close();
    });

    return const AsyncValue.loading();
  }

  setVariables(Variables$Query$Search vars, {bool fetch = true}) {
    variables = vars;

    state = const AsyncValue.loading();
    ref.notifyListeners();

    if (fetch) {
      query.fetchMore(
        FetchMoreOptions$Query$Search(
          updateQuery: (previousResultData, fetchMoreResultData) =>
              fetchMoreResultData,
          variables: variables,
        ),
      );
    }
  }

  MultiSourceResult<Query$Search> startFetching() {
    return query.fetchResults();
  }

  void nextPage() {
    if (query.latestResult?.isLoading == true) return;

    variables = variables!.copyWith(page: (variables!.page ?? 1) + 1);
    query.fetchMore(
      FetchMoreOptions$Query$Search(
        updateQuery: (previousResultData, fetchMoreResultData) {
          var list = [
            ...previousResultData!['Page']!['media'],
            ...fetchMoreResultData!['Page']!['media'],
          ];
          fetchMoreResultData['Page']!['media'] = list;
          return fetchMoreResultData;
        },
        variables: variables!.copyWith(page: variables!.page),
      ),
    );
  }
}

var searchProvider =
    NotifierProvider.autoDispose<SearchNotifier, AsyncValue<Query$Search>>(
  () => SearchNotifier(),
);
