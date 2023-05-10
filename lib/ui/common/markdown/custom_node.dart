import 'package:markdown/markdown.dart' as m;
import 'package:markdown_widget/markdown_widget.dart';

import 'html_support.dart';

class CustomTextNode extends ElementNode {
  CustomTextNode(this.text, this.config, this.visitor);

  final MarkdownConfig config;
  final String text;
  final WidgetVisitor visitor;

  @override
  void onAccepted(SpanNode parent) {
    final textStyle = config.p.textStyle.merge(parentStyle);
    children.clear();
    if (!text.contains(htmlRep)) {
      accept(TextNode(text: text, style: textStyle));
      return;
    }
    final spans = parseHtml(
      m.Text(text),
      visitor:
          WidgetVisitor(config: visitor.config, generators: visitor.generators),
      parentStyle: parentStyle,
    );
    for (var element in spans) {
      accept(element);
    }
  }
}
