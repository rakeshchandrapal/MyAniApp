import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/providers/settings.dart';

@RoutePage()
class TokenLoginPage extends ConsumerStatefulWidget {
  const TokenLoginPage({super.key});

  @override
  ConsumerState<TokenLoginPage> createState() => _TokenLoginPageState();
}

class _TokenLoginPageState extends ConsumerState<TokenLoginPage> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
