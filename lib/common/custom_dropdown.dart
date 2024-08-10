import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/extensions.dart';

class SheetDropdownMenu<T> extends StatefulWidget {
  SheetDropdownMenu({
    super.key,
    // required this.values,
    required T value,
    required this.items,
    // this.isMulti = true,
    this.maxWidth,
    this.onChanged,
    this.hint,
    this.onClear,
    this.label,
    this.enabled = true,
  })  : values = [value],
        isMulti = false;

  const SheetDropdownMenu.multi({
    super.key,
    required this.values,
    required this.items,
    this.isMulti = true,
    this.maxWidth,
    this.onChanged,
    this.hint,
    this.onClear,
    this.label,
    this.enabled = true,
  });

  final Iterable<T> values;
  final Iterable<DropdownMenuEntry<T>> items;
  final bool isMulti;
  final double? maxWidth;
  final String? hint;
  final String? label;
  final bool enabled;
  final void Function(Iterable<T> values)? onChanged;
  final void Function()? onClear;

  @override
  State<SheetDropdownMenu<T>> createState() => _SheetDropdownMenuState<T>();
}

class _SheetDropdownMenuState<T> extends State<SheetDropdownMenu<T>> {
  late Iterable<T> selectedValues;

  @override
  void initState() {
    super.initState();
    selectedValues = widget.values;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.enabled
          ? () => showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => StatefulBuilder(
                  builder: (context, inSetState) => DraggableScrollableSheet(
                    expand: false,
                    builder: (context, scrollController) => ListView(
                      padding: const EdgeInsets.only(top: 25),
                      controller: scrollController,
                      children: [
                        for (var item in widget.items)
                          ListTile(
                            title: Text(item.label),
                            selected: selectedValues.contains(item.value),
                            onTap: () {
                              var newValues = widget.isMulti
                                  ? selectedValues.contains(item.value)
                                      ? selectedValues.where(
                                          (element) => element != item.value)
                                      : ([
                                          ...selectedValues.where(
                                              (element) => element != null),
                                          item.value
                                        ])
                                  : ([item.value]);

                              if (selectedValues != newValues) {
                                widget.onChanged?.call(newValues);
                                setState(() => selectedValues = newValues);
                                // values = newValues;
                                if (!widget.isMulti) {
                                  context.maybePop();
                                } else {
                                  inSetState(() {});
                                }
                              }
                            },
                            trailing: selectedValues.contains(item.value)
                                ? const Icon(Icons.check)
                                : null,
                          ),
                      ],
                    ),
                  ),
                ),
              )
          : null,
      child: InputDecorator(
        decoration: InputDecoration(
          enabled: widget.enabled,
          // hintText: widget.hint,
          label: widget.hint != null ? Text(widget.hint!) : null,
          labelText: widget.label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(
              color: Theme.of(context).hintColor,
            ),
          ),
          constraints:
              BoxConstraints(maxWidth: widget.maxWidth ?? 250, maxHeight: 50),
          // isDense: true,

          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.arrow_drop_down,
                  size: 24,
                ),
                if (selectedValues.firstOrNull != null &&
                    widget.onClear != null)
                  GestureDetector(
                    onTap: () {
                      widget.onClear?.call();
                      setState(
                        () => selectedValues = [],
                      );
                    },
                    child: const Icon(
                      Icons.clear,
                      size: 24,
                    ),
                  ),
              ],
            ),
          ),
        ),
        isEmpty: selectedValues.firstOrNull != null ? false : true,
        expands: true,
        textAlignVertical: TextAlignVertical.center,
        child: Text(
          getValuesLabel().lastOrNull ?? "",
          overflow: TextOverflow.ellipsis,
          style: widget.enabled
              ? null
              : TextStyle(color: context.theme.disabledColor),
        ),
      ),
    );
  }

  List<String> getValuesLabel() {
    List<String> strs = [];

    widget.items
        .where((item) => selectedValues.contains(item.value))
        .forEach((element) => strs.add(element.label));

    return strs;
  }
}
