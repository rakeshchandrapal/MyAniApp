import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/media/%5Bid%5D/%5Btab%5D/characters.dart';
import 'package:myaniapp/app/media/%5Bid%5D/%5Btab%5D/overview.dart';
import 'package:myaniapp/app/media/%5Bid%5D/%5Btab%5D/relations.dart';
import 'package:myaniapp/app/media/%5Bid%5D/%5Btab%5D/reviews.dart';
import 'package:myaniapp/app/media/%5Bid%5D/%5Btab%5D/similar.dart';
import 'package:myaniapp/app/media/%5Bid%5D/%5Btab%5D/staff.dart';
import 'package:myaniapp/app/media/%5Bid%5D/%5Btab%5D/threads.dart';
import 'package:myaniapp/app/media/__generated__/media.data.gql.dart';
import 'package:myaniapp/app/media/__generated__/media.req.gql.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/hiding_floating_button.dart';
import 'package:myaniapp/common/image_viewer.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/invisible_expanded_title.dart';
import 'package:myaniapp/common/list_setting_button.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_editor/media_editor.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/common/sliver_tabbar_view.dart';
import 'package:myaniapp/common/widget_gradient.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:myaniapp/providers/user.dart';

class MediaPage extends StatefulWidget {
  const MediaPage({super.key, required this.id, required this.tab});

  final String id;
  final String tab;

  @override
  State<MediaPage> createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> with TickerProviderStateMixin {
  late final TabController _tabController;
  final ScrollController _scrollController = ScrollController();
  List<(Widget, String)> tabs = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
    _tabController.addListener(listener);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _scrollController.dispose();
  }

