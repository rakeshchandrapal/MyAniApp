import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/media/media.graphql.dart';
import 'package:myaniapp/providers/media.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/hidden_floating_action_button.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/media_editor/media_editor.dart';
import 'package:myaniapp/ui/common/widget_gradient.dart';
import 'package:myaniapp/ui/routes/media/characters/characters.dart';
import 'package:myaniapp/ui/routes/media/overview.dart';
import 'package:myaniapp/ui/routes/media/relations.dart';
import 'package:myaniapp/ui/routes/media/reviews/reviews.dart';
import 'package:myaniapp/ui/routes/media/similar/similar.dart';
import 'package:myaniapp/ui/routes/media/social/social.dart';
import 'package:myaniapp/ui/routes/media/staff/staff.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class MediaPage extends ConsumerStatefulWidget {
  const MediaPage({
    super.key,
    required this.id,
  });

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

    if (kIsWeb || Platform.isAndroid) {
      return media.when(
        data: (data) => YoutubePlayerScaffold(
          controller: ytController!,
          aspectRatio: 9 / 16,
          builder: (context, player) => _MediaShell(id: widget.id),
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
      data: (data) => _MediaShell(
        id: widget.id,
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
}

class _MediaShell extends ConsumerStatefulWidget {
  const _MediaShell({super.key, required this.id});

  final int id;

  @override
  ConsumerState<_MediaShell> createState() => __MediaShellState();
}

class __MediaShellState extends ConsumerState<_MediaShell>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  late final List<(String, Widget)> routes;

  @override
  void initState() {
    super.initState();

    var media = ref.read(mediaProvider(widget.id));

    routes = [
      ('Overview', MediaOverviewPage(id: widget.id)),
      if (media.requireValue.relations?.edges?.isNotEmpty == true)
        ('Relations', MediaRelationsPage(id: widget.id)),
      if (media.requireValue.recommendations?.nodes?.isNotEmpty == true)
        ('Similar', MediaSimilarPage(id: widget.id)),
      if (media.requireValue.reviews?.nodes?.isNotEmpty == true)
        ('Reviews', MediaReviewsPage(id: widget.id)),
      if (media.requireValue.characters?.nodes?.isNotEmpty == true)
        ('Characters', MediaCharactersPage(id: widget.id)),
      if (media.requireValue.staff?.nodes?.isNotEmpty == true)
        ('Staff', MediaStaffPage(id: widget.id)),
      ('Social', MediaSocialPage(id: widget.id)),
    ];

    _tabController = TabController(length: routes.length, vsync: this);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      var idx = routes.indexWhere((element) =>
          element.$1.toLowerCase() ==
          GoRouterState.of(context).pathParameters['tab']);
      if (idx != -1 && _tabController.index != idx) {
        _tabController.animateTo(idx);
      }
    });

    _tabController.addListener(listener);
  }

  void listener() {
    var tab = GoRouterState.of(context).pathParameters['tab'];

    if (routes[_tabController.index].$1.toLowerCase() != tab) {
      context.replace(
          '/media/${widget.id}/${routes[_tabController.index].$1.toLowerCase()}');
    }
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var media = ref.watch(mediaProvider(widget.id));

    return Scaffold(
      floatingActionButton: FloatingButtons(id: widget.id),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: NestedScrollView(
        headerSliverBuilder: (context, forceElevated) => [
          MediaAppBar(
            media: media.requireValue,
            controller: _tabController,
            forceElevated: forceElevated,
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: routes.map((e) => e.$2).toList(),
        ),
      ),
    );
  }
}

class FloatingButtons extends ConsumerWidget {
  const FloatingButtons({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);
    var media = ref.watch(mediaProvider(id));

    if (media.value == null || user.value == null) return const SizedBox();

    return HiddenFloatingActionButton(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: FloatingActionButton(
                heroTag: null,
                onPressed: () => showMediaEditor(
                  context,
                  media.requireValue,
                  onDelete: () => ref
                      .read(mediaProvider(media.requireValue.id).notifier)
                      .refresh(),
                  onSave: () => ref
                      .read(mediaProvider(media.requireValue.id).notifier)
                      .refresh(),
                ),
                child: Text(
                  media.requireValue.mediaListEntry?.status?.name
                          .capitalize() ??
                      'Add To List',
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: media.requireValue.isFavouriteBlocked == true
                  ? null
                  : () => client.value
                      .mutate$ToggleFavorite(
                        Options$Mutation$ToggleFavorite(
                          variables: Variables$Mutation$ToggleFavorite(
                            animeId: media.requireValue.id,
                          ),
                        ),
                      )
                      .then(
                        (value) => ref
                            .read(mediaProvider(media.requireValue.id).notifier)
                            .refresh(),
                      ),
              heroTag: null,
              backgroundColor: media.requireValue.isFavouriteBlocked == true
                  ? Colors.grey[800]
                  : Colors.red,
              child: Icon(
                Icons.favorite,
                color: media.requireValue.isFavourite == true
                    ? Colors.red[200]
                    : Colors.white,
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
    // print(Scrollable.of(context).position.);

    return SliverAppBar(
      expandedHeight: 255,
      primary: false,
      leading: const SafeArea(child: BackButton()),
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
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            WidgetGradient(
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
