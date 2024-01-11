import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';

enum EditorButton {
  bold,
  italics,
  strike,
  spoiler,
  heading,
  listNumbered,
  listUnnumbered,
  link,
}

class Editor extends StatefulWidget {
  const Editor({super.key, this.onSave, this.text});

  final void Function(String markdown)? onSave;
  final String? text;

  @override
  State<Editor> createState() => _EditorState();
}

class _EditorState extends State<Editor> {
  final FocusNode focus = FocusNode();
  late final TextEditingController textController;

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
    var selected =
        controller.text.substring(start == -1 ? 0 : start, end == -1 ? 0 : end);
    return SelectedText(
        start == -1 ? 0 : start, end == -1 ? 0 : end, selected, controller);
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
                context.pop();
              },
              icon: const Icon(Icons.save),
            ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          SegmentedButton<EditorButton>(
            segments: const [
              ButtonSegment(
                value: EditorButton.bold,
                icon: Icon(Icons.format_bold),
              ),
              ButtonSegment(
                value: EditorButton.italics,
                icon: Icon(Icons.format_italic),
              ),
              ButtonSegment(
                value: EditorButton.strike,
                icon: Icon(Icons.format_strikethrough),
              ),
              ButtonSegment(
                value: EditorButton.spoiler,
                icon: Icon(Icons.visibility_off),
              ),
              ButtonSegment(
                value: EditorButton.heading,
                label: Text("H"),
              ),
              ButtonSegment(
                value: EditorButton.listNumbered,
                icon: Icon(Icons.format_list_numbered),
              ),
              ButtonSegment(
                value: EditorButton.listUnnumbered,
                icon: Icon(Icons.format_list_bulleted),
              ),
              ButtonSegment(
                value: EditorButton.link,
                icon: Icon(Icons.link),
              )
            ],
            emptySelectionAllowed: true,
            selected: const {},
            onSelectionChanged: (v) async {
              switch (v.first) {
                case EditorButton.bold:
                  var selectedText = _getSelectedText(textController);
                  selectedText.replaceAround('__', '__');

                  focus.requestFocus();
                  break;
                case EditorButton.italics:
                  var selectedText = _getSelectedText(textController);
                  selectedText.replaceAround('_', '_');

                  focus.requestFocus();
                  break;
                case EditorButton.strike:
                  var selectedText = _getSelectedText(textController);
                  selectedText.replaceAround('~~', '~~');

                  focus.requestFocus();
                  break;
                case EditorButton.spoiler:
                  var selectedText = _getSelectedText(textController);
                  selectedText.replaceAround('~!', '!~');

                  focus.requestFocus();
                  break;
                case EditorButton.heading:
                  var selectedText = _getSelectedText(textController);
                  selectedText.replaceAround('# ', null);

                  focus.requestFocus();
                  break;
                case EditorButton.listNumbered:
                  var selectedText = _getSelectedText(textController);
                  selectedText.replaceAround('\n1. ', null);

                  focus.requestFocus();
                  break;
                case EditorButton.listUnnumbered:
                  var selectedText = _getSelectedText(textController);
                  selectedText.replaceAround('\n- ', null);

                  focus.requestFocus();
                  break;
                case EditorButton.link:
                  var result = await _showTextDialog(context, '');
                  if (result == null || result.isEmpty) return;
                  var selectedText = _getSelectedText(textController);
                  selectedText.replaceAround(
                      '[${selectedText.text.isEmpty ? 'link' : ''}',
                      ']($result)');

                  focus.requestFocus();
                  break;
              }
            },
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            focusNode: focus,
            controller: textController,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'Type here...'),
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Markdown(
          data: text,
        ),
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
