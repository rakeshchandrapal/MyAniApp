import 'package:flutter/material.dart';
import 'package:myaniapp/providers/list_settings.dart';

class ListSettingButton extends StatelessWidget {
  const ListSettingButton({
    super.key,
    required this.type,
    required this.onUpdate,
  });

  final ListType type;
  final void Function(ListType type) onUpdate;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        switch (type) {
          case ListType.grid:
            onUpdate(ListType.list);
            break;
          case ListType.list:
            onUpdate(ListType.simple);
            break;
          case ListType.simple:
            onUpdate(ListType.grid);
            break;
        }
      },
      icon: switch (type) {
        ListType.grid => const Icon(Icons.grid_view),
        ListType.list => const Icon(Icons.view_list),
        ListType.simple => const Icon(Icons.list),
      },
    );
  }
}
