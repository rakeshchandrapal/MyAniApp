import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollToTop extends StatefulWidget {
  const ScrollToTop({
    super.key,
    required this.builder,
    this.ignoreDepths,
    this.alignment = Alignment.bottomRight,
  });

  final Alignment alignment;
  final Widget Function(ScrollController scrollController) builder;
  final List<int>? ignoreDepths;

  @override
  State<ScrollToTop> createState() => _ScrollToTopState();
}

class _ScrollToTopState extends State<ScrollToTop> {
  bool show = false;

  late ScrollController _controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller = PrimaryScrollController.maybeOf(context)?.hasClients == true
        ? PrimaryScrollController.of(context)
        : ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void toTop() {
    _controller.animateTo(0,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInCubic);
    setState(() => show = false);
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (notification) {
        if (widget.ignoreDepths?.contains(notification.depth) == true) {
          return false;
        }

        if (_controller.positions.last.userScrollDirection ==
                ScrollDirection.reverse &&
            notification.metrics.pixels >= 500) {
          setState(() => show = true);
        } else if (show &&
            _controller.positions.last.userScrollDirection ==
                ScrollDirection.forward &&
            notification.metrics.pixels <= 500) {
          setState(() => show = false);
        }
        return false;
      },
      child: Stack(
        children: [
          widget.builder(_controller),
          SafeArea(
            child: AnimatedOpacity(
              opacity: show ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: Align(
                alignment: widget.alignment,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    heroTag: widget.builder.hashCode,
                    onPressed: toTop,
                    child: const Icon(Icons.arrow_upward),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
