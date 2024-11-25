import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/image_viewer.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/invisible_expanded_title.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/common/sliver_tabbar_view.dart';
import 'package:myaniapp/common/widget_gradient.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/app/user/user.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/fragments/user.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class UserScreen extends StatefulHookWidget {
  const UserScreen(
      {super.key, @pathParam required this.name, this.placeholder});

  final String name;
  final Fragment$UserFragment? placeholder;

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen>
    with SingleTickerProviderStateMixin {
  List<(PageRouteInfo, String)> tabs = [];

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      userQuery,
      variables: Variables$Query$User(name: widget.name).toJson(),
      parseData: Query$User.fromJson,
    ));

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      error: Scaffold(
        appBar: AppBar(),
        body: GraphqlError(
          exception: (snapshot.errors, snapshot.linkError),
          refetch: refetch,
        ),
      ),
      loading: null,
      builder: () {
        if (snapshot.loading == true && widget.placeholder == null) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }

        var data = snapshot.parsedData?.User;

        if (data != null) _buildTabs(data);

        return AutoTabsRouter.tabBar(
          key: Key(tabs.toString()),
          routes: [
            for (var tab in tabs) tab.$1,
          ],
          builder: (context, child, tabController) => Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                UserAppBar(
                  data: data,
                  placeholderData: widget.placeholder,
                ),
                if (tabs.isNotEmpty)
                  SliverPersistentHeader(
                    delegate: SliverTabBarViewDelegate(
                      child: TabBar(
                        controller: tabController,
                        isScrollable: true,
                        tabs: [
                          for (var tab in tabs)
                            Tab(
                              text: tab.$2,
                            ),
                        ],
                      ),
                    ),
                  ),
              ],
              body: Show(
                when: data != null,
                fallback: const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
                child: () => child,
              ),
            ),
          ),
        );
      },
    );
  }

  void _buildTabs(Query$User$User user) {
    tabs = [
      (UserInfoRoute(user: user), "Info"),
      (UserSocialRoute(id: user.id), "Social"),
      (UserActivityRoute(id: user.id), "Activities"),
      (UserThreadsRoute(id: user.id), "Threads"),
      (UserReviewsRoute(id: user.id), "Reviews"),
    ];

    // if (wasEmpty) {
    //   var index =
    //       tabs.indexWhere((element) => element.$2.toLowerCase() == widget.tab);

    //   if (index != -1) {
    //     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //       _tabController.animateTo(index);
    //     });
    //   }
    // }
  }
}

class UserAppBar extends StatelessWidget {
  const UserAppBar({
    super.key,
    this.placeholderData,
    this.data,
  });

  final Fragment$UserFragment? placeholderData;
  final Query$User$User? data;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 180,
      pinned: true,
      title: InvisibleExpandedTitle(
        child: Text(
          (data ?? placeholderData)!.name,
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
            SizedBox(
              height: 180,
              child: WidgetGradient(
                child: Show(
                  when: data != null && data?.bannerImage != null,
                  fallback: Container(
                    height: 180,
                    color: data != null ? Colors.grey : null,
                    child: Center(
                      child: data == null
                          ? const CircularProgressIndicator.adaptive()
                          : null,
                    ),
                  ),
                  child: () => InkWellImage(
                    onTap: () => ImageViewer.showImage(
                      context,
                      data!.bannerImage!,
                      tag: data!.bannerImage!,
                    ),
                    child: Hero(
                      tag: data!.bannerImage!,
                      child: CachedImage(
                        data!.bannerImage!,
                        height: 180,
                        width: double.maxFinite,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWellImage(
                      onTap: () => ImageViewer.showImage(
                        context,
                        (data ?? placeholderData)!.avatar!.large!,
                        tag: (data ?? placeholderData)!.id,
                      ),
                      borderRadius: BorderRadius.circular(999),
                      child: Hero(
                        tag: (data ?? placeholderData)!.id,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(999),
                          child: CachedImage(
                            (data ?? placeholderData)!.avatar!.large!,
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: SelectableText((data ?? placeholderData)!.name),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
