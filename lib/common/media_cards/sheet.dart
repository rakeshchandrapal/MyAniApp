import 'package:flutter/material.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/markdown/markdown.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart';

class MediaSheet extends StatelessWidget {
  static void show(BuildContext context, GMediaFragment media,
      {Widget? leading}) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) => MediaSheet(
        media: media,
        leading: leading,
      ),
    );
  }

  const MediaSheet({super.key, required this.media, this.leading});

  final GMediaFragment media;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return DraggableScrollableSheet(
      maxChildSize: 1,
      expand: false,
      builder: (context, scrollController) => ListView(
        padding: const EdgeInsets.all(8),
        controller: scrollController,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: imageRadius,
                child: CachedImage(
                  media.coverImage!.extraLarge!,
                  height: 150,
                  width: 106,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      media.title!.userPreferred!,
                      maxLines: 3,
                      style: theme.textTheme.titleMedium,
                    ),
                    if (media.format != null)
                      Text(
                        media.format!.name.capitalize(),
                        maxLines: 2,
                        style: theme.textTheme.titleSmall,
                      )
                    else
                      Text(media.type!.name.capitalize()),
                    if (media.genres?.isNotEmpty == true)
                      Text(
                        media.genres!.join(", "),
                        maxLines: 3,
                      )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          if (leading != null) leading!,
          MarkdownWidget.body(
            data: media.description ?? "*No Description*",
            padding: const EdgeInsets.all(0),
          )
        ],
      ),
    );
  }
}
