import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart';

String _tag = 'img';

SpanNodeGeneratorWithTag imgWithTag = SpanNodeGeneratorWithTag(
  tag: _tag,
  generator: (e, config, visitor) {
    if (e.attributes['width']?.contains('%') == true) {
      e.attributes.remove('width');
    }
    return ImageNode(e.attributes, config, visitor);
  },
);

class ImgSyntax extends md.InlineSyntax {
  ImgSyntax() : super(r'(?:i|I)mg\s?(\d+%?)?\s?\((.[\S]+)\)');

  @override
  bool onMatch(md.InlineParser parser, Match match) {
    md.Element el = md.Element.withTag(_tag)
      ..attributes['src'] = match.group(2)!;
    if (match.group(1) != null &&
        double.tryParse(match.group(1).toString()) != null) {
      el.attributes['width'] = match.group(1)!;
    }
    parser.addNode(el);
    return true;
  }
}
