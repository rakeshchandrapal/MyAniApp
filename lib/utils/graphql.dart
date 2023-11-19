import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';

QueryBuilder<T> queryBuilder<T extends Object?>(QueryBuilder<T> lol) {
  return (QueryResult<T> result,
      {Future<QueryResult<T>> Function(FetchMoreOptions)? fetchMore,
      Future<QueryResult<T>?> Function()? refetch}) {
    if (result.isLoading && result.parsedData == null) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    } else if (result.hasException) {
      return GraphqlError(exception: result.exception!);
    }
    return lol(result, fetchMore: fetchMore, refetch: refetch);
  };
}
