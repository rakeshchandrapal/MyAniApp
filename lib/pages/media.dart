import 'dart:io';

import 'package:MyAniApp/graphql/Character.graphql.dart';
import 'package:MyAniApp/graphql/Media.graphql.dart';
import 'package:MyAniApp/graphql/Review.graphql.dart';
import 'package:MyAniApp/graphql/schema.graphql.dart';
import 'package:MyAniApp/graphql/thread.graphql.dart';
import 'package:MyAniApp/graphql_client.dart';
import 'package:MyAniApp/main.dart';
import 'package:MyAniApp/pages/lists/shared.dart';
import 'package:MyAniApp/providers/user.dart';
import 'package:MyAniApp/routes.gr.dart';
import 'package:MyAniApp/utils.dart';
import 'package:MyAniApp/widgets/graphql.dart';
import 'package:MyAniApp/widgets/image.dart';
import 'package:MyAniApp/widgets/lists/cards.dart';
import 'package:MyAniApp/widgets/markdown.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

@RoutePage()
class MediaPage extends HookWidget {
  final int id;
  const MediaPage({super.key, @PathParam('id') required this.id});

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$FetchMediaById(
      Options$Query$FetchMediaById(
        variables: Variables$Query$FetchMediaById(
          id: id,
        ),
      ),
    );

    return Graphql(
      hook: hook,
      builder: (result) => RefreshIndicator(
        onRefresh: () async {
          await hook.refetch();
          return;
        },
        child: View(
          media: result.Media!,
        ),
      ),
    );
  }
}

class View extends StatefulWidget {
  final Query$FetchMediaById$Media media;
  const View({
    super.key,
    required this.media,
  });

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  bool _show = true;

  // this updates the buttons
  final GlobalKey<_FloatingButtonsState> _key = GlobalKey();
  late List<Widget> _tabs;

  @override
  void initState() {
    super.initState();
    _tabs = [Overview(media: widget.media)];
    if (widget.media.relations?.edges?.isNotEmpty == true) {
      _tabs.add(
        Relations(
          relations: widget.media.relations!.edges!
              .whereType<Query$FetchMediaById$Media$relations$edges>()
              .toList(),
        ),
      );
    }
    if (widget.media.characters?.edges?.isNotEmpty == true) {
      _tabs.add(Characters(media: widget.media));
    }
    if (widget.media.reviews?.edges?.isNotEmpty == true) {
      _tabs.add(Reviews(media: widget.media));
    }
    if (widget.media.type == Enum$MediaType.ANIME &&
        widget.media.streamingEpisodes?.isNotEmpty == true) {
      _tabs.add(Episodes(media: widget.media));
    }
    _tabs.add(Social(widget.media));
  }

  @override
  Widget build(BuildContext context) {
    const duration = Duration(milliseconds: 300);
    if (_key.currentState?.media != widget.media) {
      _key.currentState?.updateState(widget.media);
    }

    // return DefaultTabController(length: _tabs.length, child: )

    return DefaultTabController(
      length: _tabs.length,
      child: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            surfaceTintColor: Colors.transparent,
            leading: const SizedBox(),
            leadingWidth: 0,
            toolbarHeight: 210,
            flexibleSpace: FlexibleSpaceBar(
              background: Title(
                media: widget.media,
              ),
            ),
            pinned: true,
            snap: true,
            floating: true,
            bottom: TabBar(
              isScrollable: true,
              dividerColor: Colors.transparent,
              // controller: _controller,
              tabs: [
                const Tab(text: 'Overview'),
                if (widget.media.relations?.edges?.isNotEmpty == true)
                  const Tab(text: 'Relations'),
                if (widget.media.characters?.edges?.isNotEmpty == true)
                  const Tab(text: 'Characters'),
                if (widget.media.reviews?.edges?.isNotEmpty == true)
                  const Tab(
                    text: 'Reviews',
                  ),
                if (widget.media.type == Enum$MediaType.ANIME &&
                    widget.media.streamingEpisodes?.isNotEmpty == true)
                  const Tab(text: 'Episodes'),
                const Tab(text: 'Social')
              ],
            ),
          ),
        ],
        body: Scaffold(
          floatingActionButton: AnimatedSlide(
            duration: duration,
            offset: _show ? Offset.zero : const Offset(0, 2),
            child: AnimatedOpacity(
              duration: duration,
              opacity: _show ? 1 : 0,
              child: FloatingButtons(
                media: widget.media,
                key: _key,
              ),
            ),
          ),
          body: NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              // print(notification);
              final ScrollDirection direction = notification.direction;
              setState(() {
                if (direction == ScrollDirection.reverse) {
                  _show = false;
                } else if (direction == ScrollDirection.forward) {
                  _show = true;
                }
              });
              return false;
            },
            child: TabBarView(
              children: _tabs,
            ),
          ),
        ),
      ),
    );
  }
}

