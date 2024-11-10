// TODO: Put public facing types in this file.

import 'dart:async';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gql_dedupe_link/gql_dedupe_link.dart';
import 'package:gql_error_link/gql_error_link.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:gql_link/gql_link.dart';
import 'package:mygraphql/graphql.dart';
import 'package:mygraphql/src/gql.dart';
import 'package:mygraphql/src/links/fetch_policy_link.dart';

class GraphqlClient {
  final Link _link;
  final Cache cache;

  ExceptionHandler handleException<T>(GQLRequest<T> orgRequest) {
    // sometimes it skips errors without this
    return (request, forward, exception) async* {
      yield GQLResponse<T>(
          response: {}, request: orgRequest, linkError: exception);
    };
  }

  GraphqlClient({
    required Link link,
    required this.cache,
  }) : _link = link;

  Stream<GQLResponse<T>> query<T>(GQLRequest<T> request) async* {
    var stream = Link.from([
      ErrorLink(onException: handleException<T>(request)),
      DedupeLink(),
      FetchPolicyLink(cache, request.fetchPolicy),
      _link,
    ]).request(request);

    // _streams
    //     .addAll({request.toString(): StreamController()..addStream(stream)});

    await for (var res in stream) {
      if (res is GQLResponse) {
        if (res.loading) {
          yield GQLResponse<T>.loading();
        } else {
          yield res as GQLResponse<T>;
        }
      } else {
        yield GQLResponse<T>(
          response: res.response,
          request: request,
          data: res.data,
          errors: res.errors,
          context: res.context,
          parsedData: request.parseData != null && res.data != null
              ? request.parseData!(res.data!)
              : null,
        );
      }
    }
  }

  QueryHookResult<T> useQuery<T>(GQLRequest<T> request) {
    // print(streamController.stream.single);

    return use(
      StreamHook(
        // stream,
        request: request,
        initialData: GQLResponse.loading(request: request),
        client: this,
      ),
    );
  }

  Map<String, dynamic>? readQuery(
      String query, Map<String, dynamic> variables) {
    return cache.readQuery(
      Request(
        operation: Operation(
          document: transformGQL(query),
        ),
        variables: variables,
      ),
    );
  }
}
