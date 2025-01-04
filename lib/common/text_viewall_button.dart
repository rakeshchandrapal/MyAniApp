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
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Text(
            title,
            style: context.theme.textTheme.titleLarge?.bold,
          ),
          Spacer(),
          Icon(Icons.keyboard_arrow_right),
        ],
      ),
    );
  }
}
