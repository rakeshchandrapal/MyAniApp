import 'package:MyAniApp/widgets/markdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Editor extends HookWidget {
  const Editor({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = useTextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              TextButton(
                onPressed: () {
                  // controller.text = 'poop';
                  var selectedText = _getSelectedText(controller);
                  // print(selectedText.r);
                  controller.text = controller.text.replaceRange(
                    selectedText.start,
                    selectedText.end,
                    '**${selectedText.text}**',
                  );
                  // selectedText.text;
                  // controller.text.
                },
                child: const Text('Bold'),
              )
            ],
          ),
          TextField(
            controller: controller,
            keyboardType: TextInputType.multiline,
            maxLines: null,
          ),
          const Text('Preview:'),
          Preview(controller: controller),
        ],
      ),
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
    return SelectedText(start, end, selected);
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
    return Markdown(data: text);
  }
}

class SelectedText {
  final int start;
  final int end;
  final String text;
  SelectedText(this.start, this.end, this.text);
}
