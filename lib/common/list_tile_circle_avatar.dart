import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ListTileCircleAvatar extends StatelessWidget {
  const ListTileCircleAvatar({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
      child: CachedNetworkImage(
        imageUrl: url,
        progressIndicatorBuilder: (context, url, progress) =>
            CircularProgressIndicator.adaptive(
          value: progress.progress,
        ),
        imageBuilder: (context, imageProvider) => CircleAvatar(
          backgroundImage: imageProvider,
          backgroundColor: Colors.transparent,
          // foregroundImage: null,
        ),
      ),
    );
  }
}
