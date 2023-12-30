import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

class CustomDropdown<T> extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.hint,
    this.value,
    required this.dropdownItems,
    this.onChanged,
    this.selectedItemBuilder,
    this.hintAlignment,
    this.valueAlignment,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonPadding,
    this.buttonDecoration,
    this.buttonElevation,
    this.icon,
    this.iconSize,
    this.iconEnabledColor,
    this.iconDisabledColor,
    this.itemHeight,
    this.itemPadding,
    this.dropdownHeight,
    this.dropdownWidth,
    this.dropdownPadding,
    this.dropdownDecoration,
    this.dropdownElevation,
    this.scrollbarRadius,
    this.scrollbarThickness,
    this.scrollbarAlwaysShow,
    this.offset = const Offset(0, -5),
    this.onClear,
  });

  CustomDropdown.checkbox({
    super.key,
    required this.hint,
    List<T>? values,
    required bool Function(T value) isChecked,
    required List<DropdownMenuItem<T>> items,
    this.onChanged,
    this.selectedItemBuilder,
    this.hintAlignment,
    this.valueAlignment,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonPadding,
    this.buttonDecoration,
    this.buttonElevation,
    this.icon,
    this.iconSize,
    this.iconEnabledColor,
    this.iconDisabledColor,
    this.itemHeight,
    this.itemPadding,
    this.dropdownHeight,
    this.dropdownWidth,
    this.dropdownPadding,
    this.dropdownDecoration,
    this.dropdownElevation,
    this.scrollbarRadius,
    this.scrollbarThickness,
    this.scrollbarAlwaysShow,
    this.offset = const Offset(0, -5),
    this.onClear,
  })  : value = values?.lastOrNull,
        dropdownItems = items
            .map(
              (e) => DropdownMenuItem(
                value: e.value,
                enabled: false,
                child: StatefulBuilder(
                  builder: (context, setState) {
                    return InkWell(
                      onTap: () {
                        onChanged?.call(e.value);
                        setState(() {});
                      },
                      child: SizedBox(
                        height: double.maxFinite,
                        child: Row(
                          children: [
                            if (isChecked(e.value as T))
                              const Icon(Icons.check_box_outlined)
                            else
                              const Icon(Icons.check_box_outline_blank),
                            const SizedBox(width: 16),
                            e.child,
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
            .toList();

  final String hint;
  final T? value;
  final List<DropdownMenuItem<T>> dropdownItems;
  final ValueChanged<T?>? onChanged;
  final DropdownButtonBuilder? selectedItemBuilder;
  final Alignment? hintAlignment;
  final Alignment? valueAlignment;
  final double? buttonHeight, buttonWidth;
  final EdgeInsetsGeometry? buttonPadding;
  final BoxDecoration? buttonDecoration;
  final int? buttonElevation;
  final Widget? icon;
  final double? iconSize;
  final Color? iconEnabledColor;
  final Color? iconDisabledColor;
  final double? itemHeight;
  final EdgeInsetsGeometry? itemPadding;
  final double? dropdownHeight, dropdownWidth;
  final EdgeInsetsGeometry? dropdownPadding;
  final BoxDecoration? dropdownDecoration;
  final int? dropdownElevation;
  final Radius? scrollbarRadius;
  final double? scrollbarThickness;
  final bool? scrollbarAlwaysShow;
  final void Function()? onClear;
  final Offset offset;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Container(
          alignment: hintAlignment,
          child: Text(
            hint,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            // style: theme.textTheme.titleMedium?.copyWith(
            //     color: theme.hintColor, fontWeight: FontWeight.normal),
          ),
        ),
        value: value,
        items: dropdownItems,
        onChanged: onChanged,
        selectedItemBuilder: selectedItemBuilder,
        buttonStyleData: ButtonStyleData(
          height: buttonHeight,
          width: buttonWidth,
          padding: buttonPadding ?? const EdgeInsets.only(right: 14),
          decoration: buttonDecoration ??
              BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: theme.hintColor,
                ),
              ),
          elevation: buttonElevation,
        ),
        iconStyleData: IconStyleData(
          icon: Row(
            children: [
              if (onClear != null && value != null)
                GestureDetector(
                  onTap: onClear,
                  child: const Icon(Icons.clear),
                ),
              icon ?? const Icon(Icons.arrow_drop_down),
            ],
          ),
          iconSize: iconSize ?? 24,
          iconEnabledColor: iconEnabledColor,
          iconDisabledColor: iconDisabledColor,
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: dropdownHeight,
          width: dropdownWidth,
          padding: dropdownPadding,
          decoration: dropdownDecoration ??
              BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  width: 0.5,
                ),
              ),
          elevation: dropdownElevation ?? 8,
          offset: offset,
          isOverButton: false,
          scrollbarTheme: ScrollbarThemeData(
            radius: scrollbarRadius ?? const Radius.circular(40),
            thickness: scrollbarThickness != null
                ? MaterialStateProperty.all<double>(scrollbarThickness!)
                : null,
            thumbVisibility: scrollbarAlwaysShow != null
                ? MaterialStateProperty.all<bool>(scrollbarAlwaysShow!)
                : null,
          ),
        ),
        menuItemStyleData: MenuItemStyleData(
          height: itemHeight ?? kMinInteractiveDimension,
          padding: itemPadding ?? const EdgeInsets.only(left: 14, right: 14),
        ),
      ),
    );
  }
}

class MultiDropdown<T> extends StatelessWidget {
  const MultiDropdown({
    super.key,
    required this.items,
    this.onSelected,
    this.selectedItems,
    required this.hint,
  });

  final List<ValueItem<T>> items;
  final void Function(List<ValueItem<T>>)? onSelected;
  final List<ValueItem<T>>? selectedItems;
  final String hint;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return MultiSelectDropDown<T>(
      selectedOptions: selectedItems ?? [],
      onOptionSelected: onSelected,
      options: items,
      hint: hint,
      showClearIcon: false,
      dropdownHeight: 300,
      optionTextStyle:
          TextStyle(fontSize: 16, color: theme.colorScheme.onBackground),
      borderColor: theme.colorScheme.surfaceVariant,
      focusedBorderColor: theme.colorScheme.surfaceVariant,
      selectedOptionIcon: const Icon(Icons.check_circle),
      dropdownBackgroundColor: theme.colorScheme.background,
      inputDecoration: BoxDecoration(
        // color: theme.colorScheme.surfaceVariant,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(
          color: theme.hintColor,
        ),
      ),
      optionsBackgroundColor: theme.colorScheme.background,
      borderRadius: 50,
      selectedOptionBackgroundColor:
          theme.colorScheme.surfaceVariant.withOpacity(0.3),
      hintStyle: theme.textTheme.titleMedium?.copyWith(color: theme.hintColor),
      selectedOptionTextColor: theme.colorScheme.primary,
      chipConfig: ChipConfig(labelColor: theme.hintColor),
      // clearIcon: Icon(Icons.close_outlined, size: 14, color: theme.hintColor),
      suffixIcon: Icon(
        Icons.arrow_drop_down,
        color: theme.hintColor,
        size: 24,
      ),
    );
  }
}
