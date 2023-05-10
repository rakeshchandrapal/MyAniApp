import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';

class CardSheet extends StatelessWidget {
  const CardSheet({super.key, required this.media});

  final Fragment$Media media;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      // initialChildSize: 0.5,
      minChildSize: 0.3,
      maxChildSize: 0.7,
      expand: false,
      builder: (context, scrollController) => ListView(
        controller: scrollController,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: imageRadius,
                  child: CImage(
                    imageUrl: media.coverImage!.large!,
                    height: 158,
                    width: 111,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
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
          ),
          Markdown(data: media.description ?? '_No description_'),
        ],
      ),
    );
  }
}

void showCardSheet(BuildContext context, Fragment$Media media) {
  HapticFeedback.vibrate();
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) => CardSheet(media: media),
  );
}
