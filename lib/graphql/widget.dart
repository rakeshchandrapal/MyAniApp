import 'package:auto_route/auto_route.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gql_exec/gql_exec.dart' as g;
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/router.gr.dart';

class GQLRequest<TData, TVars> extends StatelessWidget {
  const GQLRequest({
    super.key,
    required this.operationRequest,
    required this.builder,
    this.loading = const Center(
      child: CircularProgressIndicator.adaptive(),
    ),
    this.error,
    this.errorWidget = true,
  });

  final OperationRequest<TData, TVars> operationRequest;
  final OperationResponseBuilder<TData, TVars> builder;
  final Widget? loading;
  final Widget Function(OperationResponse<TData, TVars>? response)? error;
  final bool errorWidget;

  @override
  Widget build(BuildContext context) {
    return Operation(
      operationRequest: operationRequest,
      builder: (context, response, _) {
        if (response?.loading == true && loading != null) {
          return loading!;
        }

        if (response?.hasErrors == true && errorWidget == true) {
          // logger.e(response?.linkException);
          return error?.call(response) ??
              GraphqlError(
                exception: (response!.graphqlErrors, response.linkException),
                req: response.operationRequest,
              );
        }

        return builder(
          context,
          response,
          error,
          () async => client.requestController.add(operationRequest),
        );
      },
      client: client,
    );
  }
}

typedef OperationResponseBuilder<TData, TVars> = Widget Function(
    BuildContext context,
    OperationResponse<TData, TVars>? response,
    Object? error,
    Future<void> Function() refetch);

class GraphqlError extends ConsumerWidget {
  final (List<g.GraphQLError>?, LinkException?) exception;
  final OperationRequest? req;

  const GraphqlError({super.key, required this.exception, this.req});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // if (exception.$2 is ServerException) {
    // print(exception.$2);
    print(exception.$1);
    if (exception.$2 is ServerException) {
      var e = exception.$2 as ServerException;
      if (e.parsedResponse?.errors?.first.message == "Invalid token") {
        ref.read(settingsProvider.notifier).updateToken(null);
        WidgetsBinding.instance.addPostFrameCallback(
          (timeStamp) {
            showDialog(
              context: context,
              builder: (context) => Dialog(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Login in information invalid"),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () => context.maybePop(),
                            child: const Text("Don't log in"),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                            onPressed: () => context.pushRoute(LoginRoute()),
                            child: const Text("Log in"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      }
    }
    print(exception.$2);

    // logger.e(exception);
    // }
    return SingleChildScrollView(
      child: Column(
        children: [
          SelectableText(exception.toString()),
          if (req != null)
            TextButton(
              onPressed: () => client.requestController.add(req!),
              child: const Text("Retry"),
            ),
        ],
      ),
    );
  }
}
