import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart' as m;
import 'package:markdown_widget/markdown_widget.dart';

SpanNodeGeneratorWithTag centerSpanWithTag = SpanNodeGeneratorWithTag(
  tag: "center",
  generator: (e, config, visitor) => CodeBlockNode(e, config.p, visitor),
);

class CodeBlockNode extends ElementNode {
  CodeBlockNode(this.element, this.pConfig, this.visitor);

  final PConfig pConfig;
  final m.Element element;
  final WidgetVisitor visitor;

  @override
  TextStyle get style =>
      parentStyle?.merge(pConfig.textStyle) ?? pConfig.textStyle;

  @override
  InlineSpan build() {
    return WidgetSpan(
      child: Center(
        child: Text.rich(
          childrenSpan,
          style: style,
        ),
      ),
    );
  }
}
