import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HiddenFloatingActionButton extends StatefulWidget {
  const HiddenFloatingActionButton(
      {super.key, required this.child, this.scrollController});

  final Widget child;
  final ScrollController? scrollController;

  @override
  State<HiddenFloatingActionButton> createState() =>
      HiddenFloatingActionButtonState();
}

class HiddenFloatingActionButtonState extends State<HiddenFloatingActionButton>
    with SingleTickerProviderStateMixin {
  ScrollController? scrollController;
  late final AnimationController _controller = AnimationController(
    duration: kThemeAnimationDuration,
    vsync: this,
  );
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0, 3),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.easeOut,
  ));

  @override
  void initState() {
    super.initState();
    scrollController = widget.scrollController;
    scrollController?.addListener(listener);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (widget.scrollController != null) return;
    scrollController?.removeListener(listener);
    scrollController = PrimaryScrollController.maybeOf(context);
    scrollController?.addListener(listener);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void listener() {
    print(scrollController!.position.userScrollDirection);
    var direction = scrollController!.position.userScrollDirection;
    if (direction == ScrollDirection.reverse) {
      _controller.forward();
    } else if (direction == ScrollDirection.forward) {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: widget.child,
    );
  }
}
