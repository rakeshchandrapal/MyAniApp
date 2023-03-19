import 'package:MyAniApp/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:go_router/go_router.dart';

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
            removeHTML(data),
            onTapUrl: (url) async {
              print(url);
              var uri = Uri.parse(url);
              print(uri.pathSegments);
              if (uri.pathSegments.first.contains('character')) {
                context.push(uri.path);
                return true;
              } else if (uri.pathSegments.first
                  .contains(RegExp(r'anime|manga'))) {
                context.push('/media/${uri.pathSegments[1]}');
                return true;
              }
              return false;
            },
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