  void listener() {
    context.replace(
      '/media/${widget.id}/${tabs[_tabController.index].$2.toLowerCase()}',
      extra: GoRouterState.of(context).extra,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GQLRequest(
      operationRequest: GMediaReq((b) => b
        ..requestId = "mediaPage${widget.id}"
        ..vars.id = int.parse(widget.id)),
      loading: null,
      error: (response) => Scaffold(
        appBar: AppBar(),
        body: GraphqlError(
          exception: (response!.graphqlErrors, response.linkException),
          req: response.operationRequest,
        ),
      ),
      builder: (context, response, error, refetch) {
        if (response?.loading == true &&
            (GoRouterState.of(context).extra as Map?)?["media"]
                is! GMediaFragment) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }

        if (response?.data?.Media != null) _buildTabs(response!.data!.Media!);

        return HidingFloatingButton(
          notificationPredicate: (notification) => notification.depth == 2,
          button: Show(
            when: response?.data?.Media != null,
            child: () => FloatingButtons(
              media: response!.data!.Media!,
              onUpdate: refetch,
            ),
          ),
          builder: (button) => Scaffold(
            floatingActionButton: button,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            body: RefreshIndicator.adaptive(
              onRefresh: refetch,
              child: NestedScrollView(
                body: response?.data != null
                    ? ScrollConfiguration(
                        behavior: ScrollConfiguration.of(context)
                            .copyWith(scrollbars: false),
                        child: TabBarView(
                          // physics: const NeverScrollableScrollPhysics(),
                          controller: _tabController,
                          children: tabs.map((e) => e.$1).toList(),
                        ),
                      )
                    : const SizedBox(),
                // controller: _scrollController,
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  MediaBar(
                    placeholderData: (GoRouterState.of(context).extra
                            as Map?)?["media"] is GMediaFragment
                        ? (GoRouterState.of(context).extra as Map)["media"]
                            as GMediaFragment
                        : null,
                    data: response?.data?.Media,
                    tab: tabs.isEmpty ? "Info" : tabs[_tabController.index].$2,
                  ),
                  if (response?.data != null && tabs.isNotEmpty)
                    SliverPersistentHeader(
                      delegate: SliverTabBarViewDelegate(
                        child: TabBar(
                          isScrollable: true,
                          tabAlignment: TabAlignment.center,
                          controller: _tabController,
                          tabs: tabs
                              .map((e) => Tab(
                                    text: e.$2,
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _buildTabs(GMediaData_Media media) {
    var wasEmpty = tabs.isEmpty;
    tabs = [
      (MediaOverview(media: media), "Info"),
      if (media.relations?.edges?.isNotEmpty == true)
        (MediaRelations(media: media), "Relations"),
      if (media.recommendations?.nodes?.isNotEmpty == true)
        (MediaSimilarPage(mediaId: media.id), "Similar"),
      if (media.reviews?.nodes?.isNotEmpty == true)
        (MediaReviewsPage(mediaId: int.parse(widget.id)), "Reviews"),
      if (media.characters?.nodes?.isNotEmpty == true)
        (MediaCharacters(mediaId: int.parse(widget.id)), "Characters"),
      if (media.staff?.nodes?.isNotEmpty == true)
        (MediaStaffPage(mediaId: int.parse(widget.id)), "Staff"),
      (MediaThreadsPage(mediaId: int.parse(widget.id)), "Threads"),
    ];

    if (wasEmpty) {
      var index =
          tabs.indexWhere((element) => element.$2.toLowerCase() == widget.tab);

      if (index != -1) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          _tabController.animateTo(index);
        });
      }
    }
  }
}

class FloatingButtons extends ConsumerWidget {
  const FloatingButtons({
    super.key,
    required this.media,
    required this.onUpdate,
  });

  final GMediaData_Media media;
  final VoidCallback onUpdate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    if (user.value?.data == null) return const SizedBox();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: () => MediaEditorDialog.show(
                context, media, user.value!.data!.Viewer!.id,
                onSave: onUpdate,
                onDelete: onUpdate,
                // onDelete: () => client.request(GDeleteMediaListEntryReq((b) => b..vars.,)),
              ),
              label: Text(media.mediaListEntry != null
                  ? media.mediaListEntry!.status!.name.capitalize()
                  : "Add to list"),
            ),
          ),
          const SizedBox(width: 10),
          FloatingActionButton.extended(
            heroTag: null,
            onPressed: media.isFavouriteBlocked
                ? null
                : () => client
                    .request(media.type == GMediaType.ANIME
                        ? GToggleFavoriteReq(
                            (b) => b..vars.animeId = media.id,
                          )
                        : GToggleFavoriteReq(
                            (b) => b..vars.mangaId = media.id,
                          ))
                    .first
                    .then((_) => onUpdate()),
            label: Icon(
              Icons.favorite,
              color: media.isFavourite ? Colors.red[200] : null,
            ),
            backgroundColor: Colors.red[900],
          ),
        ],
      ),
    );
  }
}

class MediaBar extends ConsumerWidget {
  const MediaBar({
    super.key,
    this.placeholderData,
    this.data,
    required this.tab,
  });

  final GMediaFragment? placeholderData;
  final GMediaData_Media? data;
  final String tab;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var listSettings = ref.watch(listSettingsProvider);

    return SliverAppBar(
      expandedHeight: 210,
      pinned: true,
      title: InvisibleExpandedTitle(
        child: Text(
          (data ?? placeholderData)!.title!.userPreferred!,
          maxLines: 2,
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: BackButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll<Color?>(
                context.theme.colorScheme.surface.withOpacity(.3),
              ),
              iconColor: WidgetStatePropertyAll(
                context.theme.colorScheme.onSurface,
              ),
            ),
          ),
        ),
      ),
      actions: [
        if (tab == "Relations")
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.4),
              borderRadius: const BorderRadius.all(Radius.circular(30)),
            ),
            child: ListSettingButton(
              type: listSettings.mediaRelations,
              onUpdate: (type) =>
                  ref.read(listSettingsProvider.notifier).update(
                        listSettings.copyWith(mediaRelations: type),
                      ),
            ),
          ),
        if (tab == "Similar")
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.4),
              borderRadius: const BorderRadius.all(Radius.circular(30)),
            ),
            child: ListSettingButton(
              type: listSettings.mediaSimilar,
              onUpdate: (type) =>
                  ref.read(listSettingsProvider.notifier).update(
                        listSettings.copyWith(mediaSimilar: type),
                      ),
            ),
          ),
        const SizedBox(width: 5)
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            SizedBox(
              height: 210,
              child: BlurImage(
                enabled: (data ?? placeholderData)!.isAdult ?? false,
                child: WidgetGradient(
                  child: data?.bannerImage == null
                      ? Container(
                          height: 210,
                          color: data != null ? Colors.grey : null,
                          child: Center(
                            child: data == null
                                ? const CircularProgressIndicator.adaptive()
                                : null,
                          ),
                        )
                      : InkWellImage(
                          onTap: () => ImageViewer.showImage(
                            context,
                            data!.bannerImage!,
                            tag: data!.bannerImage,
                          ),
                          child: Hero(
                            tag: data!.bannerImage!,
                            child: CachedImage(
                              data!.bannerImage!,
                              fit: BoxFit.cover,
                              height: 210,
                              width: double.maxFinite,
                            ),
                          ),
                        ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (data != null || placeholderData != null)
                    InkWellImage(
                      onTap: () => ImageViewer.showImage(
                        context,
                        (data ?? placeholderData)!.coverImage!.extraLarge!,
                        tag: (data ?? placeholderData)!.id,
                      ),
                      borderRadius: imageRadius,
                      child: Hero(
                        tag: (data ?? placeholderData)!.id,
                        child: ClipRRect(
                          borderRadius: imageRadius,
                          child: BlurImage(
                            enabled:
                                (data ?? placeholderData)!.isAdult ?? false,
                            child: CachedImage(
                              (data ?? placeholderData)!
                                  .coverImage!
                                  .extraLarge!,
                              height: 150,
                              width: 106,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    )
                  else
                    const SizedBox(
                      height: 150,
                      width: 100,
                      child: Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                    ),
                  const SizedBox(
                    width: 10,
                  ),
                  if (data != null || placeholderData != null)
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            (data ?? placeholderData)!.title!.userPreferred!,
                            style: context.theme.textTheme.titleMedium,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                          Text(
                            (data ?? placeholderData)!
                                    .format
                                    ?.name
                                    .capitalize() ??
                                (data ?? placeholderData)!
                                    .type!
                                    .name
                                    .capitalize(),
                            maxLines: 2,
                            style: context.theme.textTheme.titleSmall,
                          ),
                          if (data?.favourites != null)
                            Row(
                              children: [
                                const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(data!.favourites!.abbreviate()),
                              ],
                            ),
                          if (data?.averageScore != null)
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text("${data!.averageScore!.abbreviate()}/100"),
                              ],
                            ),
                        ],
                      ),
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
