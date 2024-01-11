import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:myaniapp/ui/common/image.dart';

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

class ImageNode extends SpanNode {
  final Map<String, String> attributes;
  final MarkdownConfig config;
  final WidgetVisitor visitor;

  ImgConfig get imgConfig => config.img;

  ImageNode(this.attributes, this.config, this.visitor);

  @override
  InlineSpan build() {
    double? width;
    double? height;
    if (attributes['width'] != null) width = double.parse(attributes['width']!);
    if (attributes['height'] != null) {
      height = double.parse(attributes['height']!);
    }
    final imageUrl = attributes['src'] ?? '';
    final alt = attributes['alt'] ?? '';
    final isNetImage = imageUrl.startsWith('http');
    final imgWidget = isNetImage
        ? Image.network(imageUrl,
            width: width,
            height: height,
            fit: BoxFit.cover, errorBuilder: (ctx, error, stacktrace) {
            return buildErrorImage(imageUrl, alt, error);
          })
        : Image.asset(imageUrl, width: width, height: height, fit: BoxFit.cover,
            errorBuilder: (ctx, error, stacktrace) {
            return buildErrorImage(imageUrl, alt, error);
          });
    final result = (parent != null && parent is LinkNode)
        ? imgWidget
        : Builder(builder: (context) {
            return ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 300),
              child: CImage(
                imageUrl: imageUrl,
                imageBuilder: (_, __) => imgWidget,
                viewer: true,
              ),
            );
          });
    return WidgetSpan(
      child: result,
    );
  }

  Widget buildErrorImage(String url, String alt, Object? error) {
    return ProxyRichText(
      TextSpan(children: [
        WidgetSpan(
            child: Icon(Icons.broken_image,
                color: Colors.redAccent,
                size: (parentStyle?.fontSize ??
                        config.p.textStyle.fontSize ??
                        16) *
                    (parentStyle?.height ?? config.p.textStyle.height ?? 1.2))),
        TextSpan(text: alt, style: parentStyle ?? config.p.textStyle),
      ]),
      richTextBuilder: visitor.richTextBuilder,
    );
  }
}
