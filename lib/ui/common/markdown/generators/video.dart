import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

String _tag = 'video';

SpanNodeGeneratorWithTag videoWithTag = SpanNodeGeneratorWithTag(
  tag: _tag,
  generator: (e, config, visitor) {
    return VideoNode(e.attributes);
  },
);

class VideoNode extends SpanNode {
  final Map<String, String> attribute;

  VideoNode(this.attribute);

  @override
  InlineSpan build() {
    final link = attribute['src'] ?? '';
    return WidgetSpan(
        child: AspectRatio(
      aspectRatio: 16 / 9,
      child: VideoWidget(url: link),
    ));
  }
}

class VideoWidget extends StatefulWidget {
  const VideoWidget({super.key, required this.url});

  final String url;

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  final Player player = Player();
  late final VideoController controller = VideoController(player);

  @override
  void initState() {
    super.initState();
    player.open(Media(widget.url), play: false);
  }

  @override
  Widget build(BuildContext context) {
    return Video(controller: controller);
  }
}

class VideoSyntax extends md.InlineSyntax {
  VideoSyntax() : super(r'webm\s?(\d+%?)?\s?\((.[\S]+)\)');

  @override
  bool onMatch(md.InlineParser parser, Match match) {
    md.Element el = md.Element.withTag(_tag)
      ..attributes['src'] = match.group(2)!;
    parser.addNode(el);
    return true;
  }
}
