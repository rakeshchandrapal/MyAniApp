import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';

typedef CustomQueryBuilder<TParsed> = Widget Function(
  QueryResult<TParsed> result, [
  FetchMore<TParsed>? fetchMore,
  Refetch<TParsed>? refetch,
]);

QueryBuilder<T> queryBuilder<T extends Object?>(CustomQueryBuilder<T> lol,
    [bool fresh = false]) {
  return (QueryResult<T> result,
      {Future<QueryResult<T>> Function(FetchMoreOptions)? fetchMore,
      Future<QueryResult<T>?> Function()? refetch}) {
    // print(result.);
    if (fresh
        ? result.isLoading
        : result.isLoading && result.parsedData == null) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    } else if (result.hasException) {
      return GraphqlError(exception: result.exception!);
    }
    return lol(result, fetchMore, refetch);
  };
}
