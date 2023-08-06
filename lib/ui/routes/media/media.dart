import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/media/media.graphql.dart';
import 'package:myaniapp/providers/media.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/media_editor/media_editor.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

@RoutePage()
class MediaPage extends ConsumerStatefulWidget {
  const MediaPage({super.key, @PathParam('id') required this.id});

  final int id;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MediaPageState();
}

class _MediaPageState extends ConsumerState<MediaPage> {
  final ytController = (kIsWeb || Platform.isAndroid)
      ? YoutubePlayerController(
          params: const YoutubePlayerParams(
            enableCaption: true,
            // showFullscreenButton: true,
            strictRelatedVideos: true,
          ),
        )
      : null;

  @override
  void dispose() {
    super.dispose();
    ytController?.close();
  }

  @override
  Widget build(BuildContext context) {
    var media = ref.watch(mediaProvider(widget.id));

    var root = Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingButtons(media: media.value),
      body: AutoTabsRouter.tabBar(
        routes: [
          MediaOverviewRoute(),
          if ((media.value?.relations?.edges?.length ?? 0) > 0)
            MediaRelationsRoute(),
          if ((media.value?.recommendations?.nodes?.length ?? 0) > 0)
            MediaSimilarRoute(),
          if ((media.value?.reviews?.nodes?.length ?? 0) > 0)
            MediaReviewsRoute(),
          if ((media.value?.characters?.nodes?.length ?? 0) > 0)
            MediaCharactersRoute(),
          if ((media.value?.staff?.nodes?.length ?? 0) > 0) MediaStaffRoute(),
          MediaSocialRoute()
        ],
        builder: (context, child, tabController) {
          if (media.value!.trailer?.site == 'youtube') {
            ytController?.videoData.then((value) {
              if (value.videoId != media.value!.trailer!.id) {
                ytController?.cueVideoById(videoId: media.value!.trailer!.id!);
              }
            });
          }

          return NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              MediaAppBar(
                media: media.value!,
                controller: tabController,
                forceElevated: innerBoxIsScrolled,
              ),
            ],
            body: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewPadding.bottom,
              ),
              child: child,
            ),
          );
        },
      ),
    );

    if (kIsWeb || Platform.isAndroid) {
      return media.when(
        data: (data) => YoutubePlayerScaffold(
          controller: ytController!,
          aspectRatio: 9 / 16,
          builder: (context, player) => root,
        ),
        error: (error, stackTrace) => Scaffold(
          appBar: AppBar(),
          body: GraphqlError(exception: error as OperationException),
        ),
        loading: () => Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        ),
      );
    }

    return media.when(
      data: (data) => root,
      error: (error, stackTrace) => Scaffold(
        appBar: AppBar(),
        body: GraphqlError(exception: error as OperationException),
      ),
      loading: () => Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}

class FloatingButtons extends ConsumerStatefulWidget {
  const FloatingButtons({
    super.key,
    required this.media,
  });

  final Query$Media$Media? media;

  @override
  ConsumerState<FloatingButtons> createState() => _FloatingButtonsState();
}

