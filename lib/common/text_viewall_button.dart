import 'package:flutter/material.dart';
import 'package:myaniapp/extensions.dart';

class TextViewAllButton extends StatelessWidget {
  const TextViewAllButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: context.theme.textTheme.titleLarge?.bold,
        ),
        Spacer(),
        TextButton(
          onPressed: onTap,
          child: Text("View all", style: context.theme.textTheme.labelSmall),
        )
      ],
    );
  }
}
