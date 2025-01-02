import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/app/media/characters.tab.dart';
import 'package:myaniapp/app/media/info.tab.dart';
import 'package:myaniapp/app/media/relations.tab.dart';
import 'package:myaniapp/app/media/reviews.tab.dart';
import 'package:myaniapp/app/media/screen.appbar.dart';
import 'package:myaniapp/app/media/similar.tab.dart';
import 'package:myaniapp/app/media/staff.tab.dart';
import 'package:myaniapp/app/media/threads.tab.dart';
import 'package:myaniapp/common/hiding_floating_button.dart';
import 'package:myaniapp/common/media_editor/media_editor.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/common/sliver_tabbar_view.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/fragments/media.graphql.dart';
import 'package:myaniapp/graphql/__gen/media.graphql.dart';
import 'package:myaniapp/graphql/__gen/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/common/gql_widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:mygraphql/graphql.dart';

class MediaScreen extends StatefulHookWidget {
  const MediaScreen(
      {super.key, required this.id, required this.tab, this.placeholder});

  final int id;
  final String tab;
  final Fragment$MediaFragment? placeholder;

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen>
    with SingleTickerProviderStateMixin {
  List<(Widget, String)> tabs = [];
  late final TabController _tabController =
      TabController(length: 7, vsync: this);

  // just keeps the url with the tab for web users
  void updateTab() {
    context.replace(
      '/media/${widget.id}/${tabs[_tabController.index].$2.toLowerCase()}',
      extra: GoRouterState.of(context).extra,
    );
  }

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      mediaQuery,
      variables: Variables$Query$Media(id: widget.id).toJson(),
      parseData: Query$Media.fromJson,
    ));

    useEffect(() {
      if (snapshot.parsedData != null) _buildTabs(snapshot.parsedData!.Media!);
      return null;
    }, [snapshot.parsedData?.hashCode]);

    return HidingFloatingButton(
      notificationPredicate: (notification) => notification.depth == 2,
      button: Show(
        when: snapshot.parsedData?.Media != null,
        child: () => FloatingButtons(
          media: snapshot.parsedData!.Media!,
          onUpdate: refetch,
        ),
      ),
      builder: (button) => Scaffold(
        floatingActionButton: button,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            MediaScreenAppBar(
              data: snapshot.parsedData?.Media!,
              tab: widget.tab,
              placeholder: widget.placeholder,
            ),
            if (snapshot.parsedData != null && tabs.isNotEmpty)
              SliverPersistentHeader(
                delegate: SliverTabBarViewDelegate(
                  child: TabBar(
                    isScrollable: true,
                    tabAlignment: TabAlignment.center,
                    controller: _tabController,
                    tabs: [
                      for (var tab in tabs) Tab(text: tab.$2),
                    ],
                  ),
                ),
              ),
          ],
          body: GQLWidget(
            refetch: refetch,
            response: snapshot,
            builder: () => TabBarView(
              controller: _tabController,
              children: [
                for (var tab in tabs) tab.$1,
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _buildTabs(Query$Media$Media media) {
    tabs = [
      (MediaInfoTab(media: media), "Info"),
      (MediaRelationsTab(media: media), "Relations"),
      (MediaReviewsTab(mediaId: media.id), "Reviews"),
      (MediaSimilarTab(mediaId: media.id), "Similar"),
      (MediaCharactersTab(mediaId: media.id), "Characters"),
      (MediaStaffTab(mediaId: media.id), "Staff"),
      (MediaThreadsTab(mediaId: media.id), "Threads")
    ];
  }
}

class FloatingButtons extends ConsumerWidget {
  const FloatingButtons({
    super.key,
    required this.media,
    required this.onUpdate,
  });

  final Query$Media$Media media;
  final VoidCallback onUpdate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    if (user.value?.data == null) return const SizedBox();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: () => MediaEditorDialog.show(
                context,
                media,
                user.value!.parsedData!.Viewer!.id,
                onSave: onUpdate,
                onDelete: onUpdate,
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
                : () => c
                    .query(GQLRequest(
                      toggleFavoriteQuery,
                      variables: media.type == Enum$MediaType.ANIME
                          ? Variables$Mutation$ToggleFavorite(
                              animeId: media.id,
                            ).toJson()
                          : Variables$Mutation$ToggleFavorite(
                              mangaId: media.id,
                            ).toJson(),
                    ))
                    .last
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
