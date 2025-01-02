import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HidingFloatingButton extends StatefulWidget {
  const HidingFloatingButton(
      {super.key,
      required this.button,
      required this.builder,
      this.notificationPredicate});

  final Widget button;
  final bool Function(UserScrollNotification notification)?
      notificationPredicate;
  final Widget Function(Widget button) builder;

  @override
  State<HidingFloatingButton> createState() => _HidingFloatingButtonState();
}

class _HidingFloatingButtonState extends State<HidingFloatingButton>
    with SingleTickerProviderStateMixin {
  bool isVisible = true;
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: kThemeAnimationDuration,
  );
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0, 3),
  ).animate(CurvedAnimation(
    parent: _animationController,
    curve: Curves.ease,
  ));

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<UserScrollNotification>(
      onNotification: (notification) {
        if (widget.notificationPredicate != null &&
            widget.notificationPredicate!(notification) == false) {
          return false;
        }
        if (notification.direction == ScrollDirection.reverse && isVisible) {
          setState(() => isVisible = false);
          _animationController.forward();
        } else if (notification.direction == ScrollDirection.forward &&
            !isVisible) {
          setState(() => isVisible = true);
          _animationController.reverse();
        }

        return false;
      },
      child: widget.builder(
        SlideTransition(position: _offsetAnimation, child: widget.button),
      ),
    );
  }
}
