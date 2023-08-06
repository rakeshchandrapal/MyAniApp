import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/providers/userProfile.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/image.dart';

@RoutePage()
class UserPage extends ConsumerWidget {
  const UserPage({super.key, @PathParam('name') required this.name});

  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProfileProvider(name));
    var theme = Theme.of(context);

    return user.when(
      data: (user) => Scaffold(
        body: AutoTabsRouter.tabBar(
          routes: [
            UserOverviewRoute(),
            UserSocialRoute(),
            UserActivityRoute(),
            UserReviewsRoute(),
          ],
          builder: (context, child, tabController) => NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                pinned: true,
                expandedHeight: 235,
                bottom: TabBar(
                  controller: tabController,
                  tabs: const [
                    Tab(text: 'Overview'),
                    Tab(text: 'Social'),
                    Tab(text: 'Activity'),
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
                        child: user.bannerImage != null
                            ? CImage(
                                imageUrl: user.bannerImage!,
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
                          imageUrl: user.avatar!.large!,
                          height: 100,
                          width: 100,
                          viewer: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120, top: 160),
                        child: SelectableText(
                          user.name,
                          // overflow: TextOverflow.ellipsis,
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
              child: child,
            ),
          ),
        ),
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
