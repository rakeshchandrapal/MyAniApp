import 'package:flutter/material.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';

class MediaSheetCard extends StatelessWidget {
  const MediaSheetCard({super.key, required this.media});

  final GMediaFragment media;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      minChildSize: 0.3,
      maxChildSize: 0.7,
      expand: false,
      builder: (context, scrollController) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          controller: scrollController,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 100,
                  child: ClipRRect(
                    borderRadius: imageRadius,
                    child: AspectRatio(
                      aspectRatio: 2 / 3,
                      child: CImage(
                        imageUrl: media.coverImage!.extraLarge!,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          media.title!.userPreferred!,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Text(
                          media.genres!.join(', '),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        if (media.format != null)
                          Text.rich(
                            TextSpan(
                              text: media.type!.name.capitalize(),
                              children: [
                                TextSpan(
                                    text:
                                        ' · ${media.format!.name.capitalize()}')
                              ],
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Markdown(data: media.description ?? '*No Description*')
          ],
        ),
      ),
    );
  }
}

showMediaCard(BuildContext context, GMediaFragment media) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) => MediaSheetCard(media: media),
  );
}
