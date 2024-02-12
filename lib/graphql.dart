import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import "package:gql_exec/gql_exec.dart" hide Operation;
import 'package:gql_http_link/gql_http_link.dart';
// import 'package:graphql_flutter/graphql_flutter.dart' show AuthLink;
import 'package:hive/hive.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/ferry.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Client> initClient() async {
  final box = await Hive.openBox<Map<dynamic, dynamic>?>("graphql");

  final store = HiveStore(box);

  final cache = Cache(store: store, possibleTypes: possibleTypesMap);

  final HttpLink httpLink = HttpLink(
    'https://graphql.anilist.co',
  );

  final HttpAuthLink authLink = HttpAuthLink(
    getToken: () async {
      var instance = await SharedPreferences.getInstance();
      return instance.getString(Setting.token.setting);
    },
  );

  final Link link = authLink.concat(httpLink);

  final client = Client(
    link: link,
    cache: cache,
    defaultFetchPolicies: {
      OperationType.query: FetchPolicy.CacheAndNetwork,
    },
  );

  return client;
}

class HttpAuthLink extends Link {
  final Future<String?> Function() getToken;

  HttpAuthLink({
    required this.getToken,
  });

  Future<Request> transformRequest(Request request) async {
    final token = await getToken();

    return request.updateContextEntry<HttpLinkHeaders>(
      (headers) => HttpLinkHeaders(
        headers: <String, String>{
          ...headers?.headers ?? <String, String>{},
          if (token != null) "Authorization": token,
        },
      ),
    );
  }

  @override
  Stream<Response> request(Request request, [forward]) async* {
    final req = await transformRequest(request);

    yield* forward!(req);
  }
}

class GQLRequest<TData, TVars> extends ConsumerWidget {
  const GQLRequest({
    super.key,
    required this.operationRequest,
    required this.builder,
    this.loading,
    this.error,
  });

  final OperationRequest<TData, TVars> operationRequest;
  final OperationResponseBuilder<TData, TVars> builder;
  final Widget? loading;
  final Widget Function(OperationResponse<TData, TVars>? response)? error;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Operation(
      operationRequest: operationRequest,
      builder: (context, response, _) {
        if (response?.loading == true) {
          return loading ??
              const Center(
                child: CircularProgressIndicator.adaptive(),
              );
        }

        if (response?.hasErrors == true) {
          logger.e(response?.linkException);
          return error?.call(response) ??
              GraphqlError(
                exception: (response!.graphqlErrors, response.linkException),
              );
        }

        return builder(
          context,
          response,
          error,
          () async => ref
              .read(ferryClientProvider)
              .requestController
              .add(operationRequest),
        );
      },
      client: ref.read(ferryClientProvider),
    );
  }
}

typedef OperationResponseBuilder<TData, TVars> = Widget Function(
    BuildContext context,
    OperationResponse<TData, TVars>? response,
    Object? error,
    Future<void> Function() refetch);

class QLBuilder<TData, TVars> {
  final OperationResponse<TData, TVars>? response;
  final Object? error;

  QLBuilder(this.response, this.error);
}
