import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/media/media.graphql.dart';
import 'package:myaniapp/ui/common/back_button.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/media_editor/media_editor.dart';
import 'package:myaniapp/ui/common/persistent_header.dart';
import 'package:myaniapp/ui/common/scroll_to_top.dart';
import 'package:myaniapp/ui/pages/media/characters/characters.dart';
import 'package:myaniapp/ui/pages/media/overview.dart';
import 'package:myaniapp/ui/pages/media/provider.dart';
import 'package:myaniapp/ui/pages/media/recommendations/recommendations.dart';
import 'package:myaniapp/ui/pages/media/relations.dart';
import 'package:myaniapp/ui/pages/media/reviews/reviews.dart';
import 'package:myaniapp/ui/pages/media/social/social.dart';
import 'package:myaniapp/ui/pages/media/staff/staff.dart';

@RoutePage()
class MediaPage extends ConsumerWidget {
  const MediaPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var media = ref.watch(mediaProvider(id));

    return RefreshIndicator(
      onRefresh: ref.read(mediaProvider(id).notifier).refetch,
      notificationPredicate: (notification) => notification.depth != 3,
      child: Scaffold(
        appBar: ref.read(mediaProvider(id).notifier).isLoading && media == null
            ? AppBar()
            : null,
        body: ref.read(mediaProvider(id).notifier).isLoading && media == null
            ? const Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : Builder(
                builder: (context) {
                  List<List<Widget>> tabs = [
                    [
                      const Tab(
                        text: 'Overview',
                      ),
                      Overview(
                        media: media!,
                      ),
                    ],
                  ];

                  if (media.relations?.edges?.isNotEmpty == true) {
                    tabs.add([
                      const Tab(text: 'Relations'),
                      Relations(
                        relations: media.relations!.edges!
                            .whereType<Query$Media$Media$relations$edges>()
                            .toList(),
                      ),
                    ]);
                  }
                  if (media.recommendations?.nodes?.isNotEmpty == true) {
                    tabs.add([
                      const Tab(text: 'Recommendations'),
                      Recommendations(
                        mediaId: id,
                      ),
                    ]);
                  }
                  if (media.characters?.nodes?.isNotEmpty == true) {
                    tabs.add([
                      const Tab(text: 'Characters'),
                      CharactersTab(
                        mediaId: id,
                      ),
                    ]);
                  }
                  if (media.staff?.nodes?.isNotEmpty == true) {
                    tabs.add([
                      const Tab(text: 'Staff'),
                      Staff(
                        mediaId: id,
                      ),
                    ]);
                  }
                  if (media.reviews?.nodes?.isNotEmpty == true) {
                    tabs.add([
                      const Tab(
                        text: 'Reviews',
                      ),
                      Reviews(mediaId: id),
                    ]);
                  }
                  tabs.add([
                    const Tab(text: 'Social'),
                    Social(
                      mediaId: id,
                    ),
                  ]);

                  return ScrollToTop(
                    alignment: Alignment.topRight,
                    ignoreDepths: const [0, 1],
                    builder: (controller) => _FloatingButtons(
                      id: id,
                      controller: controller,
                      child: DefaultTabController(
                        length: tabs.length,
                        child: NestedScrollView(
                          controller: controller,
                          headerSliverBuilder: (context, innerBoxIsScrolled) =>
                              [
                            SliverAppBar(
                              flexibleSpace: _Banner(id: id),
                              expandedHeight: 205,
                              toolbarHeight: 0,
                              pinned: true,
                              automaticallyImplyLeading: false,
                            ),
                            SliverPersistentHeader(
                              delegate: SliverPersistentHeaderTabBarDelegate(
                                TabBar(
                                  isScrollable: true,
                                  tabs: tabs.map((e) => e[0]).toList(),
                                ),
                              ),
                              pinned: true,
                            ),
                          ],
                          body: TabBarView(
                            children: tabs.map((e) => e[1]).toList(),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}

class _FloatingButtons extends ConsumerStatefulWidget {
  const _FloatingButtons({
    required this.id,
    required this.child,
    required this.controller,
  });

  final Widget child;
  final int id;
  final ScrollController controller;

  @override
  ConsumerState<_FloatingButtons> createState() => _FloatingButtonsState();
}

class _FloatingButtonsState extends ConsumerState<_FloatingButtons> {
  bool show = true;

  @override
  Widget build(BuildContext context) {
    var media = ref.watch(mediaProvider(widget.id));

    return Stack(
      children: [
        NotificationListener<ScrollUpdateNotification>(
          onNotification: (notification) {
            var direction = widget.controller.position.userScrollDirection;
            if (direction == ScrollDirection.reverse) {
              setState(() => show = false);
            } else if (direction == ScrollDirection.forward) {
              setState(() => show = true);
            }
            return false;
          },
          child: widget.child,
        ),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          opacity: show ? 1 : 0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 90,
                    child: FloatingActionButton.small(
                      // onPressed: () => showMedia
                      onPressed: () => showMediaEditor(
                        context,
                        media,
                        onSave:
                            ref.read(mediaProvider(widget.id).notifier).refetch,
                      ),
                      heroTag: 'add-update',
                      child: Text(
                          media!.mediaListEntry?.status?.name.capitalize() ??
                              'Add To List'),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: FloatingActionButton.small(
                      onPressed: () {},
                      heroTag: 'fav',
                      backgroundColor: Colors.red[900],
                      child: const Icon(Icons.favorite),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _Banner extends ConsumerWidget {
  const _Banner({required this.id});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = Theme.of(context);

    var media = ref.watch(mediaProvider(id));

    return FlexibleSpaceBar(
      background: Stack(
        children: [
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [
                Colors.transparent,
                theme.colorScheme.surface.withOpacity(0.4),
                theme.colorScheme.surface.withOpacity(0.6),
                theme.colorScheme.surface.withOpacity(1),
              ],
              stops: const [0, 0.3, 0.5, 0.9],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ).createShader(bounds),
            blendMode: BlendMode.srcOver,
            child: media!.bannerImage != null
                ? CImage(
                    imageUrl: media.bannerImage!,
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    viewer: true,
                  )
                : Container(
                    color: Colors.grey,
                    height: 150,
                  ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 70, 0, 0),
            child: ClipRRect(
              borderRadius: imageRadius,
              child: CImage(
                imageUrl: media.coverImage!.large!,
                height: 130,
                width: 90,
                viewer: true,
                viewerUrl: media.coverImage!.extraLarge!,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(110, 155, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  media.title!.userPreferred!,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.favorite,
                      size: 20,
                    ),
                    Text((media.favourites ?? 0).toString()),
                    const SizedBox(
                      width: 10,
                    ),
                    if (media.averageScore != null) ...[
                      const Icon(
                        Icons.star,
                        size: 20,
                      ),
                      Text('${media.averageScore ?? 0}/100'),
                    ]
                  ],
                ),
              ],
            ),
          ),
          const AppBackButton()
        ],
      ),
    );
  }
}
