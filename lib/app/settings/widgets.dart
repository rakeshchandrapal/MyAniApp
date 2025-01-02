import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({
    super.key,
    required this.title,
    required this.tiles,
  });

  final List<Widget> tiles;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Text(
              title!,
              style: context.theme.textTheme.titleMedium?.bold,
            ),
          ),
        Material(
          color:
              context.theme.colorScheme.surfaceContainerHighest.withOpacity(.3),
          borderRadius: imageRadius,
          borderOnForeground: true,
          child: ListView.separated(
            shrinkWrap: true,
            primary: false,
            itemCount: tiles.length,
            itemBuilder: (context, index) => tiles[index],
            separatorBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                height: 1,
                thickness: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.title,
    this.subtitle,
    this.icon,
    this.onTap,
    this.enabled,
    this.child,
  });

  final Widget title;
  final Widget? subtitle;
  final Icon? icon;
  final VoidCallback? onTap;
  final Widget? child;
  final bool? enabled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: enabled == false ? null : onTap,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(
            start: 24, end: 20, top: 10, bottom: 10),
        child: Row(
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconTheme(
                  data: IconThemeData(color: context.theme.hintColor),
                  child: icon!,
                ),
              ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTextStyle(
                    style:
                        context.theme.textTheme.bodyLarge ?? const TextStyle(),
                    child: title,
                  ),
                  if (subtitle != null)
                    DefaultTextStyle(
                      style: (context.theme.primaryTextTheme.bodyMedium ??
                              const TextStyle())
                          .copyWith(
                              color: context.theme.hintColor,
                              overflow: TextOverflow.ellipsis),
                      maxLines: 1,
                      child: subtitle!,
                    )
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            if (child != null) child!,
          ],
        ),
      ),
    );
  }
}

class SwitchSettingsTile extends SettingsTile {
  SwitchSettingsTile({
    super.key,
    required String title,
    required this.value,
    required this.onChanged,
    super.icon,
    super.subtitle,
    super.enabled,
  }) : super(
          child: Switch.adaptive(
            value: value,
            onChanged: enabled == false ? null : onChanged,
          ),
          onTap: () => onChanged(!value),
          title: Text(title),
        );

  final void Function(bool value) onChanged;
  final bool value;
}

class CheckboxSettingsTile extends SettingsTile {
  CheckboxSettingsTile({
    super.key,
    required String title,
    required this.value,
    required this.onChanged,
    super.icon,
    super.subtitle,
    super.enabled,
  }) : super(
          child: Checkbox.adaptive(
            value: value,
            onChanged: enabled == false ? null : onChanged,
          ),
          onTap: () => onChanged(!value),
          title: Text(title),
        );

  final void Function(bool? value) onChanged;
  final bool value;
}

class RadioSettingsTile extends SettingsTile {
  RadioSettingsTile({
    super.key,
    required String title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    super.icon,
    super.subtitle,
    super.enabled,
  }) : super(
          child: Radio.adaptive(
            value: value,
            groupValue: groupValue,
            onChanged: enabled == false ? null : onChanged,
            toggleable: true,
          ),
          onTap: () => onChanged(value == groupValue ? null : value),
          title: Text(title),
        );

  final void Function(bool? value) onChanged;
  final bool value;
  final bool? groupValue;
}

// class PopupSettingsTile<T> extends StatelessWidget {
//   const PopupSettingsTile({
//     super.key,
//     required this.title,
//     required this.items,
//     this.value,
//     this.subtitle,
//     this.icon,
//     this.enabled,
//     this.onSelected,
//     this.onClear,
//   });

//   final String title;
//   final Widget? subtitle;
//   final Icon? icon;
//   final bool? enabled;
//   final List<PopupMenuEntry<T>> items;
//   final T? value;
//   final void Function(T value)? onSelected;
//   final VoidCallback? onClear;

//   @override
//   Widget build(BuildContext context) {
//     Widget? s;
//     if (subtitle == null && value != null) {
//       var text = (items.firstWhereOrNull(
//         (element) {
//           if (element is PopupMenuItem) {
//             return (element as PopupMenuItem).value == value;
//           }
//           return false;
//         },
//       ) as PopupMenuItem?)
//           ?.child;
//       if (text != null) s = text;
//     }

//     s ??= subtitle;

//     return PopupMenuButton(
//       initialValue: value,
//       position: PopupMenuPosition.under,
//       tooltip: "",
//       itemBuilder: (context) => items,
//       onSelected: onSelected,
//       constraints: const BoxConstraints(maxHeight: 500, maxWidth: 200),
//       surfaceTintColor: context.theme.colorScheme.primary,
//       enabled: enabled ?? true,
//       child: SettingsTile(
//         title: Text(title),
//         subtitle: s,
//         icon: icon,
//         child: Show(
//           when: value != null && onClear != null,
//           child: () => IconButton(
//             icon: const Icon(Icons.clear),
//             onPressed: onClear!,
//           ),
//         ),
//       ),
//     );
//   }
// }

