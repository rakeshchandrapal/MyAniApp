import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:gql_exec/gql_exec.dart' show GraphQLError;
import 'package:gql_link/gql_link.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/routes.dart';
import 'package:mygraphql/graphql.dart';

class GQLWidget<T> extends StatelessWidget {
  const GQLWidget({
    super.key,
    required this.response,
    required this.refetch,
    this.loading = const Center(
      child: CircularProgressIndicator.adaptive(),
    ),
    this.error,
    required this.builder,
    this.errorWidget = true,
  });

  final GQLResponse<T> response;
  final Widget? loading;
  final Widget? error;
  final bool errorWidget;
  final Widget Function() builder;
  final VoidCallback refetch;

  @override
  Widget build(BuildContext context) {
    if (loading == null) {
      return Show(
        when: response.errors == null && response.linkError == null,
        fallback: error ??
            GraphqlError<T>(
              exception: (response.errors, response.linkError),
              refetch: refetch,
            ),
        child: builder,
      );
    }

    return Show(
      when: !response.loading,
      fallback: loading,
      child: () => Show(
        when: (response.errors == null && response.linkError == null) ||
            !errorWidget,
        fallback: error ??
            GraphqlError<T>(
              exception: (response.errors, response.linkError),
              refetch: refetch,
            ),
        child: builder,
      ),
    );
  }
}

// class GQLRequest<TData, TVars> extends StatelessWidget {
//   const GQLRequest({
//     super.key,
//     required this.operationRequest,
//     required this.builder,
//     this.loading = const Center(
//       child: CircularProgressIndicator.adaptive(),
//     ),
//     this.error,
//     this.errorWidget = true,
//   });

//   final OperationRequest<TData, TVars> operationRequest;
//   final OperationResponseBuilder<TData, TVars> builder;
//   final Widget? loading;
//   final Widget Function(OperationResponse<TData, TVars>? response)? error;
//   final bool errorWidget;

//   @override
//   Widget build(BuildContext context) {
//     return Operation(
//       operationRequest: operationRequest,
//       builder: (context, response, _) {
//         if (response?.loading == true && loading != null) {
//           return loading!;
//         }

//         if (response?.hasErrors == true && errorWidget == true) {
//           // logger.e(response?.linkException);
//           return error?.call(response) ??
//               GraphqlError(
//                 exception: (response!.graphqlErrors, response.linkException),
//                 req: response.operationRequest,
//               );
//         }

//         return builder(
//           context,
//           response,
//           error,
//           () async => client.requestController.add(operationRequest),
//         );
//       },
//       client: client,
//     );
//   }
// }

// typedef OperationResponseBuilder<TData, TVars> = Widget Function(
//     BuildContext context,
//     OperationResponse<TData, TVars>? response,
//     Object? error,
//     Future<void> Function() refetch);

class GraphqlError<T> extends ConsumerWidget {
  final (List<GraphQLError>?, LinkException?) exception;
  final VoidCallback? refetch;

  const GraphqlError({
    super.key,
    required this.exception,
    required this.refetch,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                            onPressed: () => context.pop(),
                            child: const Text("Don't log in"),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                            onPressed: () => context.push(Routes.login),
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

    // print(exception.$1);

    // logger.e(exception);
    // }
    return SingleChildScrollView(
      child: Column(
        children: [
          SelectableText(exception.toString()),
          if (refetch != null)
            TextButton(
              onPressed: refetch,
              child: const Text("Retry"),
            ),
        ],
      ),
    );
  }
}
