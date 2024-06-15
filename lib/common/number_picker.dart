import 'package:flutter/material.dart';

class NumberPicker extends StatefulWidget {
  const NumberPicker({
    super.key,
    required this.value,
    this.buildText,
    this.max,
    required this.onIncrement,
    this.readOnly,
    this.step = 1,
    this.min,
    required this.onDecrement,
    required this.label,
    this.enabled = true,
  });

  final num value;
  final num? max;
  final num? min;
  final bool? readOnly;
  final num step;
  final String label;
  final Function(num value) onIncrement;
  final Function(num value) onDecrement;
  final String Function(num value)? buildText;
  final bool enabled;

  @override
  State<NumberPicker> createState() => _NumberPickerState();
}

class _NumberPickerState extends State<NumberPicker> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: widget.buildText?.call(widget.value) ?? widget.value.toString(),
    );
    _controller.addListener(listener);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void didUpdateWidget(covariant NumberPicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    // if (oldWidget.value != widget.value) {
    _controller.text =
        widget.buildText?.call(widget.value) ?? widget.value.toString();
    // }
  }

  void listener() {
    num? parsed = num.tryParse(_controller.text);

    if (parsed == null) return;

    if (widget.max != null && parsed > widget.max!) {
      widget.onIncrement(widget.max!);
      return;
    } else if (widget.min != null && parsed < widget.min!) {
      widget.onIncrement(widget.min!);
      return;
    }

    if (widget.value > parsed) {
      widget.onDecrement(parsed);
    } else {
      widget.onIncrement(parsed);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: widget.readOnly ?? false,
      enabled: widget.enabled,
      controller: _controller,
      buildCounter: (context,
              {required currentLength,
              required isFocused,
              required maxLength}) =>
          null,
      decoration: InputDecoration(
        label: Text(widget.label),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_downward),
              visualDensity: VisualDensity.compact,
              onPressed: () {
                if (widget.min != null) {
                  if ((widget.value - widget.step) >= widget.min!) {
                    widget.onDecrement(widget.value - widget.step);
                  }
                } else {
                  widget.onDecrement(widget.value - widget.step);
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_upward),
              visualDensity: VisualDensity.compact,
              onPressed: () {
                if (widget.max != null) {
                  if ((widget.value + widget.step) <= widget.max!) {
                    widget.onIncrement(widget.value + widget.step);
                  }
                } else {
                  widget.onIncrement(widget.value + widget.step);
                }
              },
            ),
            const SizedBox(width: 5),
          ],
        ),
      ),
      maxLines: null,
      maxLength: 5,
      keyboardType: TextInputType.number,
      expands: true,
    );
  }
}
