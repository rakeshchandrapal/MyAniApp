import 'package:flutter/material.dart';

class SimpleListCards extends StatelessWidget {
  const SimpleListCards({
    super.key,
    required this.card,
    required this.itemCount,
    this.primary,
  });

  final Widget? Function(int index) card;
  final int itemCount;
  final bool? primary;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      primary: primary,
      shrinkWrap: true,
      itemBuilder: (context, index) => card(index),
      itemCount: itemCount,
    );
  }
}

class SimpleListCard extends StatelessWidget {
  const SimpleListCard({
    super.key,
    this.underTitle,
    this.onDoubleTap,
    this.onTap,
    this.onLongPress,
    required this.title,
  });

  final Widget? underTitle;
  final void Function()? onDoubleTap;
  final void Function()? onTap;
  final void Function()? onLongPress;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      onTap: onTap,
      child: ListTile(
        title: Text(title),
        subtitle: underTitle,
      ),
    );
  }
}
