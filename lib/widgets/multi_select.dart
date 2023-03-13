import 'package:flutter/material.dart';

class MultiSelect<T> extends StatelessWidget {
  final List<({String label, T value})> items;
  final List<({String label, T value})> selectedValues;
  final Function(List<T>) onChanged;
  final Widget? hint;
  const MultiSelect({
    super.key,
    required this.items,
    required this.onChanged,
    required this.selectedValues, 
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          // left: 10,
          width: MediaQuery.of(context).size.width * 0.5,
          child: Text(
            selectedValues.isEmpty
                ? ''
                : selectedValues
                    .map(
                      (e) => e.label,
                    )
                    .reduce((a, b) => '$a , $b'),
            style: const TextStyle(fontWeight: FontWeight.w600),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          child: DropdownButton(
            hint: selectedValues.isEmpty ? hint : null,
            items: items
                .map((e) => DropdownMenuItem(
                      value: e.value,
                      child: Text(e.label),
                      onTap: () =>
                          onChanged([..._results(e).map((e) => e.value)]),
                    ))
                .toList(),
            onChanged: (_) => {},
          ),
        ),
      ],
    );
  }

  List<({String label, T value})> _results(({String label, T value}) lookup) {
    if (!selectedValues.contains(lookup)) {
      return selectedValues..add(lookup);
    } else {
      return selectedValues..remove(lookup);
    }
  }
}
