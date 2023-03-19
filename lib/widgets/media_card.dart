import 'package:MyAniApp/graphql/Media.graphql.dart';
import 'package:MyAniApp/widgets/markdown.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MediaCard extends StatelessWidget {
  final double? height;
  final double? width;
  final Fragment$BasicMedia media;
  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;
  final bool withSheet;

  const MediaCard({
    super.key,
    required this.media,
    this.height,
    this.width,
    this.onTap,
    this.onDoubleTap,
    this.withSheet = true,
  });

  @override
  Widget build(BuildContext context) {
    var image = CachedNetworkImage(
      height: height,
      width: width,
      imageUrl: media.coverImage!.large!,
      imageBuilder: (context, imageProvider) => Container(
        // height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      fit: BoxFit.cover,
      placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator()),
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          // flex: 1,
          fit: FlexFit.loose,
          child: Stack(
            children: [
              GestureDetector(
                onTap: onTap,
                onDoubleTap: onDoubleTap,
                onLongPress: () {
                  showModalBottomSheet(
                    context: context,
                    builder: Sheet(media: media).build,
                  );
                },
                child: image,
              ),
              if (media.isAdult ?? false)
                Positioned(
                  right: 5,
                  top: 5,
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 2,
                      bottom: 2,
                      left: 4,
                      right: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .surfaceVariant
                          .withOpacity(0.9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '18+',
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodySmall?.fontSize,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        Text(
          media.title!.userPreferred!,
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
            fontWeight: FontWeight.w400,
          ),
          overflow: TextOverflow.ellipsis,
          // maxLines: 1,
        )
      ],
    );
  }
}

class Sheet extends StatelessWidget {
  final Fragment$BasicMedia media;
  Sheet({super.key, required this.media});

  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    print(media.genres);
    return SizedBox(
      height: 260,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (media.genres?.isNotEmpty == true)
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Genres: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: media.genres!.join(', '),
                      ),
                    ],
                  ),
                ),
              Markdown(
                data: media.description ?? '',
                // controller: scrollController,
                padding: const EdgeInsets.all(0),
                hasHtml: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