class FloatingButtons extends StatefulHookWidget {
  final Query$FetchMediaById$Media media;
  const FloatingButtons({super.key, required this.media});

  @override
  State<FloatingButtons> createState() => _FloatingButtonsState();
}

class _FloatingButtonsState extends State<FloatingButtons> {
  late Query$FetchMediaById$Media media;

  @override
  void initState() {
    super.initState();
    media = widget.media;
  }

  @override
  Widget build(BuildContext context) {
    var user = context.watch<User>();
    var mutation = useMutation$ToggleFavourite(
      WidgetOptions$Mutation$ToggleFavourite(
        onError: (error) {
          setState(
            () => media = media.copyWith(isFavourite: !media.isFavourite),
          );

          try {
            if (Platform.isAndroid || Platform.isIOS) {
              Fluttertoast.showToast(
                msg: 'An unexpected error occurred, try again',
              );
            }
            // ignore: empty_catches
          } catch (err) {}
        },
        onCompleted: (_, __) {
          user.update();
          try {
            if (Platform.isAndroid || Platform.isIOS) {
              Fluttertoast.showToast(
                msg:
                    '${media.isFavourite ? 'Added to' : 'Removed from'} favorites',
              );
            }
            // ignore: empty_catches
          } catch (err) {}
        },
      ),
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: FloatingActionButton.small(
              heroTag: 'addtolist',
              onPressed: () => openEditDialog(),
              backgroundColor: Colors.blue[400],
              foregroundColor: Colors.white,
              child: Text(
                media.mediaListEntry != null
                    ? toBeginningOfSentenceCase(
                        media.mediaListEntry!.status!.name.toLowerCase(),
                      )!
                    : "Add to list",
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        FloatingActionButton.small(
          heroTag: 'favorite',
          onPressed: () {
            media = media.copyWith(isFavourite: !media.isFavourite);
            mutation.runMutation(
              variables: Variables$Mutation$ToggleFavourite(
                animeId: media.type == Enum$MediaType.ANIME ? media.id : null,
                mangaId: media.type == Enum$MediaType.MANGA ? media.id : null,
              ),
            );
          },
          backgroundColor: Colors.red[600],
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (child, anim) =>
                FadeTransition(opacity: anim, child: child),
            child: media.isFavourite
                ? Icon(
                    Icons.favorite,
                    size: 24,
                    color: Colors.red[200],
                    key: const ValueKey('icon1'),
                  )
                : const Icon(
                    Icons.favorite,
                    size: 24,
                    color: Colors.white,
                  ),
          ),
        ),
      ],
    );
  }

  updateState(Query$FetchMediaById$Media newState) {
    setState(() {
      media = newState;
    });
  }

  openEditDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog.fullscreen(
          child: Options(
            media: media,
            entry: media.mediaListEntry,
            onDelete: (id) {
              if (media.mediaListEntry == null) return;
              client().then(
                (value) => value.value.mutate$DeleteMediaListEntry(
                  Options$Mutation$DeleteMediaListEntry(
                    onCompleted: (p0, p1) => setState(
                      () => media = media.copyWith(mediaListEntry: null),
                    ),
                    variables: Variables$Mutation$DeleteMediaListEntry(
                      id: media.mediaListEntry!.id,
                    ),
                  ),
                ),
              );
            },
            onSave: (results) {
              client().then(
                (value) => value.value.mutate$SaveMediaListEntry(
                  Options$Mutation$SaveMediaListEntry(
                    onCompleted: (p0, p1) => setState(
                      () => media = media.copyWith(
                        mediaListEntry: p1!.SaveMediaListEntry!,
                      ),
                    ),
                    variables: Variables$Mutation$SaveMediaListEntry(
                      id: media.mediaListEntry != null
                          ? media.mediaListEntry!.id
                          : null,
                      mediaId: media.mediaListEntry == null ? media.id : null,
                      notes: results.notes,
                      progress: results.progress,
                      repeat: results.repeat,
                      status: results.status,
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class Title extends StatelessWidget {
  final Query$FetchMediaById$Media media;
  const Title({super.key, required this.media});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyMedium!,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.srcOver,
                child: media.bannerImage != null
                    ? GestureDetector(
                        onTap: () => showImage(context, media.bannerImage!),
                        child: CachedNetworkImage(
                          imageUrl: media.bannerImage!,
                          width: MediaQuery.of(context).size.width,
                          height: 149,
                          fit: BoxFit.cover,
                          placeholder: (context, url) =>
                              const Center(child: CircularProgressIndicator()),
                        ),
                      )
                    : Container(
                        height: 149,
                        color: Colors.grey,
                      ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(110, 8, 8, 8),
                child: Text(
                  media.title!.userPreferred!,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(110, 0, 8, 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[700],
                    ),
                    Text(
                      "${(media.averageScore ?? 0).toString()}/100",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.red[600],
                    ),
                    Text(
                      (media.favourites ?? 0).toString(),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 78, left: 8),
            // top: 65,
            // left: 8,
            child: SizedBox(
              child: GestureDetector(
                onTap: () => showImage(context, media.coverImage!.extraLarge!),
                child: CachedNetworkImage(
                  imageUrl: media.coverImage!.large!,
                  height: 130,
                  width: 90,
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                ),
              ),
            ),
          ),
          if (context.router.canPop())
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: BackButton(
                  onPressed: () => context.router.pop(),
                  color: Colors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class Overview extends StatelessWidget {
  final Query$FetchMediaById$Media media;
  const Overview({super.key, required this.media});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (media.description != null) ...[
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 8),
              child: Text(
                "Description",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              constraints: const BoxConstraints(maxHeight: 150),
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color.fromRGBO(92, 114, 138, 0.1),
              ),
              child: Markdown(
                data: media.description!,
                hasHtml: true,
              ),
            ),
          ],
          _info(context),
          if (media.trailer?.site == 'youtube' && Platform.isAndroid) ...[
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 8),
              child: Text(
                "Trailer",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Player(id: media.trailer!.id!),
            )
          ],
          if (media.externalLinks?.isNotEmpty == true) _links(context),
        ],
      ),
    );
  }

  Widget _info(BuildContext context) {
    var startDate = media.startDate != null
        ? formattedDate(
            media.startDate!.year, media.startDate!.month, media.startDate!.day)
        : null;

    var endDate = media.endDate != null && media.endDate?.year != null
        ? formattedDate(
            media.endDate!.year, media.endDate!.month, media.endDate!.day)
        : null;

    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 8, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Info",
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 80,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _infoRow(
                  context,
                  'Title',
                  media.title!.userPreferred,
                  onLongPress: () async {
                    await Clipboard.setData(
                      ClipboardData(text: media.title!.userPreferred),
                    ).then((_) {
                      try {
                        Fluttertoast.showToast(
                          msg: 'Copied to Clipboard',
                          toastLength: Toast.LENGTH_SHORT,
                        );
                        // );
                      } catch (err) {}
                    });
                    // Fluttertoast.showToast(msg: 'Copied to clipboard');
                  },
                ),
                _infoRow(context, 'Format', media.format?.name),
                if (media.type == Enum$MediaType.ANIME) ...[
                  _infoRow(context, 'Episodes', media.episodes?.toString()),
                  _infoRow(
                    context,
                    'Duration',
                    media.duration?.toString(),
                  ),
                ] else
                  _infoRow(context, 'Chapters', media.chapters?.toString()),
                _infoRow(
                  context,
                  'Start Date',
                  startDate,
                ),
                _infoRow(context, 'End Date', endDate),
                _infoRow(context, 'Season', media.season?.name),
                _infoRow(context, 'Source', media.source?.name),
                _infoRow(context, 'Status', media.status?.name),
                if (media.genres?.isNotEmpty == true)
                  _infoRow(
                    context,
                    'Genres',
                    'Click To View',
                    onTap: () => _showDialog(context, media.genres!.join(', ')),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _showDialog(BuildContext context, String text) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(text),
        ),
      ),
    );
  }

  Widget _infoRow(
    BuildContext context,
    String title,
    String? data, {
    Function()? onLongPress,
    Function()? onTap,
  }) {
    return GestureDetector(
      onLongPress: onLongPress,
      onTap: onTap,
      child: Container(
        // width: ,
        // height: 200,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Color.fromRGBO(92, 114, 138, 0.1),
        ),
        padding: const EdgeInsets.all(8.0),
        // child: Text(data),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              data ?? 'Unknown',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              // style: TextStyle(
              //   fontSize: Theme.of(context).textTheme.labelLarge?.fontSize,
              // ),
              // overflow: TextOverflow,
            ),
          ],
        ),
      ),
    );
  }

  Widget _links(BuildContext context) {
    if (media.externalLinks == null) return const SizedBox();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Links",
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              for (var link in media.externalLinks!)
                ElevatedButton(
                  onPressed: () async {
                    var uri = link.url != null ? Uri.tryParse(link.url!) : null;
                    // p
                    if (uri != null && await canLaunchUrl(uri)) {
                      launchUrl(uri, mode: LaunchMode.externalApplication);
                    }
                  },
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    foregroundColor: MaterialStatePropertyAll<Color>(
                      Theme.of(context).textTheme.titleMedium!.color!,
                    ),
                    surfaceTintColor: const MaterialStatePropertyAll<Color>(
                      Color.fromRGBO(108, 200, 138, 0.4),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (link!.icon != null)
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CachedNetworkImage(
                            imageUrl: link.icon!,
                            width: 20,
                            color: link.color != null
                                ? HexColor.fromHex(link.color!)
                                : null,
                          ),
                        ),
                      Text(
                        link.site,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class Player extends StatefulWidget {
  const Player({
    super.key,
    required this.id,
  });

  final String id;

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late YoutubePlayerController _controller;

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.close();
    super.deactivate();
  }

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController.fromVideoId(
      videoId: widget.id,
      autoPlay: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      aspectRatio: 16 / 9,
    );
  }
}

class Relations extends StatelessWidget {
  final List<Query$FetchMediaById$Media$relations$edges> relations;
  const Relations({
    super.key,
    required this.relations,
  });

  @override
  Widget build(BuildContext context) {
    var sorted = relations
      ..sort(
        (a, b) => a.relationType!.index.compareTo(b.relationType!.index),
      );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Cards(
        list: [...sorted.map((e) => e.node).whereType<Fragment$BasicMedia>()],
        // physics: const NeverScrollableScrollPhysics(),
        // shrinkWrap: true,
        underTitle: (media, style) {
          var name = relations
              .firstWhere((element) => element.node?.id == media.id)
              .relationType
              ?.name;

          return name != null ? Text(name) : const SizedBox();
        },
      ),
    );
  }
}

