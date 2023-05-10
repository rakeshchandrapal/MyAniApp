import 'package:markdown/markdown.dart' as md;

class BrSyntax extends md.InlineSyntax {
  BrSyntax() : super(r'\n');

  @override
  bool onMatch(md.InlineParser parser, Match match) {
    md.Element el = md.Element.withTag('br');
    parser.addNode(el);
    return true;
  }
}
