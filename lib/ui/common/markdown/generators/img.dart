import 'package:markdown/markdown.dart' as md;

String _tag = 'img';

class ImgSyntax extends md.InlineSyntax {
  ImgSyntax() : super(r'(?:i|I)mg\s?(\d+%?)?\s?\((.[\S]+)\)');

  @override
  bool onMatch(md.InlineParser parser, Match match) {
    md.Element el = md.Element.withTag(_tag)
      ..attributes['src'] = match.group(2)!;
    if (match.group(1) != null && !match.group(1).toString().contains('%')) {
      el.attributes['width'] = match.group(1)!;
    }
    parser.addNode(el);
    return true;
  }
}
