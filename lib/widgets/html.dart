import 'package:MyAniApp/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

var spoilerRegex = RegExp(r'~!(.*?)!~', dotAll: true);
var characterRegex = RegExp(r'https://anilist.co/character/([0-9]+)');

class HTML extends StatelessWidget {
  final String data;
  final EdgeInsets padding;
  // final bool shrinkWrap;
  // final bool selected;
  // final ScrollPhysics? physics;
  const HTML({
    super.key,
    required this.data,
    this.padding = const EdgeInsets.all(8),
    // this.shrinkWrap = true,
    // this.selected = false,
    // this.physics,
  });

  @override
  Widget build(BuildContext context) {
    // var markdown = data.replaceAllMapped(
    //   spoilerRegex,
    //   (match) => '[[Spoiler]](${Uri.encodeComponent(match.group(0)!)})',
    // );

    return Padding(
      padding: padding,
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: SingleChildScrollView(
          child: HtmlWidget(
            data,
            customWidgetBuilder: (element) {
              if (element.className == 'markdown_spoiler') {
                // print();
                return GestureDetector(
                  onTap: () =>
                      _openSpoiler(context, element.children.first.text),
                  child: const Text(
                    '[Spoiler]',
                    style: TextStyle(
                      color: Color(0xff0969da),
                    ),
                  ),
                );
              }
              return null;
            },
            // renderMode: RenderMode.listView,
            // data: removeHTML(markdown),
            // selectable: selected,
            // physics: physics,
            // shrinkWrap: shrinkWrap,
            // config: MarkdownConfig(
            //   configs: [
            //     const PConfig(textStyle: TextStyle()),
            //     LinkConfig(
            //       style: const TextStyle(
            //         color: Color(0xff0969da),
            //         decoration: TextDecoration.none,
            //       ),
            //       onTap: (value) {
            //         // onTapLink: (text, href, title) {
            //         if (spoilerRegex.hasMatch(value)) {
            //           _openSpoiler(
            //               context,
            //               Uri.decodeComponent(value)
            //                   .replaceAll('~!', '')
            //                   .replaceAll('!~', ''));
            //         } else if (characterRegex.hasMatch(value)) {
            //           context.push(
            //               '/character/${characterRegex.firstMatch(value)?.group(1)}');
            //         }
            //         // },
            //       },
            //     ),
            //     ...configs
            //   ],
            // ),
          ),
        ),
      ),
    );
  }

  _openSpoiler(BuildContext context, String text) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: SizedBox(
          width: double.maxFinite,
          child: HTML(
            data: removeHTML(text),
          ),
        ),
      ),
    );
  }
}
