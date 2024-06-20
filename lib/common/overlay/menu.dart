import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';

class OverlayMenu extends StatefulWidget {
  const OverlayMenu({super.key, required this.builder, required this.items});

  final Widget Function(void Function() showOverlay) builder;
  final List<OverlayMenuItem> items;

  @override
  State<OverlayMenu> createState() => _OverlayMenuState();
}

class _OverlayMenuState extends State<OverlayMenu> {
  OverlayEntry? overlayEntry;

  @override
  Widget build(BuildContext context) {
    return widget.builder(showOverlay);
  }

  void showOverlay() {
    removeOverlay();

    var box = context.findRenderObject() as RenderBox;
    var pos = box.localToGlobal(Offset.zero);

    overlayEntry = OverlayEntry(
      // opaque: true,
      builder: (context) => LayoutBuilder(
        builder: (context, constraints) {
          double? left;
          double? top;
          if ((pos.dx - box.size.width - 20) < 0 &&
              (pos.dx + box.size.width + 10 + 200) > constraints.maxWidth) {
            left = pos.dx;
            top = pos.dy - 40 * widget.items.length;
          }

          if (top != null && top < 0) {
            top = pos.dy + box.size.height;
          }

          left ??= pos.dx + box.size.width + 5;
          top ??= pos.dy;

          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: removeOverlay,
            child: Material(
              color: Colors.black.withOpacity(.2),
              child: Stack(
                children: [
                  Positioned(
                    top: top,
                    left: left,
                    child: Container(
                      height: 40.0 * widget.items.length,
                      width: 200,
                      decoration: BoxDecoration(
                        color: context.theme.colorScheme.surfaceContainer,
                        borderRadius: imageRadius,
                        boxShadow: kElevationToShadow[2],
                      ),
                      child: ListView(
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(0),
                        children: [
                          for (var item in widget.items)
                            SizedBox(
                              height: 40,
                              child: InkWellImage(
                                onTap: () => item.onTap(removeOverlay),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        if (item.icon != null) ...[
                                          item.icon!,
                                          const SizedBox(width: 10),
                                        ],
                                        item.child,
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                  ).animate().fadeIn(),
                ],
              ),
            ),
          );
        },
      ),
    );

    Overlay.of(context).insert(overlayEntry!);

    // Remove overlay entry after a delay
    // Future.delayed(const Duration(seconds: 2), () {
    //   overlayEntry.remove();
    // });
  }

  void removeOverlay() {
    overlayEntry?.remove();
    overlayEntry = null;
  }
}

class OverlayMenuItem {
  final void Function(void Function() closeOverlay) onTap;
  final Widget child;
  final Widget? icon;

  OverlayMenuItem({required this.onTap, required this.child, this.icon});
}
