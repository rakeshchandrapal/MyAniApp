import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart' as md2;
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/ui/common/markdown/custom_node.dart';
import 'package:myaniapp/ui/common/markdown/generators/br.dart';
import 'package:myaniapp/ui/common/markdown/generators/center.dart';
import 'package:myaniapp/ui/common/markdown/generators/i.dart';
import 'package:myaniapp/ui/common/markdown/generators/img.dart';
import 'package:myaniapp/ui/common/markdown/generators/spolier.dart';
import 'package:myaniapp/ui/common/markdown/generators/video.dart';
import 'package:url_launcher/url_launcher.dart';

var removeRegex = RegExp(r'~{3}([\s\S]*?)~{3}|(<br>)(?:<br>)?', dotAll: true);
var anilistImageTag = RegExp(r'(?:i|I)mg\s?(\d+%?)?\s?\((.*?)\)');

class Markdown extends StatelessWidget {
  const Markdown({
    super.key,
    required this.data,
    this.selectable = true,
  });

  final String data;
  final bool selectable;

  @override
  Widget build(BuildContext context) {
    var markdown = data.replaceAllMapped(removeRegex, (match) {
      return match.group(1) ?? '';
    });

    markdown = _weirdAnilistImageTagToMarkdownImage(markdown);

    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: md2.MarkdownWidget(
        data: markdown,
        shrinkWrap: true,
        selectable: selectable,
        markdownGenerator: md2.MarkdownGenerator(
          generators: [
            iWithTag,
            spoilerWithTag,
            imgWithTag,
            videoWithTag,
            centerWithTag,
          ],
          blockSyntaxList: [
            const md.HtmlBlockSyntax(),
          ],
          inlineSyntaxList: [
            ISyntax(),
            SpoilerInlineSyntax(),
            BrSyntax(),
            VideoSyntax(),
            md.AutolinkExtensionSyntax(),
            md.InlineHtmlSyntax(),
            md.ImageSyntax(),
          ],
          textGenerator: (node, config, visitor) =>
              CustomTextNode(node.textContent, config, visitor),
        ),
        config: md2.MarkdownConfig(
          configs: [
            const md2.PConfig(
              textStyle: TextStyle(),
            ),
            md2.LinkConfig(
              style: const TextStyle(color: linkColor),
              onTap: (value) {
                var uri = Uri.tryParse(value);
                // print(uri?.host);
                if (uri?.host == 'anilist.co') {
                  if (['anime', 'manga'].contains(uri!.pathSegments.first)) {
                    context.push('/media/${uri.pathSegments[1]}/overview');
                    return;
                  } else if (['character', 'staff']
                      .contains(uri.pathSegments.first)) {
                    context.push('/${uri.pathSegments.take(2).join('/')}');
                    return;
                  } else if (uri.pathSegments.first == 'forum' &&
                      uri.pathSegments[1] == 'thread') {
                    context.push('/thread/${uri.pathSegments[2]}');
                    return;
                  } else if (uri.pathSegments.first == 'activity') {
                    context.push('/activity/${uri.pathSegments[1]}');
                    return;
                  }
                }
                if (uri != null) {
                  launchUrl(uri, mode: LaunchMode.externalApplication);
                }
              },
            ),
            const md2.CodeConfig(style: TextStyle()),
            md2.PreConfig(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).canvasColor,
              ),
            )
          ],
        ),
      ),
    );
  }

  String _weirdAnilistImageTagToMarkdownImage(String data) {
    return data.replaceAllMapped(anilistImageTag, (match) {
      return "![image](${match.group(2)})";
    });
  }
}
