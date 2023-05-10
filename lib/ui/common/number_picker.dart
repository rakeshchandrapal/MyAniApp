import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:holding_gesture/holding_gesture.dart';

class NumberPicker extends HookWidget {
  const NumberPicker({
    super.key,
    required this.current,
    required this.onChange,
    this.max,
    this.increment = 1,
    this.min,
    this.holdEnabled = true,
    this.decimals = false,
  });

  final num current;
  final num increment;
  final num? max;
  final num? min;
  final bool holdEnabled;
  final bool decimals;
  final void Function(num value) onChange;

  void incrementNum(TextEditingController controller) {
    if (max != null && current >= max!) return;

    controller.text = (current + increment).toString();

    onChange(current + increment);
  }

  void decrementNum(TextEditingController controller) {
    if (min != null && current <= min!) return;

    controller.text = (current - increment).toString();

    onChange(current - increment);
  }

  @override
  Widget build(BuildContext context) {
    var controller = useTextEditingController(text: current.toString());

    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: decimals
          ? [FilteringTextInputFormatter.allow(RegExp(r'[0-9]\.?'))]
          : [FilteringTextInputFormatter.digitsOnly],
      // textAlignVertical: TextAlignVertical.bottom,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
        suffixIcon: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            holdEnabled
                ? HoldDetector(
                    onHold: () => incrementNum(controller),
                    enableHapticFeedback: true,
                    holdTimeout: const Duration(milliseconds: 200),
                    child: IconButton(
                      onPressed: () => incrementNum(controller),
                      icon: const Icon(Icons.keyboard_arrow_up),
                    ),
                  )
                : IconButton(
                    onPressed: () => incrementNum(controller),
                    icon: const Icon(Icons.keyboard_arrow_up),
                  ),
            holdEnabled
                ? HoldDetector(
                    onHold: () => decrementNum(controller),
                    enableHapticFeedback: true,
                    holdTimeout: const Duration(milliseconds: 200),
                    child: IconButton(
                      onPressed: () => decrementNum(controller),
                      icon: const Icon(Icons.keyboard_arrow_down),
                    ),
                  )
                : IconButton(
                    onPressed: () => decrementNum(controller),
                    icon: const Icon(Icons.keyboard_arrow_down),
                  ),
          ],
        ),
      ),
      onChanged: (value) {
        var i = num.tryParse(value);
        if (i == null) return;
        onChange(i);
      },
      onSubmitted: (value) {
        var i = num.tryParse(value);
        if (i == null) return;
        onChange(i);
      },
    );
  }
}
