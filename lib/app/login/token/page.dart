import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/router.gr.dart';

@RoutePage()
class TokenLoginPage extends ConsumerWidget {
  const TokenLoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
        maxLength: null,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
        onSubmitted: (value) {
          if (value.isNotEmpty) {
            ref
                .read(settingsProvider.notifier)
                .updateToken(value)
                .then((value) => context.navigateTo(HomeRoute()));
          }
        },
      ),
    );
  }
}
