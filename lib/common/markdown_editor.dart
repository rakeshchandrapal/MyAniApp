import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/common/markdown/markdown.dart';
import 'package:myaniapp/extensions.dart';

class MarkdownEditor extends StatefulWidget {
  const MarkdownEditor(
      {super.key, this.text, required this.onSave, this.hint, this.leading});

  final String? text;
  final String? hint;
  final Function(String text) onSave;
  final Widget? leading;

  static void show(BuildContext context,
      {String? text,
      required Function(String text) onSave,
      String? hint,
      Widget? leading}) {
    showDialog(
      context: context,
      useSafeArea: false,
      builder: (context) => Dialog.fullscreen(
        child: MarkdownEditor(
          onSave: onSave,
          text: text,
          hint: hint,
          leading: leading,
        ),
      ),
    );
  }

  @override
  State<MarkdownEditor> createState() => _MarkdownEditorState();
}

class _MarkdownEditorState extends State<MarkdownEditor> {
  late final PageController _pageController = PageController(
    onAttach: (position) => Future(() => setState(
          () {},
        )),
  );
  late final TextEditingController _editingController =
      TextEditingController(text: widget.text);
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() => setState(() {}));
    _focusNode.requestFocus();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
    _editingController.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _pageController.positions.isNotEmpty &&
          (_pageController.page != _pageController.initialPage),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading:
              _pageController.positions.isNotEmpty && _pageController.page == 0
                  ? IconButton(
                      onPressed: () => context.maybePop(),
                      icon: const Icon(Icons.cancel),
                    )
                  : IconButton(
                      onPressed: () => _pageController.animateToPage(
                        0,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeIn,
                      ),
                      icon: const Icon(Icons.arrow_back),
                    ),
          actions: [
            if (_pageController.positions.isNotEmpty &&
                _pageController.page == 0)
              _PreviewButton(
                editingController: _editingController,
                onPressed: () => _pageController.animateToPage(
                  1,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeOut,
                ),
              )
            else
              IconButton(
                onPressed: () {
                  widget.onSave(_editingController.text);
                  context.maybePop();
                },
                icon: const Icon(Icons.send),
              ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        if (widget.leading != null) widget.leading!,
                        TextArea(
                          focusNode: _focusNode,
                          editingController: _editingController,
                          hint: widget.hint,
                        ),
                      ],
                    ),
                  ),
                ),
                SafeArea(
                  bottom: true,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: context.theme.colorScheme.surfaceContainerHighest,
                      width: double.maxFinite,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              replaceAround(getSelectedText(), "__", "__");
                              _focusNode.requestFocus();
                            },
                            icon: const Icon(Icons.format_bold),
                          ),
                          IconButton(
                            onPressed: () {
                              replaceAround(getSelectedText(), "_", "_");
                              _focusNode.requestFocus();
                            },
                            icon: const Icon(Icons.format_italic),
                          ),
                          IconButton(
                            onPressed: () {
                              replaceAround(getSelectedText(), "~~", "~~");
                              _focusNode.requestFocus();
                            },
                            icon: const Icon(Icons.format_strikethrough),
                          ),
                          IconButton(
                            onPressed: () {
                              replaceAround(getSelectedText(), "\n> ", "");
                              _focusNode.requestFocus();
                            },
                            icon: const Icon(Icons.format_quote_sharp),
                          ),
                          IconButton(
                            onPressed: () {
                              replaceAround(getSelectedText(), "\n# ", "");
                              _focusNode.requestFocus();
                            },
                            icon: Text(
                              "H",
                              style:
                                  context.theme.textTheme.titleMedium?.copyWith(
                                color:
                                    context.theme.colorScheme.onSurfaceVariant,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            MarkdownWidget(
              data: _editingController.text,
              selectable: true,
            )
          ],
        ),
      ),
    );
  }

  bool onWillPop() {
    if (_pageController.page == _pageController.initialPage) {
      return true;
    } else {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 200),
        curve: Curves.linear,
      );
      return false;
    }
  }

  (int start, int end) getSelectedText() {
    // print(_editingController.selection.extentOffset);
    int start = _editingController.selection.baseOffset <
            _editingController.selection.extentOffset
        ? _editingController.selection.baseOffset
        : _editingController.selection.extentOffset;

    var end = _editingController.selection.baseOffset >
            _editingController.selection.extentOffset
        ? _editingController.selection.baseOffset
        : _editingController.selection.extentOffset;

    return (
      start == -1 ? 0 : start,
      end == -1 ? 0 : end,
    );
  }

  void replaceAround(
      (int start, int end) range, String startStr, String endStr) {
    var text = _editingController.text.substring(range.$1, range.$2);
    _editingController.text = _editingController.text
        .replaceRange(range.$1, range.$2, '$startStr$text$endStr');

    if (text.isEmpty) {
      _editingController.selection = TextSelection.fromPosition(
          TextPosition(offset: range.$1 + startStr.length));
    }
  }
}

class TextArea extends StatefulWidget {
  const TextArea({
    super.key,
    required this.focusNode,
    required this.editingController,
    this.hint,
  });

  final FocusNode focusNode;
  final TextEditingController editingController;
  final String? hint;

  @override
  State<TextArea> createState() => _TextAreaState();
}

class _TextAreaState extends State<TextArea>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return TextField(
      focusNode: widget.focusNode,
      controller: widget.editingController,
      maxLines: null,
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: const EdgeInsets.all(8),
        hintText: widget.hint ?? "Type here",
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _PreviewButton extends StatefulWidget {
  const _PreviewButton({
    required this.editingController,
    required this.onPressed,
  });

  final TextEditingController editingController;
  final VoidCallback onPressed;

  @override
  State<_PreviewButton> createState() => _PreviewButtonState();
}

class _PreviewButtonState extends State<_PreviewButton> {
  @override
  void initState() {
    super.initState();
    widget.editingController.addListener(listener);
  }

  @override
  void dispose() {
    super.dispose();
    widget.editingController.removeListener(listener);
  }

  void listener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:
          widget.editingController.text.length > 2 ? widget.onPressed : null,
      child: const Text("Preview"),
    );
  }
}
