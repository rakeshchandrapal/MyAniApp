import 'package:flutter/material.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/ui/common/image.dart';

class DetailedListCards extends StatelessWidget {
  const DetailedListCards({
    super.key,
    required this.card,
    required this.itemCount,
    this.primary,
    this.padding = EdgeInsets.zero,
  });

  final Widget? Function(int index) card;
  final int itemCount;
  final bool? primary;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: primary,
      padding: padding,
      shrinkWrap: true,
      itemBuilder: (context, index) => card(index),
      itemCount: itemCount,
    );
  }
}

class DetailedListCard extends StatelessWidget {
  const DetailedListCard({
    super.key,
    this.underTitle,
    this.onDoubleTap,
    this.onTap,
    this.onLongPress,
    required this.imageUrl,
    this.title,
  });

  final Widget? underTitle;
  final void Function()? onDoubleTap;
  final void Function()? onTap;
  final void Function()? onLongPress;
  final String imageUrl;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        borderRadius: imageRadius,
        onLongPress: onLongPress,
        onDoubleTap: onDoubleTap,
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 100,
              child: ClipRRect(
                borderRadius: imageRadius,
                child: AspectRatio(
                  aspectRatio: 2 / 3,
                  child: CImage(
                    imageUrl: imageUrl,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (title != null)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                      child: Text(
                        title!,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                  if (underTitle != null) underTitle!,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
