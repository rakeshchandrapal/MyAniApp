import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';
import 'package:myaniapp/ui/routes/router.dart';

String _tag = 'spoiler';

class SpoilerNode extends ElementNode {
  SpoilerNode(this.spoiler);

  final String spoiler;

  @override
  InlineSpan build() {
    return TextSpan(
      text: '[Spoiler]',
      style: const TextStyle(
        color: linkColor,
      ),
      recognizer: TapGestureRecognizer()
        ..onTap = () => showSpoiler(
            router.configuration.navigatorKey.currentContext!, spoiler),
    );
  }
}

showSpoiler(BuildContext context, String spoiler) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      content: SizedBox(
        width: double.maxFinite,
        child: Markdown(data: spoiler),
      ),
    ),
  );
}

SpanNodeGeneratorWithTag spoilerWithTag = SpanNodeGeneratorWithTag(
  tag: _tag,
  generator: (e, config, visitor) => SpoilerNode(e.attributes["spoiler"]!),
);

class SpoilerInlineSyntax extends md.InlineSyntax {
  SpoilerInlineSyntax() : super(r'~!([^]+?)!~');

  @override
  bool onMatch(md.InlineParser parser, Match match) {
    md.Element el = md.Element.withTag(_tag)
      ..attributes['spoiler'] = match.group(1)!;
    parser.addNode(el);
    return true;
  }
}

// class SpoilerBlockSyntax extends md.BlockSyntax {
//   @override
//   get pattern => RegExp(r'^~!(.*)!~$');
//   SpoilerBlockSyntax() : super();

//   @override
//   md.Node? parse(md.BlockParser parser) {
//     var text = pattern.firstMatch(parser.current.content)!.group(1)!;

//     var element = md.Element("spoiler", []);
//     element.attributes["spoiler"] = text;

//     return element;
//   }
// }
