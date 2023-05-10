import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/providers/settings.dart';

@RoutePage()
class TokenLoginPage extends HookConsumerWidget {
  const TokenLoginPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    var controller = useTextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: controller,
          ),
          ElevatedButton(
            onPressed: () {
              if (controller.text.isEmpty) return;
              // print(controller.text);
              ref
                  .read(settingsProvider.notifier)
                  .login(controller.text)
                  .then((value) => context.router.pushNamed('/'));
              // context.router.pushNamed('/');
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
