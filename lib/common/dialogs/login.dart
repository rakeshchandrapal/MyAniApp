import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/extensions.dart';

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
                    onPressed: () => context.push("/login"),
                    child: const Text("Login"),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () => context.pop(),
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
