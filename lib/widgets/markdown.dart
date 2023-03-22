import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart' as md;
import 'package:go_router/go_router.dart';
import 'package:html2md/html2md.dart' as html2md;
import 'package:markdown/markdown.dart' as mark;
import 'package:url_launcher/url_launcher.dart';

var spoilerRegex = RegExp(r'~!(.*?)!~', dotAll: true);
var routesRegex = RegExp(r'https://anilist.co/((?:character|staff)/[0-9]+)');
var imageRegex = RegExp(r'img(?<height>[0-9]+)?\((?<url>.*?)\)', dotAll: true);

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
    var markdown = data.replaceAllMapped(
      spoilerRegex,
      (match) => '[[Spoiler]](${Uri.encodeComponent(match.group(0)!)})',
    );
    // print(imageRegex.firstMatch(markdown)?.namedGroup('height'));
    markdown = markdown.replaceAllMapped(
      imageRegex,
      (match) {
        // print(match.group(2));
        // print(match.group(1));
        return '[![image](${match.group(2)})](${match.group(2)})';
        // return '<img src="${match.group(2)}" height="${match.group(1)}" >';
      },
    );

    return Padding(
      padding: padding,
      child: physics is NeverScrollableScrollPhysics
          ? md.MarkdownBody(
              data: hasHtml ? html2md.convert(markdown) : markdown,
              shrinkWrap: shrinkWrap,
              selectable: selectable,
              onTapLink: (text, href, title) =>
                  onTapLink(context, text, href, title),
              extensionSet: mark.ExtensionSet.gitHubWeb,
            )
          : md.Markdown(
              data: hasHtml ? html2md.convert(markdown) : markdown,
              shrinkWrap: shrinkWrap,
              padding: EdgeInsets.zero,
              physics: physics,
              selectable: selectable,
              onTapLink: (text, href, title) =>
                  onTapLink(context, text, href, title),
              extensionSet: mark.ExtensionSet.gitHubWeb,
            ),
    );
  }

  onTapLink(BuildContext context, String text, String? href, String title) {
    if (href == null) return;
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
