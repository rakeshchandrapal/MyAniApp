import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart';

String _iTag = 'i';

SpanNodeGeneratorWithTag iWithTag = SpanNodeGeneratorWithTag(
  tag: _iTag,
  generator: (e, config, visitor) => EmNode(),
);

class ISyntax extends md.InlineSyntax {
  ISyntax() : super(r'<i>(.*?)</?i>');

  @override
  bool onMatch(md.InlineParser parser, Match match) {
    final input = match.input;
    final matchValue = input.substring(match.start, match.end);
    String content = '';
    if (matchValue.endsWith('<i>')) {
      content = matchValue.substring(3, matchValue.length - 3);
    } else {
      content = matchValue.substring(3, matchValue.length - 4);
    }
    md.Element el = md.Element.text(_iTag, content);
    parser.addNode(el);
    return true;
  }
}