class Characters extends HookWidget {
  final Query$FetchMediaById$Media media;
  const Characters({super.key, required this.media});

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$Characters(
      Options$Query$Characters(
        variables: Variables$Query$Characters(mediaId: media.id),
      ),
    );

    var nextPage =
        hook.result.parsedData?.Media?.characters?.pageInfo?.hasNextPage;

    FetchMoreOptions$Query$Characters opts = FetchMoreOptions$Query$Characters(
      variables: nextPage != null
          ? Variables$Query$Characters(
              page: (hook.result.parsedData?.Media?.characters?.pageInfo
                          ?.currentPage ??
                      1) +
                  1,
            )
          : null,
      updateQuery: (previousResultData, fetchMoreResultData) {
        var list = [
          ...previousResultData!['Media']!['characters']['edges'],
          ...fetchMoreResultData!['Media']!['characters']['edges'],
        ];
        fetchMoreResultData['Media']!['characters']['edges'] = list;
        return fetchMoreResultData;
      },
    );

    // print(hook.result.exception);

    return Graphql(
      hook: hook,
      builder: (result) => NotificationListener<ScrollUpdateNotification>(
        onNotification: (notification) {
          if (!hook.result.isLoading &&
              notification.metrics.pixels >
                  notification.metrics.maxScrollExtent - 100 &&
              nextPage == true) {
            hook.fetchMore(opts);
            // hook.fetchMore(opts);
          }
          return false;
        },
        child: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
          children: [
            for (var character in result.Media!.characters!.edges!)
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(
                    color: Theme.of(context)
                        .colorScheme
                        .surfaceVariant
                        .withOpacity(0.7),
                    width: 0.7,
                  ),
                ),
                surfaceTintColor: Theme.of(context).colorScheme.surfaceVariant,
                child: InkWell(
                  onTap: () => context.router.push(
                    CharacterRoute(id: character.node!.id),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                        child: CachedNetworkImage(
                          imageUrl: character!.node!.image!.large!,
                          height: 100,
                          width: 70,
                          fit: BoxFit.cover,
                          placeholder: (context, url) =>
                              const Center(child: CircularProgressIndicator()),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(character.node!.name!.userPreferred!),
                                  if (character.role != null)
                                    Text(
                                      character.role!.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall
                                          ?.copyWith(fontSize: 10),
                                    )
                                ],
                              ),
                              if (character.voiceActorRoles?.isNotEmpty == true)
                                TextButton(
                                  onPressed: () => showVoiceActors(
                                      context, character.voiceActorRoles!),
                                  child: const Text('View Voice Actor'),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if (hook.result.isLoading)
              const Center(child: CircularProgressIndicator.adaptive())
          ],
        ),
      ),
    );
  }

  showVoiceActors(
      BuildContext context,
      List<Query$Characters$Media$characters$edges$voiceActorRoles?>
          voiceActors) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        var sorted = VoiceActors.sort(voiceActors);

        return DefaultTabController(
          length: sorted.length,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: TabBar(
                isScrollable: true,
                tabs: [
                  for (var tab in sorted) Tab(text: tab.language),
                ],
              ),
            ),
            // appBar: AppBar(
            //   // leading: const SizedBox(),
            //   automaticallyImplyLeading: false,
            //   bottom: TabBar(
            //     isScrollable: true,
            //     tabs: [
            //       for (var tab in sorted) Tab(text: tab.language),
            //     ],
            //   ),
            // ),
            body: TabBarView(
              children: [
                for (var tab in sorted)
                  ListView(
                    children: [
                      for (var actor in tab.actors)
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                              color: Theme.of(context)
                                  .colorScheme
                                  .surfaceVariant
                                  .withOpacity(0.7),
                              width: 0.7,
                            ),
                          ),
                          // surfaceTintColor: Theme.of(context).colorScheme.surfaceVariant,
                          child: InkWell(
                            onTap: () => context.router.push(
                              StaffRoute(id: actor.voiceActor!.id),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                  child: CachedNetworkImage(
                                    imageUrl: actor.voiceActor!.image!.large!,
                                    height: 100,
                                    width: 70,
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => const Center(
                                        child: CircularProgressIndicator()),
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(actor.voiceActor!.name!
                                                .userPreferred!),
                                            if (actor.roleNotes != null)
                                              Text(
                                                actor.roleNotes!,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium,
                                              ),
                                            if (actor.voiceActor!.languageV2 !=
                                                null)
                                              Text(
                                                actor.voiceActor!.languageV2!,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall
                                                    ?.copyWith(fontSize: 10),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                    ],
                  ),
              ],
            ),
          ),
        );
        // return SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       for (var actor in voiceActors)
        //         Card(
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(8),
        //             side: BorderSide(
        //               color: Theme.of(context)
        //                   .colorScheme
        //                   .surfaceVariant
        //                   .withOpacity(0.7),
        //               width: 0.7,
        //             ),
        //           ),
        //           // surfaceTintColor: Theme.of(context).colorScheme.surfaceVariant,
        //           child: InkWell(
        //             child: Row(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 ClipRRect(
        //                   borderRadius: const BorderRadius.only(
        //                     topLeft: Radius.circular(8),
        //                     bottomLeft: Radius.circular(8),
        //                   ),
        //                   child: CachedNetworkImage(
        //                     imageUrl: actor!.voiceActor!.image!.large!,
        //                     height: 100,
        //                     width: 70,
        //                     fit: BoxFit.cover,
        //                     placeholder: (context, url) => const Center(
        //                         child: CircularProgressIndicator()),
        //                   ),
        //                 ),
        //                 SizedBox(
        //                   height: 100,
        //                   child: Padding(
        //                     padding: const EdgeInsets.only(top: 8, left: 8),
        //                     child: Column(
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       mainAxisAlignment:
        //                           MainAxisAlignment.spaceBetween,
        //                       children: [
        //                         Column(
        //                           crossAxisAlignment:
        //                               CrossAxisAlignment.start,
        //                           children: [
        //                             Text(actor
        //                                 .voiceActor!.name!.userPreferred!),
        //                             if (actor.voiceActor!.languageV2 != null)
        //                               Text(
        //                                 actor.voiceActor!.languageV2!,
        //                                 style: Theme.of(context)
        //                                     .textTheme
        //                                     .labelSmall
        //                                     ?.copyWith(fontSize: 10),
        //                               ),
        //                             if (actor.roleNotes != null)
        //                               Text(
        //                                 actor.roleNotes!,
        //                                 style: Theme.of(context)
        //                                     .textTheme
        //                                     .labelSmall
        //                                     ?.copyWith(fontSize: 10),
        //                               )
        //                           ],
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         )
        //     ],
        //   ),
        // );
      },
    );
  }
}

