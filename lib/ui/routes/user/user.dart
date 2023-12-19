import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/providers/userProfile.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/routes/user/activity/activity.dart';
import 'package:myaniapp/ui/routes/user/overview.dart';
import 'package:myaniapp/ui/routes/user/reviews/reviews.dart';
import 'package:myaniapp/ui/routes/user/social/social.dart';
import 'package:myaniapp/ui/routes/user/stats/stats.dart';

class UserPage extends ConsumerWidget {
  const UserPage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProfileProvider(name));
    // print('d');

    return user.when(
      data: (user) => _UserShellPage(name: name),
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

class _UserShellPage extends ConsumerStatefulWidget {
  const _UserShellPage({super.key, required this.name});

  final String name;

  @override
  ConsumerState<_UserShellPage> createState() => __UserShellPageState();
}

class __UserShellPageState extends ConsumerState<_UserShellPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  late final List<(String, Widget)> routes;

  @override
  void initState() {
    // print('ds');
    super.initState();
    routes = [
      ('Overview', UserOverviewPage(name: widget.name)),
      ('Social', UserSocialPage(name: widget.name)),
      ('Activity', UserActivityPage(name: widget.name)),
      ('Stats', UserStatsPage(name: widget.name)),
      ('Reviews', UserReviewsPage(name: widget.name)),
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
          '/user/${widget.name}/${routes[_tabController.index].$1.toLowerCase()}');
    }
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var user = ref.watch(userProfileProvider(widget.name));
    var theme = Theme.of(context);
    print('ds');

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            pinned: true,
            expandedHeight: 235,
            bottom: TabBar(
              controller: _tabController,
              isScrollable: true,
              tabs: const [
                Tab(text: 'Overview'),
                Tab(text: 'Social'),
                Tab(text: 'Activity'),
                Tab(text: 'Stats'),
                Tab(text: 'Reviews'),
              ],
            ),
            flexibleSpace: FlexibleSpaceBar(
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
                    child: user.requireValue.bannerImage != null
                        ? CImage(
                            imageUrl: user.requireValue.bannerImage!,
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
                    padding: const EdgeInsets.only(left: 8, top: 85),
                    child: CImage(
                      imageUrl: user.requireValue.avatar!.large!,
                      height: 100,
                      width: 100,
                      viewer: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120, top: 160),
                    child: SelectableText(
                      user.requireValue.name,
                      style: theme.textTheme.titleMedium,
                      maxLines: 1,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
        body: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewPadding.bottom,
          ),
          child: TabBarView(
            controller: _tabController,
            children: routes.map((e) => e.$2).toList(),
          ),
        ),
      ),
    );
  }
}
