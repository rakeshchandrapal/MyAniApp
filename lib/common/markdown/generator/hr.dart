import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart' as md;

// overwrite default link generator because the default one for some reason adds a space at the end of the link
md.SpanNodeGeneratorWithTag hrGeneratorWithTag = md.SpanNodeGeneratorWithTag(
  tag: "hr",
  generator: (e, config, visitor) => DividerNode(),
);

class DividerNode extends md.ElementNode {
  @override
  InlineSpan build() {
    return const WidgetSpan(
      child: Divider(),
    );
  }
}
