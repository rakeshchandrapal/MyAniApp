import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import "package:markdown/markdown.dart" as md2;
import 'package:markdown_widget/markdown_widget.dart' as md;
import 'package:myaniapp/common/markdown/markdown.dart';
import 'package:myaniapp/routes.dart';

md.SpanNodeGeneratorWithTag spoilerTag = md.SpanNodeGeneratorWithTag(
  tag: "spoiler",
  generator: (e, config, visitor) => SpoilerNode(e.textContent, config.a),
);

class SpoilerSyntax extends md2.InlineSyntax {
  SpoilerSyntax() : super(r"~!([^]*?)!~");

  @override
  bool onMatch(md2.InlineParser parser, Match match) {
    var spoiler = match.group(1);

    if (spoiler != null) {
      md2.Element el = md2.Element.text(spoilerTag.tag, spoiler);
      parser.addNode(el);
    }

    return true;
  }
}

class SpoilerBlockSyntax extends md2.BlockSyntax {
  @override
  get pattern => RegExp(r'^~!([\s\S]+?)!~$', multiLine: true);
  SpoilerBlockSyntax() : super();

  @override
  bool canParse(md2.BlockParser parser) {
    // print(parser.);
    return super.canParse(parser);
  }

  @override
  md2.Node? parse(md2.BlockParser parser) {
    var text = pattern.firstMatch(parser.current.content)!.group(1)!;

    var element = md2.Element.text(spoilerTag.tag, text);

    return element;
  }
}

class SpoilerNode extends md.ElementNode {
  final String spoiler;
  final md.LinkConfig linkConfig;

  SpoilerNode(this.spoiler, this.linkConfig);

  @override
  TextStyle get style =>
      parentStyle?.merge(linkConfig.style) ?? linkConfig.style;

  @override
  InlineSpan build() {
    return TextSpan(
      text: "[Spoiler]",
      style: style,
      recognizer: TapGestureRecognizer()
        ..onTap = () => showDialog(
              context: router.configuration.navigatorKey.currentContext!,
              builder: (context) => Dialog(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                  child: MarkdownWidget(
                    data: spoiler,
                    shrinkWrap: true,
                  ),
                ),
              ),
            ),
    );
  }
}
