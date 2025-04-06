import 'package:flutter/material.dart';
import 'package:myaniapp/extensions.dart';

class TextViewAllButton extends StatelessWidget {
  const TextViewAllButton({
    super.key,
    required this.title,
    required this.onTap,
    this.style,
  });

  final String title;
  final VoidCallback onTap;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Text(
            title,
            style: style ?? context.theme.textTheme.titleLarge?.bold,
          ),
          Spacer(),
          Icon(Icons.keyboard_arrow_right),
        ],
      ),
    );
  }
}
