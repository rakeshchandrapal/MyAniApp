import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Graphql<T> extends StatelessWidget {
  final QueryHookResult<T> hook;
  final Widget Function(T result) builder;
  const Graphql({
    super.key,
    required this.hook,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    if (hook.result.isLoading && hook.result.data == null) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }

    if (hook.result.hasException) {
      if (hook.result.exception!.linkException is ServerException) {
        var message = (hook.result.exception as ServerException)
            .parsedResponse
            ?.errors
            ?.first
            .message;
        if (message == 'Invalid token') {
          return ElevatedButton(
            onPressed: () async {
              var settings = await SharedPreferences.getInstance();
              await settings.remove('token');
              context.go('/login');
            },
            child: const Text('L bozo'),
          );
        }
      }
    }

    return builder(hook.result.parsedData as T);
  }
}
