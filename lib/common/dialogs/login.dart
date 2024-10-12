import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/router.gr.dart';

class LoginDialog extends StatelessWidget {
  const LoginDialog({super.key, required this.reason});

  final String reason;

  static void show(BuildContext context, String reason) {
    showDialog(
      context: context,
      builder: (context) => LoginDialog(
        reason: reason,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Login to $reason.",
              style: context.theme.textTheme.bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () => context.pushRoute(const LoginRoute()),
                    child: const Text("Login"),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () => context.maybePop(),
                    child: const Text("    Back    "),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
