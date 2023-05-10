import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IconButton(
        icon: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.transparent.withOpacity(0.5),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Icon(Icons.arrow_back),
        ),
        onPressed: () => context.router.pop(),
      ),
    );
  }
}
