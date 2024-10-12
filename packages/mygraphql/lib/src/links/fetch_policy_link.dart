import 'dart:async';

import 'package:gql/ast.dart';
import 'package:gql_exec/src/request.dart';
import 'package:gql_exec/src/response.dart';
import 'package:gql_link/gql_link.dart';
import 'package:mygraphql/graphql.dart';
import 'package:normalize/utils.dart';

var _defaultFetchPolicy = {
  OperationType.query: FetchPolicy.cacheFirst,
  OperationType.mutation: FetchPolicy.networkOnly,
  OperationType.subscription: FetchPolicy.cacheAndNetwork,
};

class FetchPolicyLink extends Link {
  final Cache cache;
  final FetchPolicy? fetchPolicy;

  FetchPolicyLink(this.cache, this.fetchPolicy);

  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    var type = getOperationDefinition(
            request.operation.document, request.operation.operationName)
        .type;
    FetchPolicy policy = (fetchPolicy ?? _defaultFetchPolicy[type])!;

    if (policy == FetchPolicy.cacheOnly) {
      var cacheData = cache.readQuery(request);

      if (cacheData != null) {
        yield Response(response: {'data': cacheData}, data: cacheData);
        return;
      }
    }

    switch (policy) {
      case FetchPolicy.cacheFirst:
      case FetchPolicy.cacheOnly:
        {
          var cacheData = cache.readQuery(request);

          if (cacheData != null) {
            yield Response(response: {'data': cacheData}, data: cacheData);
            return;
          }
        }
      case FetchPolicy.cacheAndNetwork:
        {
          var cacheData = cache.readQuery(request);

          if (cacheData != null) {
            yield Response(response: {'data': cacheData}, data: cacheData);
            break;
          }
        }

      default:
        yield GQLResponse.loading();
        break;
    }

    yield* forward!(request).map(
      (event) {
        if (event.data != null && policy != FetchPolicy.noCache) {
          cache.writeQuery(request, event.data!);
        }

        return event;
      },
    );
  }
}
