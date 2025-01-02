import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/extensions.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog(
      {super.key, required this.thing, required this.onConfirm, this.delete});

  final String thing;
  final bool? delete;
  final VoidCallback onConfirm;

  static void show(BuildContext context, String thing, VoidCallback onConfirm,
      {bool? delete}) {
    showDialog(
      context: context,
      builder: (context) => ConfirmationDialog(
        thing: thing,
        onConfirm: onConfirm,
        delete: delete,
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
              "Are you sure you want to ${delete == true ? "delete " : ""}$thing.",
              style: context.theme.textTheme.bodyLarge?.bold,
            ),
            if (delete == true)
              Text(
                "Deleting can not be undone",
                style: context.theme.textTheme.labelMedium,
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
                    onPressed: () {
                      onConfirm();
                      context.canPop();
                    },
                    child: delete == true
                        ? const Text("Delete")
                        : const Text("Yes"),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () => context.canPop(),
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