class _FloatingButtonsState extends ConsumerState<FloatingButtons>
    with SingleTickerProviderStateMixin {
  ScrollController? scrollController;
  late final AnimationController _controller = AnimationController(
    duration: kThemeAnimationDuration,
    vsync: this,
  );
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0, 3),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.easeOut,
  ));

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    scrollController?.removeListener(listener);
    scrollController = PrimaryScrollController.maybeOf(context);
    scrollController?.addListener(listener);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void listener() {
    print(scrollController?.position.userScrollDirection);
    var direction = scrollController!.position.userScrollDirection;
    if (direction == ScrollDirection.reverse) {
      _controller.forward();
    } else if (direction == ScrollDirection.forward) {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    var user = ref.watch(userProvider);

    if (widget.media == null || user.value == null) return const SizedBox();

    return SlideTransition(
      position: _offsetAnimation,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: FloatingActionButton(
                heroTag: 'add-to-list',
                onPressed: () => showMediaEditor(
                  context,
                  widget.media!,
                  onDelete: () => ref
                      .read(mediaProvider(widget.media!.id).notifier)
                      .refresh(),
                  onSave: () => ref
                      .read(mediaProvider(widget.media!.id).notifier)
                      .refresh(),
                ),
                child: Text(
                  widget.media?.mediaListEntry?.status?.name.capitalize() ??
                      'Add To List',
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: widget.media!.isFavouriteBlocked == true
                  ? null
                  : () => client.value
                      .mutate$ToggleFavorite(
                        Options$Mutation$ToggleFavorite(
                          variables: Variables$Mutation$ToggleFavorite(
                            animeId: widget.media!.id,
                          ),
                        ),
                      )
                      .then(
                        (value) => ref
                            .read(mediaProvider(widget.media!.id).notifier)
                            .refresh(),
                      ),
              heroTag: 'fav',
              backgroundColor: widget.media!.isFavouriteBlocked == true
                  ? Colors.grey[800]
                  : Colors.red,
              child: Icon(
                Icons.favorite,
                color:
                    widget.media!.isFavourite == true ? Colors.red[200] : null,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MediaAppBar extends StatelessWidget {
  const MediaAppBar({
    super.key,
    required this.media,
    required this.controller,
    required this.forceElevated,
  });

  final Query$Media$Media media;
  final TabController controller;
  final bool forceElevated;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return SliverAppBar(
      expandedHeight: 255,
      forceElevated: forceElevated,
      bottom: TabBar(
        isScrollable: true,
        tabs: [
          const Tab(
            text: 'Overview',
          ),
          if ((media.relations?.edges?.length ?? 0) > 0)
            const Tab(
              text: 'Relations',
            ),
          if ((media.recommendations?.nodes?.length ?? 0) > 0)
            const Tab(text: 'Similar'),
          if ((media.reviews?.nodes?.length ?? 0) > 0)
            const Tab(text: 'Reviews'),
          if ((media.characters?.nodes?.length ?? 0) > 0)
            const Tab(text: 'Characters'),
          if ((media.staff?.nodes?.length ?? 0) > 0)
            const Tab(
              text: 'Staff',
            ),
          const Tab(text: 'Social'),
        ],
        controller: controller,
      ),
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const [StretchMode.blurBackground],
        background: Stack(
          children: [
            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [
                  Colors.transparent,
                  theme.colorScheme.surface,
                ],
                stops: const [0, 1],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(bounds),
              blendMode: BlendMode.srcOver,
              child: media.bannerImage != null
                  ? CImage(
                      imageUrl: media.bannerImage!,
                      fit: BoxFit.cover,
                      height: 150,
                      width: double.maxFinite,
                      viewer: true,
                    )
                  : Container(
                      height: 150,
                      color: Theme.of(context).disabledColor,
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 50),
              child: SizedBox(
                width: 100,
                height: 150,
                child: AspectRatio(
                  aspectRatio: 2 / 3,
                  child: ClipRRect(
                    borderRadius: imageRadius,
                    child: CImage(
                      imageUrl: media.coverImage!.extraLarge!,
                      viewer: true,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 155, left: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: SelectableText.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Original: ${media.title!.native!}',
                                ),
                                if (media.title!.romaji != null)
                                  TextSpan(
                                    text: '\nRomaji: ${media.title!.romaji}',
                                  ),
                                if (media.title!.english != null)
                                  TextSpan(
                                    text: '\nEnglish: ${media.title!.english}',
                                  )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      media.title!.userPreferred!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.favorite,
                        size: 20,
                        color: Colors.red,
                      ),
                      Text((media.favourites ?? 0).toString()),
                      const SizedBox(
                        width: 10,
                      ),
                      if (media.averageScore != null) ...[
                        const Icon(
                          Icons.star,
                          size: 20,
                          color: Colors.yellow,
                        ),
                        Text('${media.averageScore ?? 0}/100'),
                      ]
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
