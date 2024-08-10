import 'package:flutter/material.dart';

class InvisibleExpandedTitle extends StatefulWidget {
  final Widget child;
  const InvisibleExpandedTitle({
    super.key,
    required this.child,
  });
  @override
  InvisibleExpandedTitleState createState() {
    return InvisibleExpandedTitleState();
  }
}

class InvisibleExpandedTitleState extends State<InvisibleExpandedTitle>
    with SingleTickerProviderStateMixin {
  ScrollPosition? _position;
  bool? _visible;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 200),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _removeListener();
    super.dispose();
    _controller.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _removeListener();
    _addListener();
  }

  void _addListener() {
    _position = Scrollable.of(context).position;
    _position?.addListener(_positionListener);
    _positionListener();
  }

  void _removeListener() {
    _position?.removeListener(_positionListener);
  }

  void _positionListener() {
    final FlexibleSpaceBarSettings? settings =
        context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
    bool visible =
        settings == null || settings.currentExtent <= settings.minExtent;
    if (_visible != visible) {
      setState(() {
        _visible = visible;
        if (visible) {
          _controller.forward();
        } else {
          _controller.reverse();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _visible ?? false,
      child: FadeTransition(
        opacity: _animation,
        child: widget.child,
      ),
    );
  }
}
