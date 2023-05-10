import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/media/media.graphql.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Overview extends StatelessWidget {
  const Overview({
    super.key,
    required this.media,
  });

  final Query$Media$Media media;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (media.description?.isNotEmpty == true)
              _Description(media: media),
            const SizedBox(
              height: 10,
            ),
            _InfoSection(
              media: media,
            ),
            const SizedBox(
              height: 10,
            ),
            _Tags(
              tags: media.tags!.whereType<Query$Media$Media$tags>().toList(),
            ),
            if (Platform.isAndroid && media.trailer?.site == 'youtube')
              _Player(id: media.trailer!.id!),
            if (media.externalLinks?.isNotEmpty == true) _Links(media: media),
          ],
        ),
      ),
    );
  }
}

class _Player extends StatefulWidget {
  const _Player({
    required this.id,
  });

  final String id;

  @override
  State<_Player> createState() => _PlayerState();
}

class _PlayerState extends State<_Player> {
  late YoutubePlayerController _controller;

  @override
  void deactivate() {
    super.deactivate();
    _controller.close();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.close();
  }

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController.fromVideoId(
      videoId: widget.id,
      autoPlay: false,
      params: const YoutubePlayerParams(enableCaption: true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeLeft: true,
      removeRight: true,
      child: YoutubePlayer(
        controller: _controller,
        aspectRatio: 16 / 9,
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({
    required this.media,
  });

  final Query$Media$Media media;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant.withAlpha(150),
        borderRadius: imageRadius,
      ),
      constraints: const BoxConstraints(maxHeight: 150),
      child: Markdown(data: media.description!),
    );
  }
}

class _InfoSection extends StatelessWidget {
  const _InfoSection({
    required this.media,
  });

  final Query$Media$Media media;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(),
      overflow: TextOverflow.ellipsis,
      maxLines: 3,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.8,
        ),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          if (media.format != null)
            _InfoCard(title: 'Format', info: media.format!.name.capitalize()),
          if (media.episodes != null)
            _InfoCard(
              title: 'Episodes',
              info: media.episodes?.toString() ?? 'Unknown',
            ),
          if (media.duration != null)
            _InfoCard(
              title: 'Duration',
              info: '${media.duration} mins',
            ),
          if (media.chapters != null)
            _InfoCard(
              title: 'Chapters',
              info: media.chapters.toString(),
            ),
          if (media.volumes != null)
            _InfoCard(
              title: 'Volumes',
              info: media.volumes.toString(),
            ),
          _InfoCard(
            title: 'Status',
            info: media.status!.name.capitalize(),
          ),
          _InfoCard(
            title: 'Start Date',
            info: media.startDate?.toDateString() ?? 'Unknown',
          ),
          _InfoCard(
            title: 'End Date',
            info: media.endDate?.toDateString() ?? 'Unknown',
          ),
          if (media.season != null)
            _InfoCard(
              title: 'Season',
              info:
                  '${media.season!.name.capitalize()}${media.seasonYear != null ? ' ${media.seasonYear}' : ''}',
            ),
          if (media.studios?.nodes?.isNotEmpty == true)
            _InfoCard(
              title: 'Studios',
              info: media.studios!.nodes!.map((n) => n!.name).join(', '),
            ),
          if (media.source != null)
            _InfoCard(
              title: 'Source',
              info: media.source!.name.capitalize(),
            ),
          if (media.hashtag != null)
            _InfoCard(
              title: 'Hashtag',
              info: media.hashtag!,
              onTap: () => launchUrlString(
                  'https://twitter.com/search?q=${Uri.encodeComponent(media.hashtag!)}&src=typd'),
            ),
          _InfoCard(title: 'Genres', info: media.genres!.join(', '))
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({
    required this.title,
    required this.info,
    this.onTap,
  });

  final String title;
  final String info;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceVariant.withAlpha(150),
        borderRadius: imageRadius,
      ),
      child: Column(
        children: [
          Text(
            title,
            style: theme.textTheme.titleMedium,
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: onTap,
                child: Text(
                  info,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Tags extends StatefulWidget {
  const _Tags({
    required this.tags,
  });

  final List<Query$Media$Media$tags> tags;

  @override
  State<_Tags> createState() => _TagsState();
}

class _TagsState extends State<_Tags> {
  bool showSpoilers = false;

  @override
  Widget build(BuildContext context) {
    var shown = showSpoilers
        ? widget.tags
        : widget.tags.where((e) => e.isMediaSpoiler == false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Tags', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(
          height: 10,
        ),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: shown
              .map(
                (e) => _Tag(
                  tag: e,
                ),
              )
              .toList(),
        ),
        const SizedBox(
          height: 10,
        ),
        if (widget.tags.any((element) => element.isMediaSpoiler == true))
          ElevatedButton(
            onPressed: () => setState(() => showSpoilers = !showSpoilers),
            child: Text('${showSpoilers ? 'Hide' : 'Show'} Spoilers'),
          ),
      ],
    );
  }
}

class _Tag extends StatelessWidget {
  const _Tag({
    required this.tag,
  });

  final Query$Media$Media$tags tag;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: tag.isMediaSpoiler == true
                ? Theme.of(context).colorScheme.error
                : null,
          ),
      overflow: TextOverflow.ellipsis,
      child: UnconstrainedBox(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceVariant.withAlpha(150),
            borderRadius: imageRadius,
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: (MediaQuery.of(context).size.width - 26) / 2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(tag.name),
                  ),
                  Text('${tag.rank}%')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Links extends StatelessWidget {
  const _Links({
    required this.media,
  });

  final Query$Media$Media media;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Links',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(
          height: 10,
        ),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for (var link in media.externalLinks!) _Link(link: link!),
          ],
        ),
      ],
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
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        foregroundColor: MaterialStatePropertyAll<Color>(
          Theme.of(context).textTheme.titleMedium!.color!,
        ),
        backgroundColor: MaterialStatePropertyAll<Color>(
          Theme.of(context).colorScheme.surfaceVariant.withAlpha(150),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (link.icon != null)
            CImage(
              imageUrl: link.icon!,
              height: 20,
              // width: 20,
              color: link.color != null ? HexColor.fromHex(link.color!) : null,
            ),
          const SizedBox(
            width: 5,
          ),
          Text(link.site),
        ],
      ),
    );
  }
}