// class used for sorting voice actors by language
class VoiceActors {
  String language;
  List<Query$Characters$Media$characters$edges$voiceActorRoles> actors = [];

  VoiceActors({required this.language});

  static List<VoiceActors> sort(
      List<Query$Characters$Media$characters$edges$voiceActorRoles?> actors) {
    List<VoiceActors> list = [];

    for (var actor in actors) {
      var o = list.indexWhere(
          (element) => element.language == actor?.voiceActor?.languageV2);
      if (o == -1) {
        list.add(VoiceActors(language: actor!.voiceActor!.languageV2!)
          ..actors.add(actor));
      } else {
        list[o].actors.add(actor!);
      }
    }

    return list;
  }
}

class Episodes extends StatelessWidget {
  final Query$FetchMediaById$Media media;
  const Episodes({super.key, required this.media});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        for (var episode in media.streamingEpisodes!)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () async {
                var uri =
                    episode.url != null ? Uri.tryParse(episode.url!) : null;
                // p
                if (uri != null && await canLaunchUrl(uri)) {
                  launchUrl(uri, mode: LaunchMode.externalApplication);
                }
              },
              child: Column(
                children: [
                  CachedNetworkImage(
                    imageUrl: episode!.thumbnail!,
                    width: MediaQuery.of(context).size.width - 50,
                    // height: MediaQuery.of(context).size.width,
                    imageBuilder: (context, imageProvider) => ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image(
                        image: imageProvider,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    width: MediaQuery.of(context).size.width - 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surfaceVariant,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          episode.title!,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Source: ${episode.site}',
                          style: TextStyle(
                            fontSize:
                                Theme.of(context).textTheme.bodySmall?.fontSize,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
      ],
    );
  }
}

class Reviews extends HookWidget {
  final Query$FetchMediaById$Media media;
  const Reviews({super.key, required this.media});

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$Reviews(
      Options$Query$Reviews(
        variables: Variables$Query$Reviews(mediaId: media.id),
      ),
    );
    var nextPage =
        hook.result.parsedData?.Media?.reviews?.pageInfo?.hasNextPage;

    FetchMoreOptions$Query$Reviews opts = FetchMoreOptions$Query$Reviews(
      variables: nextPage != null
          ? Variables$Query$Reviews(
              page: (hook.result.parsedData?.Media?.reviews?.pageInfo
                          ?.currentPage ??
                      1) +
                  1,
            )
          : null,
      updateQuery: (previousResultData, fetchMoreResultData) {
        var list = [
          ...previousResultData!['Media']!['reviews']['edges'],
          ...fetchMoreResultData!['Media']!['reviews']['edges'],
        ];
        fetchMoreResultData['Media']!['reviews']['edges'] = list;
        return fetchMoreResultData;
      },
    );

    return Graphql(
      hook: hook,
      builder: (result) => ListView(
        padding: EdgeInsets.zero,
        // mainAxisSize: MainAxisSize.min,
        children: [
          for (var review in result.Media!.reviews!.nodes!)
            SizedBox(
              width: MediaQuery.of(context).size.width - 10,
              child: GestureDetector(
                onTap: () => _openReview(context, review),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        if (review?.user?.avatar?.large != null)
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: CachedNetworkImage(
                              imageUrl: review!.user!.avatar!.large!,
                              height: 45,
                              // width: 50,
                              fit: BoxFit.cover,
                              imageBuilder: (context, imageProvider) =>
                                  CircleAvatar(
                                backgroundImage: imageProvider,
                              ),
                              placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator(),
                              ),
                            ),
                          ),
                        Flexible(
                          flex: 6,
                          fit: FlexFit.tight,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              review!.summary!,
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.fontSize,
                              ),
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  _openReview(BuildContext context, Query$Reviews$Media$reviews$nodes review) {
    showDialog(
      context: context,
      builder: (context) => Dialog.fullscreen(
        child: Review(review: review),
      ),
    );
  }
}

class Social extends HookWidget {
  final Query$FetchMediaById$Media media;

  const Social(this.media, {super.key});

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$Threads(
      Options$Query$Threads(
        variables: Variables$Query$Threads(mediaId: media.id),
      ),
    );

    return Graphql(
      hook: hook,
      builder: (result) => ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          var thread = result.Page!.threads![index];
          // print(thread!.categories);

          return Card(
            child: InkWell(
              onTap: () => context.router.push(ThreadRoute(id: thread.id)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            thread!.title!.trim(),
                            style: Theme.of(context).textTheme.titleMedium,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if ((thread.viewCount ?? 0) > 0)
                          Row(
                            children: [
                              const Icon(Icons.remove_red_eye),
                              Text(thread.viewCount!.toString()),
                            ],
                          ),
                        if ((thread.replyCount ?? 0) > 0)
                          Row(
                            children: [
                              const Icon(Icons.chat_bubble),
                              Text(thread.replyCount!.toString()),
                            ],
                          ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        if (thread.replyUser != null) ...[
                          CImage(
                            imageUrl: thread.replyUser!.avatar!.large!,
                            height: 25,
                            width: 25,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text.rich(
                              TextSpan(
                                text: thread.replyUser?.name,
                                children: [
                                  TextSpan(
                                    text:
                                        ' replied ${timeago.format(dateFromTimestamp(thread.repliedAt!))}',
                                  ),
                                ],
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          // Text(thread.replyUser!.name),
                        ] else ...[
                          CImage(
                            imageUrl: thread.user!.avatar!.large!,
                          ),
                        ],
                      ],
                    ),
                    if (thread.categories?.isNotEmpty == true) ...[
                      const SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        children: [
                          for (var cat in thread.categories!)
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Chip(
                                label: Text(
                                  cat!.name,
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                visualDensity: const VisualDensity(
                                  horizontal: -2,
                                  vertical: -2,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ]
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: result.Page?.threads?.length,
      ),
    );
  }
}

class Review extends StatelessWidget {
  final Query$Reviews$Media$reviews$nodes review;

  const Review({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '${review.user!.name} Review of ${review.media!.title!.userPreferred}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  '${review.user!.name} gave ${review.media!.title!.userPreferred} a ${review.score}/100'),
            ),
            Markdown(
              data: review.body!,
            ),
          ],
        ),
      ),
    );
  }
}
