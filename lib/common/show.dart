import 'package:flutter/material.dart';

// this is doesnt nothing special is similar to the Show component in solidjs https://docs.solidjs.com/reference/components/show
// doing "condition ? Widget : Widget" is kinda ugly to me
class Show extends StatelessWidget {
  const Show({
    super.key,
    required this.when,
    this.fallback,
    required this.child,
  });

  final bool when;
  final Widget? fallback;
  final Widget Function() child;

  @override
  Widget build(BuildContext context) {
    if (when == false && fallback != null) {
      return fallback!;
    } else if (when == false) {
      return const SizedBox();
    }
    return child();
  }
}
