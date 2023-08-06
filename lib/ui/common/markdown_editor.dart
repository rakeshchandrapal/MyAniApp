import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';

class Editor extends StatefulWidget {
  const Editor({super.key, this.onSave, this.text});

  final void Function(String markdown)? onSave;
  final String? text;

  @override
  State<Editor> createState() => _EditorState();
}

class _EditorState extends State<Editor> {
  final FocusNode focus = FocusNode();
  late final textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController.fromValue(
      TextEditingValue(text: widget.text ?? ''),
    );
  }

  @override
  void dispose() {
    super.dispose();
    focus.dispose();
    textController.dispose();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          if (widget.onSave != null)
            IconButton(
              onPressed: () {
                widget.onSave!(textController.text);
                context.popRoute();
              },
              icon: const Icon(Icons.save),
            ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Wrap(
            children: [
              TextButton(
                onPressed: () {
                  var selectedText = _getSelectedText(textController);
                  selectedText.replaceAround('__', '__');

                  focus.requestFocus();
                },
                child: const Text('Bold'),
              ),
              TextButton(
                onPressed: () {
                  var selectedText = _getSelectedText(textController);
                  selectedText.replaceAround('_', '_');

                  focus.requestFocus();
                },
                child: const Text('Italic'),
              ),
              TextButton(
                onPressed: () {
                  var selectedText = _getSelectedText(textController);
                  selectedText.replaceAround('~~', '~~');

                  focus.requestFocus();
                },
                child: const Text('Strike through'),
              ),
              TextButton(
                onPressed: () {
                  var selectedText = _getSelectedText(textController);
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
                  var selectedText = _getSelectedText(textController);
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
                  var selectedText = _getSelectedText(textController);
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
                  var selectedText = _getSelectedText(textController);
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
                  var selectedText = _getSelectedText(textController);
                  selectedText.replaceAround('\n- ', null);

                  focus.requestFocus();
                },
                child: const Text('Unordered list'),
              ),
            ],
          ),
          TextField(
            focusNode: focus,
            controller: textController,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
          const Text('Preview:'),
          Preview(controller: textController),
        ],
      ),
    );
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
  void dispose() {
    super.dispose();
    widget.controller.removeListener(listener);
  }

  @override
  void initState() {
    super.initState();
    text = widget.controller.text;
    widget.controller.addListener(listener);
  }

  listener() {
    setState(() {
      text = widget.controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant.withAlpha(150),
        borderRadius: imageRadius,
      ),
      child: Markdown(
        data: text,
      ),
    );
  }
}

class SelectedText {
  SelectedText(this.start, this.end, this.text, this.controller);

  final TextEditingController controller;
  final int end;
  final int start;
  final String text;

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

void showMarkdownEditor(
  BuildContext context, {
  String? text,
  void Function(String text)? onSave,
}) {
  showDialog(
    context: context,
    builder: (context) => Dialog.fullscreen(
      child: Editor(
        onSave: onSave,
        text: text,
      ),
    ),
  );
}
