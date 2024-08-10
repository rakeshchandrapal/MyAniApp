import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
import 'package:myaniapp/router.gr.dart';

@RoutePage()
class MediaScreen extends StatefulWidget {
  const MediaScreen({super.key, @pathParam required this.id, this.placeholder});

  final int id;
  final GMediaFragment? placeholder;

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  List<(PageRouteInfo, String)> tabs = [];

  @override
  Widget build(BuildContext context) {
    return GQLRequest(
      operationRequest: GMediaReq((b) => b
        ..requestId = "mediaPage${widget.id}"
        ..vars.id = widget.id),
      loading: null,
      error: (response) => Scaffold(
        appBar: AppBar(),
        body: GraphqlError(
          exception: (response!.graphqlErrors, response.linkException),
          req: response.operationRequest,
        ),
      ),
      builder: (context, response, error, refetch) {
        if (response?.loading == true && widget.placeholder == null) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }
        if (response?.data == null) {
          return Scaffold(
            body: CustomScrollView(
              slivers: [
                MediaBarPlaceholder(placeholder: widget.placeholder),
                const SliverFillRemaining(
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                )
              ],
            ),
          );
        }

        _buildTabs(response!.data!.Media!);

        return AutoTabsRouter.tabBar(
          routes: [
            for (var tab in tabs) tab.$1,
          ],
          builder: (context, child, tabController) {
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
                body: NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) => [
                    MediaBar(
                      tab: tabs[tabController.index].$2,
                      data: response!.data!.Media!,
                    ),
                    if (response?.data != null && tabs.isNotEmpty)
                      SliverPersistentHeader(
                        delegate: SliverTabBarViewDelegate(
                          child: TabBar(
                            isScrollable: true,
                            controller: tabController,
                            tabs: tabs
                                .map((e) => Tab(
                                      text: e.$2,
                                    ))
                                .toList(),
                          ),
                        ),
                      ),
                  ],
                  body: ScrollConfiguration(
                      behavior: ScrollConfiguration.of(context)
                          .copyWith(scrollbars: false),
                      child: child),
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _buildTabs(GMediaData_Media media) {
    tabs = [
      (MediaInfoRoute(media: media), "Info"),
      if (media.relations?.edges?.isNotEmpty == true)
        (MediaRelationsRoute(media: media), "Relations"),
      if (media.recommendations?.nodes?.isNotEmpty == true)
        (MediaSimilarRoute(), "Similar"),
      if (media.reviews?.nodes?.isNotEmpty == true)
        (MediaReviewsRoute(), "Reviews"),
      if (media.characters?.nodes?.isNotEmpty == true)
        (MediaCharactersRoute(), "Characters"),
      if (media.staff?.nodes?.isNotEmpty == true) (MediaStaffRoute(), "Staff"),
      (MediaThreadsRoute(), "Threads"),
    ];
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
    required this.data,
    required this.tab,
  });

  final GMediaData_Media data;
  final String tab;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var listSettings = ref.watch(listSettingsProvider);

    return SliverAppBar(
      expandedHeight: 210,
      pinned: true,
      title: InvisibleExpandedTitle(
        child: Text(
          data!.title!.userPreferred!,
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
                enabled: data!.isAdult ?? false,
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
                  // if (data != null || placeholderData != null)
                  InkWellImage(
                    onTap: () => ImageViewer.showImage(
                      context,
                      data!.coverImage!.extraLarge!,
                      tag: data!.id,
                    ),
                    borderRadius: imageRadius,
                    child: Hero(
                      tag: data!.id,
                      child: ClipRRect(
                        borderRadius: imageRadius,
                        child: BlurImage(
                          enabled: data!.isAdult ?? false,
                          child: CachedImage(
                            data!.coverImage!.extraLarge!,
                            height: 150,
                            width: 106,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          data!.title!.userPreferred!,
                          style: context.theme.textTheme.titleMedium,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                        Text(
                          data!.format?.name.capitalize() ??
                              data!.type!.name.capitalize(),
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

class MediaBarPlaceholder extends StatelessWidget {
  const MediaBarPlaceholder({
    super.key,
    required this.placeholder,
  });

  final GMediaFragment? placeholder;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 210,
      pinned: true,
      title: InvisibleExpandedTitle(
        child: Text(
          placeholder!.title!.userPreferred!,
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
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWellImage(
                    onTap: () => ImageViewer.showImage(
                      context,
                      placeholder!.coverImage!.extraLarge!,
                      tag: placeholder!.id,
                    ),
                    borderRadius: imageRadius,
                    child: Hero(
                      tag: placeholder!.id,
                      child: ClipRRect(
                        borderRadius: imageRadius,
                        child: BlurImage(
                          enabled: placeholder!.isAdult ?? false,
                          child: CachedImage(
                            placeholder!.coverImage!.extraLarge!,
                            height: 150,
                            width: 106,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  // if (data != null || placeholderData != null)
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          placeholder!.title!.userPreferred!,
                          style: context.theme.textTheme.titleMedium,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                        Text(
                          placeholder!.format?.name.capitalize() ??
                              placeholder!.type!.name.capitalize(),
                          maxLines: 2,
                          style: context.theme.textTheme.titleSmall,
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
