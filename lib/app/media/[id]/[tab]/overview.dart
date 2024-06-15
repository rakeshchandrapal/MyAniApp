import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/media/__generated__/media.data.gql.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/markdown/markdown.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MediaOverview extends StatefulWidget {
  const MediaOverview({super.key, required this.media});

  final GMediaData_Media media;

  @override
  State<MediaOverview> createState() => _MediaOverviewState();
}

class _MediaOverviewState extends State<MediaOverview>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView(
      padding: const EdgeInsets.all(0),
      children: [
        if (widget.media.genres?.isNotEmpty == true)
          SizedBox(
            height: 50,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var genre in widget.media.genres!)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: ActionChip(
                        label: Text(genre!),
                        onPressed: () =>
                            context.push("/search/media?genre=$genre"),
                      ),
                    ),
                ],
              ),
            ),
          ),
        Container(
          // height: 150,
          constraints: const BoxConstraints(maxHeight: 150),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            border: Border.all(color: context.theme.colorScheme.surfaceContainerHighest),
            borderRadius: imageRadius,
          ),
          child: MarkdownWidget(
            data: widget.media.description ?? "*No description*",
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
            if (widget.media.format != null)
              DetailBox(
                title: "Format",
                info: widget.media.format!.name.capitalize(),
              ),
            if (widget.media.status != null)
              DetailBox(
                title: "Status",
                info: widget.media.status!.name.capitalize(),
              ),
            if (widget.media.season != null)
              DetailBox(
                title: "Season",
                info:
                    "${widget.media.season!.name.capitalize()}${widget.media.seasonYear != null ? ", ${widget.media.seasonYear}" : ""}",
              ),
            if (widget.media.startDate != null &&
                widget.media.startDate!.toDateString() != null)
              DetailBox(
                title: widget.media.status == GMediaStatus.NOT_YET_RELEASED
                    ? 'Starting'
                    : 'Started',
                info: widget.media.startDate!.toDateString()!,
              ),
            if (widget.media.endDate != null &&
                widget.media.endDate!.toDateString() != null)
              DetailBox(
                title: widget.media.status == GMediaStatus.FINISHED
                    ? "Ended"
                    : "Ending",
                info: widget.media.endDate!.toDateString()!,
              ),
            if (widget.media.episodes != null)
              DetailBox(
                title: 'Episodes',
                info: widget.media.episodes!.toString(),
              ),
            if (widget.media.duration != null)
              DetailBox(
                title: 'Duration',
                info: '${widget.media.duration} mins',
              ),
            if (widget.media.chapters != null)
              DetailBox(
                title: 'Chapters',
                info: widget.media.chapters.toString(),
              ),
            if (widget.media.volumes != null)
              DetailBox(
                title: 'Volumes',
                info: widget.media.volumes.toString(),
              ),
            if (widget.media.source != null)
              DetailBox(
                title: 'Source',
                info: widget.media.source!.name.capitalize(),
              ),
            if (widget.media.hashtag != null)
              DetailBox(
                title: 'Hashtag',
                info: widget.media.hashtag!,
                onTap: () => launchUrlString(
                    'https://twitter.com/search?q=${Uri.encodeComponent(widget.media.hashtag!)}&src=typd'),
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
              if (widget.media.title!.native != null)
                _MediaTitle(
                  lang: "Native",
                  title: widget.media.title!.native!,
                ),
              if (widget.media.title!.romaji != null)
                _MediaTitle(
                  lang: "Romaji",
                  title: widget.media.title!.romaji!,
                ),
              if (widget.media.title!.english != null)
                _MediaTitle(
                  lang: "English",
                  title: widget.media.title!.english!,
                )
            ],
          ),
        ),
        if (widget.media.tags?.isNotEmpty == true)
          _Tags(tags: widget.media.tags!),
        if (widget.media.externalLinks?.isNotEmpty == true ||
            widget.media.trailer != null)
          _Links(
            links: widget.media.externalLinks,
            trailer: widget.media.trailer,
          )
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _Tags extends StatefulWidget {
  const _Tags({
    required this.tags,
  });

  final BuiltList<GMediaData_Media_tags?> tags;

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
                  onTap: () {},
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

  final Iterable<GMediaData_Media_externalLinks?>? links;
  final GMediaData_Media_trailer? trailer;

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
            spacing: 10,
            runSpacing: 10,
            children: [
              if (trailer != null)
                _Link(
                    link: GMediaData_Media_externalLinks(
                  (b) => b
                    ..site = "Trailer"
                    ..url =
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

  final GMediaData_Media_externalLinks link;

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
          border: Border.all(color: context.theme.colorScheme.surfaceContainerHighest),
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
