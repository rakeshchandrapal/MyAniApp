import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/markdown/markdown.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/app/media/media.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/schema.graphql.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class MediaInfoScreen extends StatelessWidget {
  const MediaInfoScreen({
    super.key,
    required this.media,
  });

  final Query$Media$Media media;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(0),
      children: [
        if (media.genres?.isNotEmpty == true)
          SizedBox(
            height: 50,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var genre in media.genres!)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: ActionChip(
                        label: Text(genre!),
                        onPressed: () => context.router
                            .pushNamed("/search/media?genre=$genre"),
                      ),
                    ),
                ],
              ),
            ),
          ),
        Container(
          constraints: const BoxConstraints(maxHeight: 150),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            border: Border.all(
                color: context.theme.colorScheme.surfaceContainerHighest),
            borderRadius: imageRadius,
          ),
          child: MarkdownWidget(
            data: media.description ?? "*No description*",
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            shrinkWrap: true,
            selectable: true,
          ),
        ),
        GridView(
          primary: false,
          padding: const EdgeInsets.all(4),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 170,
            mainAxisExtent: 75,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          shrinkWrap: true,
          children: [
            if (media.format != null)
              DetailBox(
                title: "Format",
                info: media.format!.name.capitalize(),
              ),
            if (media.status != null)
              DetailBox(
                title: "Status",
                info: media.status!.name.capitalize(),
              ),
            if (media.season != null)
              DetailBox(
                title: "Season",
                info:
                    "${media.season!.name.capitalize()}${media.seasonYear != null ? ", ${media.seasonYear}" : ""}",
              ),
            if (media.startDate != null &&
                media.startDate!.toDateString() != null)
              DetailBox(
                title: media.status == Enum$MediaStatus.NOT_YET_RELEASED
                    ? 'Starting'
                    : 'Started',
                info: media.startDate!.toDateString()!,
              ),
            if (media.endDate != null && media.endDate!.toDateString() != null)
              DetailBox(
                title: media.status == Enum$MediaStatus.FINISHED
                    ? "Ended"
                    : "Ending",
                info: media.endDate!.toDateString()!,
              ),
            if (media.episodes != null)
              DetailBox(
                title: 'Episodes',
                info: media.episodes!.toString(),
              ),
            if (media.duration != null)
              DetailBox(
                title: 'Duration',
                info: '${media.duration} mins',
              ),
            if (media.chapters != null)
              DetailBox(
                title: 'Chapters',
                info: media.chapters.toString(),
              ),
            if (media.volumes != null)
              DetailBox(
                title: 'Volumes',
                info: media.volumes.toString(),
              ),
            if (media.source != null)
              DetailBox(
                title: 'Source',
                info: media.source!.name.capitalize(),
              ),
            if (media.hashtag?.isNotEmpty == true)
              DetailBox(
                title: 'Hashtag',
                info: media.hashtag!,
                onTap: () => launchUrlString(
                    'https://twitter.com/search?q=${Uri.encodeComponent(media.hashtag!)}&src=typd'),
              ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Titles",
                style: context.theme.textTheme.titleMedium,
              ),
              if (media.title!.native != null)
                _MediaTitle(
                  lang: "Native",
                  title: media.title!.native!,
                ),
              if (media.title!.romaji != null)
                _MediaTitle(
                  lang: "Romaji",
                  title: media.title!.romaji!,
                ),
              if (media.title!.english != null)
                _MediaTitle(
                  lang: "English",
                  title: media.title!.english!,
                )
            ],
          ),
        ),
        if (media.tags?.isNotEmpty == true) _Tags(tags: media.tags!),
        if (media.externalLinks?.isNotEmpty == true || media.trailer != null)
          _Links(
            links: media.externalLinks,
            trailer: media.trailer,
          )
      ],
    );
  }
}

class _Tags extends StatefulWidget {
  const _Tags({
    required this.tags,
  });

  final List<Query$Media$Media$tags?> tags;

  @override
  State<_Tags> createState() => _TagsState();
}

