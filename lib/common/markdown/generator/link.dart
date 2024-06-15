import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart' as md;

// overwrite default link generator because the default one for some reason adds a space at the end of the link
md.SpanNodeGeneratorWithTag linkGeneratorWithTag = md.SpanNodeGeneratorWithTag(
  tag: "a",
  generator: (e, config, visitor) => LinkNode(e.attributes, config.a),
);

class LinkNode extends md.ElementNode {
  final Map<String, String> attributes;
  final md.LinkConfig linkConfig;

  LinkNode(this.attributes, this.linkConfig);

  @override
  TextStyle get style =>
      parentStyle?.merge(linkConfig.style) ?? linkConfig.style;

  @override
  InlineSpan build() {
    final url = attributes['href'] ?? '';
    return TextSpan(
      children: [
        for (final child in children)
          _toLinkInlineSpan(
            child.build(),
            () => linkConfig.onTap?.call(url),
          ),
      ],
    );
  }

  InlineSpan _toLinkInlineSpan(InlineSpan span, VoidCallback onTap) {
    if (span is TextSpan) {
      span = TextSpan(
        text: span.text,
        children:
            span.children?.map((e) => _toLinkInlineSpan(e, onTap)).toList(),
        style: span.style,
        recognizer: TapGestureRecognizer()..onTap = onTap,
        onEnter: span.onEnter,
        onExit: span.onExit,
        semanticsLabel: span.semanticsLabel,
        locale: span.locale,
        spellOut: span.spellOut,
      );
    } else if (span is WidgetSpan) {
      span = WidgetSpan(
        child: InkWell(
          onTap: onTap,
          child: span.child,
        ),
        alignment: span.alignment,
        baseline: span.baseline,
        style: span.style,
      );
    }
    return span;
  }
}
