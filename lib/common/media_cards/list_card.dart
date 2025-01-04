import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    super.key,
    required this.image,
    this.underTitle,
    this.title,
    this.onTap,
    this.onLongPress,
    this.onDoubleTap,
    this.blur = false,
  });

  final String image;
  final Widget? underTitle;
  final String? title;
  final GestureTapCallback? onTap;
  final GestureLongPressCallback? onLongPress;
  final GestureDoubleTapCallback? onDoubleTap;
  final bool blur;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      child: InkWell(
        onDoubleTap: onDoubleTap,
        onLongPress: onLongPress,
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
              width: 85,
              child: ClipRRect(
                borderRadius: imageRadius,
                child: CachedImage(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (title != null)
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        title!,
                        maxLines: 3,
                        style: context.theme.textTheme.titleSmall,
                      ),
                    ),
                  if (underTitle != null)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: underTitle!,
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
