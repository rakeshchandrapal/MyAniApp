import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart';

SpanNodeGeneratorWithTag centerWithTag = SpanNodeGeneratorWithTag(
  tag: 'center',
  generator: (e, config, visitor) => CenterNode(e, config, visitor),
);

class CenterNode extends ElementNode {
  final md.Element element;
  final MarkdownConfig config;
  final WidgetVisitor visitor;

  CenterNode(this.element, this.config, this.visitor);

  @override
  InlineSpan build() {
    return WidgetSpan(
      alignment: PlaceholderAlignment.middle,
      child: Center(
        child: ProxyRichText(
          childrenSpan,
          richTextBuilder: visitor.richTextBuilder,
        ),
      ),
    );
  }
}