class PopupSettingsTile<T> extends StatelessWidget {
  const PopupSettingsTile({
    super.key,
    required this.title,
    required this.items,
    this.value,
    this.subtitle,
    this.icon,
    this.enabled,
    this.onSelected,
    this.onClear,
  });

  final String title;
  final Widget? subtitle;
  final Icon? icon;
  final bool? enabled;
  final List<PopupSettingItem<T>> items;
  final T? value;
  final void Function(T value)? onSelected;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    Widget? s;
    if (subtitle == null && value != null) {
      var text = (items.firstWhereOrNull(
        (element) => element.value == value,
      ))?.label;
      if (text != null) s = Text(text);
    }

    s ??= subtitle;

    return SettingsTile(
      title: Text(title),
      subtitle: s,
      icon: icon,
      enabled: enabled,
      onTap: () => showDialog(
        context: context,
        builder: (context) => AlertDialog.adaptive(
          title: Text(title),
          contentPadding: const EdgeInsets.only(top: 10, bottom: 20),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (var item in items)
                  ListTile(
                    title: item.label != null ? Text(item.label!) : item.child,
                    onTap: () {
                      onSelected?.call(item.value);
                      context.pop();
                    },
                    trailing: Radio.adaptive(
                      value: item.value,
                      groupValue: value,
                      onChanged: (value) => onSelected?.call(item.value),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
      child: Show(
        when: value != null && onClear != null,
        child: () => IconButton(
          icon: const Icon(Icons.clear),
          onPressed: onClear!,
        ),
      ),
    );
  }
}

class MultiPopupSettingsTile<T> extends StatelessWidget {
  const MultiPopupSettingsTile({
    super.key,
    required this.title,
    required this.items,
    this.initialValues,
    this.subtitle,
    this.icon,
    this.enabled,
    this.onSaved,
    this.onClear,
  });

  final String title;
  final Widget? subtitle;
  final Icon? icon;
  final bool? enabled;
  final List<PopupSettingCheckbox<T>> items;
  final List<T>? initialValues;
  final void Function(List<T> values)? onSaved;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    Widget? s;
    if (subtitle == null && initialValues?.isNotEmpty == true) {
      var text = (items.where(
        (element) => initialValues!.contains(element.value),
      ))
          .map(
            (e) => e.label,
          )
          .join(", ");
      if (text.isNotEmpty) s = Text(text);
    }

    s ??= subtitle;

    return SettingsTile(
      title: Text(title),
      subtitle: s,
      icon: icon,
      onTap: () => showDialog(
        context: context,
        builder: (context) => _MultiPopupMenu<T>(
          title: title,
          items: items,
          initialValues: initialValues,
          onSaved: onSaved,
        ),
      ),
      child: Show(
        when: initialValues?.isNotEmpty == true && onClear != null,
        child: () => IconButton(
          icon: const Icon(Icons.clear),
          onPressed: onClear!,
        ),
      ),
    );
  }
}

class _MultiPopupMenu<T> extends StatefulWidget {
  const _MultiPopupMenu({
    super.key,
    required this.title,
    required this.items,
    this.initialValues,
    this.onSaved,
  });

  final String title;
  final List<PopupSettingCheckbox<T>> items;
  final List<T>? initialValues;
  final void Function(List<T> values)? onSaved;

  @override
  State<_MultiPopupMenu<T>> createState() => __MultiPopupMenuState<T>();
}

class __MultiPopupMenuState<T> extends State<_MultiPopupMenu<T>> {
  late List<T> values = widget.initialValues?.toList() ?? [];

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(widget.title),
      actions: [
        ElevatedButton(
          onPressed: () {
            widget.onSaved?.call(values);
            context.pop();
          },
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
                context.theme.colorScheme.primaryContainer),
          ),
          child: Text(
            "Save",
            style:
                TextStyle(color: context.theme.colorScheme.onPrimaryContainer),
          ),
        )
      ],
      actionsPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      contentPadding: const EdgeInsets.only(top: 10),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var item in widget.items)
              ListTile(
                title: item.label != null ? Text(item.label!) : item.child,
                onTap: () => setState(() {
                  // widget.onSelected?.call(item.value);
                  if (values.contains(item.value)) {
                    values.remove(item.value);
                  } else {
                    values.add(item.value);
                  }
                  // context.pop();
                }),
                trailing: Checkbox.adaptive(
                  value: values.contains(item.value),
                  onChanged: (value) => setState(() {
                    // widget.onSelected?.call(item.value);
                    if (values.contains(item.value)) {
                      values.remove(item.value);
                    } else {
                      values.add(item.value);
                    }
                    // context.pop();
                  }),
                ),
              ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

abstract class PopupSettingEntry<T> {
  final String? label;
  final Widget? child;
  final T value;

  const PopupSettingEntry(
      {required this.label, required this.value, this.child});
}

class PopupSettingItem<T> extends PopupSettingEntry<T> {
  PopupSettingItem({required super.label, required super.value, super.child});
}

class PopupSettingCheckbox<T> extends PopupSettingEntry<T> {
  PopupSettingCheckbox({
    required super.label,
    required super.value,
  });
}
