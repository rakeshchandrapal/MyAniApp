import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Graphql<T> extends StatelessWidget {
  const Graphql({
    super.key,
    required this.hook,
    required this.builder,
  });

  final Widget Function(T result) builder;
  final QueryHookResult<T> hook;

  @override
  Widget build(BuildContext context) {
    if (hook.result.isLoading && hook.result.data == null) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }

    if (hook.result.hasException) {
      if (hook.result.exception!.linkException != null &&
          hook.result.exception!.linkException is ServerException) {
        print(hook.result.exception?.linkException);
        var message = (hook.result.exception!.linkException as ServerException)
            .parsedResponse
            ?.errors
            ?.first
            .message;
        if (message == 'Invalid token') {
          return ElevatedButton(
            onPressed: () async {
              var settings = await SharedPreferences.getInstance();
              await settings.remove('token');
              context.router.popAndPush(const LoginRoute());
            },
            child: const Text('L bozo'),
          );
        }
      }

      if (hook.result.data == null) {
        return const Center(
          child: Text('An error occurred'),
        );
      }
    }

    return builder(hook.result.parsedData as T);
  }
}
