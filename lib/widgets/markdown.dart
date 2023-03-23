import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:html/dom.dart' as h;
import 'package:html/dom_parsing.dart';
import 'package:html/parser.dart';
import 'package:markdown/markdown.dart' as m;
import 'package:markdown_widget/markdown_widget.dart';
import 'package:url_launcher/url_launcher.dart';

var spoilerRegex = RegExp(r'~!(.*?)!~', dotAll: true);
var routesRegex = RegExp(r'https://anilist.co/((?:character|staff)/[0-9]+)');
var imageRegex = RegExp(r'img(?<height>[0-9]+)?\((?<url>.*?)\)', dotAll: true);
var centerRegex = RegExp(r'~{3}(.*?)~{3}', dotAll: true);

class Markdown extends StatelessWidget {
  final String data;
  final EdgeInsets padding;
  final bool hasHtml;
  final bool shrinkWrap;
  final bool selectable;
  final ScrollPhysics? physics;
  const Markdown({
    super.key,
    required this.data,
    this.padding = const EdgeInsets.all(8),
    this.hasHtml = false,
    this.shrinkWrap = true,
    this.selectable = false,
    this.physics,
  });

  @override
  Widget build(BuildContext context) {
    var markdown = data
        .replaceAllMapped(
          spoilerRegex,
          (match) => '[[Spoiler]](${Uri.encodeComponent(match.group(0)!)})',
        )
        .replaceAllMapped(centerRegex, (match) => match.group(1) as String)
        .replaceAllMapped(
          imageRegex,
          (match) =>
              '<img width="${match.group(1)}" src="${match.group(2)}" />',
        );
    // .replaceAll('\n', '\n\n');

    return Padding(
      padding: padding,
      // child: widget,
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: MarkdownWidget(
          data: markdown,
          shrinkWrap: shrinkWrap,
          selectable: false,
          config: MarkdownConfig(
            configs: [
              LinkConfig(
                style: const TextStyle(color: Color(0xff0969da)),
                onTap: (url) => onTapLink(context, url),
              ),
            ],
          ),
          markdownGeneratorConfig: MarkdownGeneratorConfig(
            textGenerator: (node, config, visitor) =>
                CustomTextNode(node.textContent, config, visitor),
          ),
        ),
      ),
    );
  }

  onTapLink(BuildContext context, String href) {
    if (spoilerRegex.hasMatch(href)) {
      return _openSpoiler(
        context,
        Uri.decodeComponent(href.replaceAll(RegExp(r'~!|!~'), '')),
      );
    }

    var uri = Uri.tryParse(href);
    if (uri == null) return;

    if (uri.host == 'anilist.co') {
      var char = routesRegex.firstMatch(href);

      if (char != null) {
        return context.push('/${char.group(1)}');
      }
    }

    launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
  }

  _openSpoiler(BuildContext context, String text) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: SizedBox(
          width: double.maxFinite,
          child: Markdown(
            data: text,
          ),
        ),
      ),
    );
  }
}

class CustomTextNode extends ElementNode {
  final String text;
  final MarkdownConfig config;
  final WidgetVisitor visitor;

  CustomTextNode(this.text, this.config, this.visitor);

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

void htmlToMarkdown(h.Node? node, int deep, List<m.Node> mNodes) {
  if (node == null) return;
  if (node is h.Text) {
    mNodes.add(m.Text(node.text));
  } else if (node is h.Element) {
    final tag = node.localName;
    List<m.Node> children = [];
    for (var e in node.children) {
      htmlToMarkdown(e, deep + 1, children);
    }
    m.Element element;
    if (tag == MarkdownTag.img.name || tag == 'video') {
      element = HtmlElement(tag!, children, node.text);
      element.attributes.addAll(node.attributes.cast());
    } else {
      element = HtmlElement(tag!, children, node.text);
      element.attributes.addAll(node.attributes.cast());
    }
    mNodes.add(element);
  }
}

final RegExp htmlRep = RegExp(r'<[^>]*>', multiLine: true, caseSensitive: true);

///parse [m.Node] to [h.Node]
List<SpanNode> parseHtml(
  m.Text node, {
  ValueCallback<dynamic>? onError,
  WidgetVisitor? visitor,
  TextStyle? parentStyle,
}) {
  try {
    final text =
        node.textContent.replaceAll(RegExp(r'(\r?\n)|(\r?\t)|(\r)'), '');
    if (!text.contains(htmlRep)) return [TextNode(text: node.text)];
    h.DocumentFragment document = parseFragment(text);
    return HtmlToSpanVisitor(visitor: visitor, parentStyle: parentStyle)
        .toVisit(document.nodes.toList());
  } catch (e) {
    onError?.call(e);
    return [TextNode(text: node.text)];
  }
}

class HtmlElement extends m.Element {
  @override
  final String textContent;

  HtmlElement(String tag, List<m.Node>? children, this.textContent)
      : super(tag, children);
}

class HtmlToSpanVisitor extends TreeVisitor {
  final List<SpanNode> _spans = [];
  final List<SpanNode> _spansStack = [];
  final WidgetVisitor visitor;
  final TextStyle parentStyle;

  HtmlToSpanVisitor({WidgetVisitor? visitor, TextStyle? parentStyle})
      : visitor = visitor ?? WidgetVisitor(),
        parentStyle = parentStyle ?? const TextStyle();

  List<SpanNode> toVisit(List<h.Node> nodes) {
    _spans.clear();
    for (final node in nodes) {
      final emptyNode = ConcreteElementNode(style: parentStyle);
      _spans.add(emptyNode);
      _spansStack.add(emptyNode);
      visit(node);
      _spansStack.removeLast();
    }
    final result = List.of(_spans);
    _spans.clear();
    _spansStack.clear();
    return result;
  }

  @override
  void visitText(h.Text node) {
    final last = _spansStack.last;
    if (last is ElementNode) {
      final textNode = TextNode(text: node.text);
      last.accept(textNode);
    }
  }

  @override
  void visitElement(h.Element node) {
    final localName = node.localName ?? '';
    final mdElement = m.Element(localName, []);
    mdElement.attributes.addAll(node.attributes.cast());
    SpanNode spanNode = visitor.getNodeByElement(mdElement, visitor.config);
    if (spanNode is! ElementNode) {
      final n = ConcreteElementNode(tag: localName, style: parentStyle);
      n.accept(spanNode);
      spanNode = n;
    }
    final last = _spansStack.last;
    if (last is ElementNode) {
      last.accept(spanNode);
    }
    _spansStack.add(spanNode);
    for (var child in node.nodes.toList(growable: false)) {
      visit(child);
    }
    _spansStack.removeLast();
  }
}
