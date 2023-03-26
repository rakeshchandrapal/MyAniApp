import 'package:MyAniApp/widgets/markdown.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Editor extends HookWidget {
  final Function(String markdown)? onSave;
  Editor({super.key, this.onSave});
  final FocusNode focus = FocusNode();

  @override
  Widget build(BuildContext context) {
    var controller = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        actions: [
          if (onSave != null)
            IconButton(
              onPressed: () {
                onSave!(controller.text);
                context.popRoute();
              },
              icon: const Icon(Icons.save),
            ),
        ],
      ),
      body: Column(
        children: [
          Wrap(
            children: [
              TextButton(
                onPressed: () {
                  var selectedText = _getSelectedText(controller);
                  selectedText.replaceAround('__', '__');

                  focus.requestFocus();
                },
                child: const Text('Bold'),
              ),
              TextButton(
                onPressed: () {
                  var selectedText = _getSelectedText(controller);
                  selectedText.replaceAround('_', '_');

                  focus.requestFocus();
                },
                child: const Text('Italic'),
              ),
              TextButton(
                onPressed: () {
                  var selectedText = _getSelectedText(controller);
                  selectedText.replaceAround('~~', '~~');

                  focus.requestFocus();
                },
                child: const Text('Strike through'),
              ),
              TextButton(
                onPressed: () {
                  var selectedText = _getSelectedText(controller);
                  selectedText.replaceAround('~!', '!~');

                  focus.requestFocus();
                },
                child: const Text('Spoiler'),
              ),
              TextButton(
                onPressed: () async {
                  var result = await _showTextDialog(context, '');
                  // print(result);
                  if (result == null || result.isEmpty) return;
                  var selectedText = _getSelectedText(controller);
                  selectedText.replaceAround(
                      '[${selectedText.text.isEmpty ? 'link' : ''}',
                      ']($result)');

                  focus.requestFocus();
                },
                child: const Text('Link'),
              ),
              TextButton(
                onPressed: () async {
                  // var result = await _showTextDialog(context, 'image');
                  // print(result);
                  // if (result == null || result.isEmpty) return;
                  var selectedText = _getSelectedText(controller);
                  selectedText.replaceAround('# ', null);

                  focus.requestFocus();
                },
                child: const Text('Header'),
              ),
              TextButton(
                onPressed: () {
                  // var result = await _showTextDialog(context, 'image');
                  // print(result);
                  // if (result == null || result.isEmpty) return;
                  var selectedText = _getSelectedText(controller);
                  selectedText.replaceAround('\n1. ', null);

                  focus.requestFocus();
                },
                child: const Text('Ordered list'),
              ),
              TextButton(
                onPressed: () {
                  // var result = await _showTextDialog(context, 'image');
                  // print(result);
                  // if (result == null || result.isEmpty) return;
                  var selectedText = _getSelectedText(controller);
                  selectedText.replaceAround('\n- ', null);

                  focus.requestFocus();
                },
                child: const Text('Unordered list'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              focusNode: focus,
              controller: controller,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          const Text('Preview:'),
          Preview(controller: controller),
        ],
      ),
    );
  }

  Future<String?> _showTextDialog(BuildContext context, String input) {
    var textFieldController = TextEditingController();
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Input a${input.isEmpty ? '' : ' $input'} URL'),
          content: TextField(
            controller: textFieldController,
          ),
          actions: <Widget>[
            ElevatedButton(
              child: const Text("Cancel"),
              onPressed: () => Navigator.pop(context),
            ),
            ElevatedButton(
              child: const Text('OK'),
              onPressed: () => Navigator.pop(context, textFieldController.text),
            ),
          ],
        );
      },
    );
  }

  SelectedText _getSelectedText(TextEditingController controller) {
    int start =
        controller.selection.baseOffset < controller.selection.extentOffset
            ? controller.selection.baseOffset
            : controller.selection.extentOffset;
    int end =
        controller.selection.baseOffset > controller.selection.extentOffset
            ? controller.selection.baseOffset
            : controller.selection.extentOffset;
    var selected = controller.text.substring(start, end);
    return SelectedText(start, end, selected, controller);
  }
}

class Preview extends StatefulWidget {
  const Preview({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  State<Preview> createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  late String text;

  @override
  void initState() {
    super.initState();
    text = widget.controller.text;
    widget.controller.addListener(listener);
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller.removeListener(listener);
  }

  listener() {
    setState(() {
      text = widget.controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(92, 114, 138, 0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Markdown(
          data: text,
          // hasHtml: true,
        ),
      ),
    );
  }
}

class SelectedText {
  final int start;
  final int end;
  final String text;
  final TextEditingController controller;
  SelectedText(this.start, this.end, this.text, this.controller);

  void replaceAround(
    String? startStr,
    String? endStr, {
    bool setPosition = true,
  }) {
    controller.text = controller.text
        .replaceRange(start, end, '${startStr ?? ''}$text${endStr ?? ''}');

    if (setPosition && startStr != null && text.isEmpty) {
      controller.selection = TextSelection.fromPosition(
        TextPosition(offset: start + startStr.length),
      );
    }
  }
}