class _TagsState extends State<_Tags> {
  bool showSpoiler = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tags",
                  style: context.theme.textTheme.titleMedium,
                ),
                if (widget.tags.any((p0) => p0?.isMediaSpoiler == true))
                  ElevatedButton(
                    onPressed: () => setState(() => showSpoiler = !showSpoiler),
                    child: Text("${showSpoiler ? "Hide" : "Show"} Spoilers"),
                  ),
              ],
            ),
          ),
          GridView(
            padding: const EdgeInsets.all(0),
            primary: false,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              mainAxisExtent: 45,
            ),
            children: [
              for (var tag in widget.tags.where(
                  (p0) => showSpoiler ? true : p0!.isMediaSpoiler == false))
                InkWellImage(
                  borderRadius: imageRadius,
                  onLongPress: () => showDialog(
                    context: context,
                    builder: (context) => Dialog(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 50),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              tag.name,
                              style: context.theme.textTheme.titleMedium,
                            ),
                            const SizedBox(height: 10),
                            Text(tag.description ?? "No description"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  child: Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    decoration: BoxDecoration(
                      color: context.theme.colorScheme.surfaceContainerHighest,
                      borderRadius: imageRadius,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: DefaultTextStyle(
                      style: context.theme.textTheme.labelMedium?.copyWith(
                              color: tag!.isMediaSpoiler == true
                                  ? context.theme.colorScheme.error
                                  : null) ??
                          const TextStyle(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              tag!.name,
                              maxLines: 2,
                            ),
                          ),
                          Text("${tag.rank}%"),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}

class _MediaTitle extends StatelessWidget {
  const _MediaTitle({
    required this.lang,
    required this.title,
  });

  final String lang;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$lang: ",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Expanded(child: SelectableText(title)),
      ],
    );
  }
}

class _Links extends StatelessWidget {
  const _Links({
    required this.links,
    this.trailer,
  });

  final Iterable<Query$Media$Media$externalLinks?>? links;
  final Query$Media$Media$trailer? trailer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Links',
            style: context.theme.textTheme.titleMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              if (trailer != null)
                _Link(
                    link: Query$Media$Media$externalLinks(
                  site: "Trailer",
                  url:
                      "https://${trailer!.site}.com/${trailer!.site == "youtube" ? "/watch?v=${trailer!.id}" : "/video/${trailer!.id}"}",
                )),
              if (links?.isNotEmpty == true)
                for (var link in links!) _Link(link: link!),
            ],
          ),
        ],
      ),
    );
  }
}

class _Link extends StatelessWidget {
  const _Link({
    required this.link,
  });

  final Query$Media$Media$externalLinks link;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (link.isDisabled == true || link.url == null)
          ? null
          : () => launchUrlString(link.url!),
      style: ButtonStyle(
        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        foregroundColor: WidgetStatePropertyAll<Color>(
          Theme.of(context).textTheme.titleMedium!.color!,
        ),
        backgroundColor: WidgetStatePropertyAll<Color>(
          Theme.of(context).colorScheme.surfaceContainerHighest,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (link.icon != null)
            SizedBox(
              height: 20,
              width: 20,
              child: CachedImage(
                link.icon!,
                color:
                    link.color != null ? HexColor.fromHex(link.color!) : null,
              ),
            ),
          const SizedBox(
            width: 5,
          ),
          Text(link.site),
          if (link.language != null) ...[
            const SizedBox(
              width: 2,
            ),
            Text(
              link.language!,
              style: context.theme.textTheme.labelSmall
                  ?.copyWith(color: context.theme.hintColor),
            ),
          ]
        ],
      ),
    );
  }
}

class DetailBox extends StatelessWidget {
  const DetailBox({
    super.key,
    required this.title,
    required this.info,
    this.onTap,
  });

  final String title;
  final String info;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: imageRadius,
      child: Container(
        height: 80,
        width: 120,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(
              color: context.theme.colorScheme.surfaceContainerHighest),
          borderRadius: imageRadius,
        ),
        child: Column(
          children: [
            Text(
              title,
              style: context.theme.textTheme.bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Text(
                info,
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
