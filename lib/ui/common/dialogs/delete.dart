import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DeleteDialog extends StatelessWidget {
  const DeleteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Are you sure you want to delete?',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => context.popRoute(false),
                  child: const Text('Cancel'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => context.popRoute(true),
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Delete'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Future<bool?> showDeleteDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => const Dialog(
      child: DeleteDialog(),
    ),
  );
}
